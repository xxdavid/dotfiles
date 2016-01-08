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
Plugin 'reedes/vim-colors-pencil'
Plugin 'othree/yajs.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'aperezdc/vim-template'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable syntax highliting
syntax on

" UTF-8 without BOM
set encoding=utf-8 nobomb

" Solarized theme
colorscheme solarized
let g:solarized_termtrans=1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
" Solarized theme for airline is ugly

" Colors
if $ITERM_PROFILE == "Light"
  set background=light
  let g:airline_theme='light'
else
  set background=dark
  let g:airline_theme='dark'
  hi SpellBad ctermfg=red ctermbg=none
endif

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

" Turbo navigation
noremap H 5h
noremap J 5gj
noremap K 5gk
noremap L 5l

" Remap Join lines to m
noremap m J

" Escape with jj in insert mode
inoremap jj <ESC>

" Smartcase in searching
set ignorecase
set smartcase

" Tab width
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

au FileType texy setlocal sw=2 sts=2 et

" Disable swap
set noswapfile

" Disable creating backupcopy
set nobackup
set nowritebackup

" Smart indenting
set smartindent

" Normal backspace
set backspace=2

" Save with ww in insert mode
inoremap ff <C-C>:update<CR>

" Nerd Commenter
filetype plugin on

" Sudo write
cnoremap w!! w !sudo tee > /dev/null %

" Compile and run file with F4
autocmd filetype javascript nnoremap <F4> :w <bar> exec '!node '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype make nnoremap <F4> :w <bar> exec '!make'<CR>
autocmd filetype sh nnoremap <F4> :w <bar> exec '!sh '.shellescape('%')<CR>

" YCM default config
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf_default.py"

" Templates folder
let g:templates_directory = "~/.vim/templates/"

" Add closing brace
autocmd filetype javascript,php,cpp,c,java inoremap { {<CR>}<Esc>ko

" Insert mode with right indentation with f
noremap f <Esc>ddko
