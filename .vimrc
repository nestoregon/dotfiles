set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim



" THE BEGINNING OF THE BUNDLE

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" This is for AUTOCOMPLETION, it took a while tbh
"Plugin 'Valloric/YouCompleteMe'
" Vim pluggin for NERDcommenter
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
" To make cpp syntax better, now its pretty shitty
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'vim-syntastic/syntastic' " for autocomplete
" For markdown syntax
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" THINGS I HAVE IMPLEMENTED
"
" hey, you should use the keys
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" Show line number
set number
" Set relative number by default
set relativenumber

" Toggle Relative Number
set completeopt=menu,preview "this was incredibly annoying so here it is
set completeopt-=preview
set wildmode=longest,list:longest
set complete=.,b,u,]

nnoremap <silent> <leader>nb :set relativenumber!<CR>
" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Quick Save
nnoremap <S-s> :w<CR>

" COLOR SCHEME
syntax enable
colorscheme monokai
let python_highlight_all=1
syntax on


" To check for spelling mistakes in markdown
autocmd BufRead,BufNewFile *.md setlocal spell
let g:vim_markdown_folding_disabled = 1


" To make it transparent and sick af
hi Normal guibg=NONE ctermbg=NONE
hi! NonText ctermbg=NONE guibg=NONE

"For NERDtree
map <C-b> :NERDTreeToggle<CR>
" This is to execute some code with F9. Of course, F9 can be changed to
" something much better
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
