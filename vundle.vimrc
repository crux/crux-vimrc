set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" RAML 
Plugin 'kennethzfeng/vim-raml'

" http://standardjs.com/
" Install Syntastic and add this line to .vimrc:
Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['standard']
" For automatic formatting on save, add these two lines to .vimrc:
"autocmd bufwritepost *.js silent !standard % --format
"set autoread

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" AngularJS Days
Plugin 'leafgarland/typescript-vim'

Plugin 'vim-ruby/vim-ruby'

" including the smyck colorscheme
Plugin 'flazz/vim-colorschemes'

" my personal vimrc setting
Plugin 'crux/crux-vimrc'

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
"-----
" --- non vundle crux stuff below
