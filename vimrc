
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/flazz/vim-colorschemes'
Plugin 'https://github.com/itchyny/lightline.vim'
Plugin 'https://github.com/jeetsukumaran/vim-buffergator'
Plugin 'https://github.com/jszakmeister/vim-togglecursor'
Plugin 'https://github.com/chrisbra/Recover.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/jmcantrell/vim-virtualenv'
Plugin 'https://github.com/sirver/ultisnips'
Plugin 'https://github.com/honza/vim-snippets'
Plugin 'https://github.com/moll/vim-node'
Plugin 'https://github.com/jelera/vim-javascript-syntax'
Plugin 'https://github.com/klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal



set mouse=a
set ttymouse=xterm2


set tabstop=8 expandtab shiftwidth=4 softtabstop=4
syntax on
set nu
set backspace=2 " make backspace work like most other apps


set shortmess+=A

set noswapfile

set laststatus=2

let mapleader = "\\"

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }


colorscheme github

let g:pymode_rope_goto_definition_cmd = 'vnew'


let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips/'

set autochdir


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsUsePythonVersion = 3

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


au FileType javascript set ts=2 sw=2 sts=2
au FileType javascript set suffixesadd+=.js
au FileType javascript call JavaScriptFold()

set foldlevelstart=99

" GUI Options

set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=
set visualbell t_vb

set guioptions =-t


au FileType netrw au BufEnter set number
au FileType netrw au BufEnter set relativenumber
au FileType netrw au BufLeave set norelativenumber


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

PymodeLintToggle

