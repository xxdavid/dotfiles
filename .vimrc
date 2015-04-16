" Vi IMproved
set nocompatible

" Initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'altercation/vim-colors-solarized'
Plugin 'othree/html5.vim'
Plugin 'JulesWang/css.vim'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'editorconfig/editorconfig-vim'

" Bundle 'jooize/vim-colemak'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Enable syntax highliting
syntax on

" UTF-8 without BOM
set encoding=utf-8 nobomb

" Solarized theme
set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
" Solarized theme for airline is ugly
autocmd VimEnter * AirlineTheme dark

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Capital :W
command W w

" File types
autocmd BufRead,BufNewFile *.texy set filetype=texy
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.markdown filetype=markdown

" Spelling
autocmd FileType texy setlocal spell spelllang=cs
autocmd FileType markdown setlocal spell spelllang=cs
set spellcapcheck=no
hi SpellBad ctermfg=red ctermbg=none

" Turbo navigation
nnoremap <silent> H @='5h'<CR>
nnoremap <silent> J @='5gj'<CR>
nnoremap <silent> K @='5gk'<CR>
nnoremap <silent> L @='5l'<CR>

" Remap Join lines to m
nnoremap <silent> m @='J'<CR>

" Smartcase in searching
set ignorecase
set smartcase

" Tab width
set shiftwidth=2

" Disable swap
set noswapfile
