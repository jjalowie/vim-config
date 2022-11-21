set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=INSTALL_PATH/.vim/plugin/Vundle.vim
call vundle#begin('INSTALL_PATH')

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" color scheme: https://github.com/sickill/vim-monokai
Plugin 'sickill/vim-monokai'

Plugin 'tpope/vim-fugitive'

Plugin 'rightson/vim-p4-syntax'

Plugin 'junegunn/fzf'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme monokai
set term=xterm
let g:netrw_altv=1
set mouse=a
set number
