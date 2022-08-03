set title "muestra el nombre en la ventana de la terminal
set mouse=a "permite la integracion del mouse, seleccionear, mover cursor
set number "mostrar lineas
set numberwidth=1 "ancho de numeros de lineas

set spelllang=en,es "corregir palabras usando diccionario en ingles y spanish

set termguicolors "activa true colores en la terminal

set clipboard=unnamed
syntax enable

set showcmd "muestra los comandos
set ruler "muestra lineas
set cursorline
set encoding=utf-8
set showmatch "muestra parentesis correspondiente
set sw=2 "2 espacios
set relativenumber
set laststatus=2
set noshowmode "no muestra el comando en el que estas actualmente

call plug#begin('~/.vim/plugged') 

"themes
"Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot' "ayuda lenguajes

"auto completado de parentesis o etiquetas
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

"auto completado de texot
Plug  'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'

call plug#end()


"Configuraciones
  "tema----
    "colorscheme gruvbox
    "let g:gruvbox_contrast_dark = "hard"
let g:tokyonight_style = "night"
let g:tokyonight_colors = {
      \ 'hint': 'orange',
      \	'error': '#ff0000'
    \}

colorscheme tokyonight

  "nerdTree
let NERDTreeQuitOnOpen=1 "cierra despues de abir un archivo
"------------
"tecla Lider--
let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
"-----------

"generar atajos
nmap <Leader>w :w<cr>
nmap <Leader>q :q<cr>

