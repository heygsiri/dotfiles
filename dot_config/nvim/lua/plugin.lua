-- Mostly copied from LunarVim (probably
-- because I agree with most of the lines)
-- https://github.com/LunarVim/Neovim-from-scratch/raw/master/lua/user/plugins.lua

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugin.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
-- All the plugins to be used
_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache') .. '/luacache_modpaths',
  }
}
return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  -- impatient
  use { "lewis6991/impatient.nvim",
    config = function() require('impatient') end
  }
  -- cmp
  use { "hrsh7th/nvim-cmp",
    config = function() require('setup.cmp') end }
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "saadparwaiz1/cmp_luasnip"
  -- lsp
  use { "williamboman/nvim-lsp-installer",
    config = function() require('setup.lsp-installer') end
  }
  use { "neovim/nvim-lspconfig",
    config = function() require('setup.lspconfig') end
  }
  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- theme
  use "Mofiqul/dracula.nvim"
  use { 'akinsho/bufferline.nvim', tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('bufferline').setup {} end }
  use {
    "nvim-lualine/lualine.nvim",
    config = function() require('setup.lualine') end
  }
  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
