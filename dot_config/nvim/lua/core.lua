-- Basic (Neo)vim settings

-- use a neat table for all
-- settings :D

local options = {
	-- colors
	termguicolors = true,
	-- copy-paste
	clipboard = "unnamedplus",
	-- encoding -> unicode pls
	fileencoding = "utf-8",
	-- indentation
	expandtab = true,
	shiftwidth = 2,
	smartindent = true,
	tabstop = 2,
	-- menu height
	pumheight = 10,
	-- mouse support
	mouse = "a",
	-- numbering
	number = true,
	relativenumber = true,
	-- search
	hlsearch = true,
	smartcase = true,
	-- splitting
	splitbelow = true,
	splitright = true,
	-- tabline (very cool!)
	showtabline = 2,
	-- wrapping
	wrap = false,
}

-- sets all the settings
for k, v in pairs(options) do
	vim.opt[k] = v
end
