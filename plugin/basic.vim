set ignorecase "to easier search for capitalized word in english texts

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
set undofile
" .http://stevelosh.com/blog/2010/09/coming-home-to-vim/

"set encoding=utf8
"set termencoding=utf8

    " this helps when working on the laptop
set background=dark
colorscheme smyck
" colorscheme koehler
" set background=dark
" colorscheme solarized

    " some general stuff
set novisualbell
set fileformat=unix

    " wrapping and adjusted curser movement
set nowrap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

    " I use ,W to mean “strip all trailing whitespace in the current file” so I
    " can clean things up quickly:
"nnoremap <Leader>W :%s/\s\+$//<cr>:let @/=''<CR>
    " remove trailing whitespace
nnoremap <Leader>W :1,$s/\s\+$//<CR>

    " Enter date right side for notes.txt
nnoremap <Leader>T !!date<CR>12i<TAB><ESC>

    " retab
nnoremap <Leader><Tab>  :set ts=4<CR>:retab<CR>:set ts=8<CR>

    " Command-T plugin ~/.vim/ruby/command-t
"nmap  :CommandT<CR>

    " default use for folding is xml, so syntax is ok
    "
set foldmethod=syntax
set foldlevel=3
    " makes folding a close to normal operation
" map  zo
map  zc


    " make curser move proceed to next/previous line
set ww=h,l,<,>

    " move around in windows
map <C-Down> j_
map <C-Up> k_


    " of course we want to have incremental search
set incsearch

    " 8 is to much, but don't break the standard by messing with a tabstop != 8
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

    " This makes it possible to jump from file to file, without the need to
    " read or write the file every time and having to keep the file in a window.
set hidden

    " indicate closing bracket while typing code
let loaded_matchparen = 1 "stop annoying unasked for bracket matches
"set showmatch

" better buffer jumping
nmap <C-P> :bp<CR>
nmap <C-N> :bn<CR>

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2000 Jan 06
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"		for VMS:  sys$login:.vimrc

    " Use Vim settings, rather then Vi settings (much better!).
    " This must be first, because it changes other options as a side effect.
set nocompatible

    " allow backspacing over everything in insert mode
set backspace=2
set whichwrap=<,>,b,s

    " always set autoindenting on
set autoindent
set smartindent

    " dont keep a backup file
set nobackup

    " The idea of "viminfo" is to save info from one editing session for the
    " next by saving the data in an viminfo file". So next time I satrt up Vim I
    " can use the search patterns from the search history and the commands from
    " tte command line again. I can also load files again with a simple ":b
    " bufname". And Vim also remember where the cursor was in the files I
    " edited.  See ":help viminfo" for more info on Vim's "viminfo".  :-}
set viminfo=%,'50,\"100,:100,n~/.viminfo

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" always have a status line
set laststatus=2

" Don't use Ex mode, use Q for formatting
map Q gq

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
