vim.cmd [[
try
  colorscheme base16-catppuccin
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  set background=dark
endtry
]]
