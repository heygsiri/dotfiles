vim.cmd [[
try
  colorscheme base16-dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  set background=dark
endtry
]]
