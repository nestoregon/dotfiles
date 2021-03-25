" Nestor Morales Vim
set noerrorbells " we don't want noise, do we?
set tabstop=4 softtabstop=4 " we only want to indent 4 spaces, this is actually very useful
set shiftwidth=4 " same as the tab
set nu " set numbers basically
set relativenumber
set expandtab " from tab to spaces. ## i will see if i like this one 
set smartindent " duh
set nowrap " This one is super useful!!!!!!!
set smartcase " we want it to be case sensitive
set incsearch


nnoremap <S-s> :w<CR>
nnoremap <silent> <leader>nb :set relativenumber!<CR> 
nnoremap B ^
nnoremap E $

set clipboard=unnamedplus

" Continue back in the line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" plug from https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
call plug#end()
