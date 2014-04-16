" Not compatible with vi
set nocompatible

" Set Window Title
set title

" Auto indent and smart indent
set autoindent
set smartindent

" Tab width 4
set tabstop=4
set shiftwidth=4

" Searches wrap around file
set wrapscan

" Visual bell instead of beeping
set vb

" Number of lines to use for command
set ch=2

" Statusline
set stl=%F\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" Use second last line for stl
set laststatus=2

" Show partial command in last line of screen?
set showcmd

" Shows current editor mode
set showmode

" Syntax highlighting
syntax on

set bg=dark
set paste
:nnoremap <up>   <nop>
:nnoremap <down> <nop>
:nnoremap <left> <nop>
:nnoremap <right> <nop>

set incsearch    " Show search matches as you type
set ignorecase   " Ignore case when searching
set smartcase    " Override 'ignorecase' when needed
set hlsearch     " Highlight search results

set nu  "Line Numbers
"set relativenumber "Relative Line Numbers
