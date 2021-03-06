scriptencoding utf-8
set encoding=utf-8

" Based on https://github.com/skwp/dotfiles/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()

" ================ General Config ====================
set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom

set autoread "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" ================ Search Settings =================
set incsearch "Find the next match as we type the search
set smartcase
set ignorecase
set hlsearch "Hilight searches by default
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=trail:·,tab:»·

set wrap "Wrap lines
set linebreak "Wrap lines at convenient points

" ================ Folds ============================
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

" ================ Completion =======================
set wildmode=list:longest
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" ================ Scrolling ========================
set scrolloff=8 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Disable Up/Right/Down/Left =======
noremap <Up>    <NOP>
noremap <Right> <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>

" alias for gT
noremap gb gT

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" enter command mode with single keystroke
nnoremap ; :
nnoremap : ;

" start external command with single keystroke
nnoremap ! :!

" quit insert mode with jk
"inoremap jk <Esc>

" fix some misspellings
cabbrev ew :wq
cabbrev qw :wq

" Use solarized color scheme
set t_Co=256
"set background=light
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
