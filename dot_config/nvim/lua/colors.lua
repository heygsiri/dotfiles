vim.cmd [[
try
  colorscheme dracula
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
  set background=dark
endtry
]]
