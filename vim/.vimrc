syntax on
set shortmess+=I " Removes starting cim message
set number
set relativenumber
set tabstop=4 softtabstop=4
set laststatus=2  " Show status line at bottom
set backspace=indent,eol,start " Backspace over anything
set hidden 
set ignorecase " Case insenstive
set smartcase
set incsearch " Search as you type
set nowrap
set smartindent
set noerrorbells visualbell t_vb=  " Disable audible bell because it's annoying.
set mouse+=a

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

let mapleader = " "
" Allows easy jumping between open windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" C++ specific
nmap <leader>y ggVG"+y''
map <F5> :<C-U>!g++ -O2 -DLOCAL -std=c++11 -Wall -Wextra -Wno-unused-result -static %:r.cpp -o %:r<CR>
map <F9> :<C-U>!./%:r<CR>

" Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'jremmen/vim-ripgrep'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

colorscheme gruvbox
set background=dark

map <C-n> :NERDTreeToggle<CR>

if executable('rg')
    let g:rg_derive_root='true'
endif
nnoremap <Leader>ps :Rg<SPACE>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
