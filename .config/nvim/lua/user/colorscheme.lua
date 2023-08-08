vim.cmd [[
try
  colorscheme dracula
  let g:transparent_enabled = v:true

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  " set background=dark
endtry
]]

-- colorscheme everforest

-- Just in case
-- hi Normal guibg=NONE ctermbg=NONE
-- hi EndOfBuffer guibg=NONE ctermbg=NONE
-- hi LineNr guibg=NONE
-- hi CursorLine guibg=NONE guifg=NONE
-- hi CursorLineNR guibg=NONE guifg=NONE
