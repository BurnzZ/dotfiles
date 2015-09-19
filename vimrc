" github.com/BurnzZ/dotfiles
" 
" Mostly inspired by Paul Irish, alrra and Py People

execute pathogen#infect()
filetype plugin indent on
syntax on

"-------------------
" usual vim stuff
"-------------------

set backspace=indent,eol,start      " allows backspace
set nowrap							" prevents wrapping of texts
set timeoutlen=50                   " prevents delay when leaving insert mode
set laststatus=2                    " fix disappearance of vim-airline
"set mouse=a                        " actually allows the use of mouse
set title                           " shows the filename in the window title bar
set showmode                        " shows the current mode
set number                          " show line numbers
set ts=4                            " set tabs to have 4 spaces
set autoindent                      " indent when moving to the next line while writing code
set expandtab                       " expand tabs into spaces
set shiftwidth=4                    " when using the >> or << commands, shift lines by 4 spaces
set cursorline                      " show a visual line under the cursor's current line 
set showmatch                       " show the matching part of the pair for [] {} and ()
set wildmenu                        " visual autocomplete for command menu
set incsearch                       " search as chars are entered
set hlsearch                        " highlight matches
"set splitbelow                      " splits open below 
set splitright                      " splits open on the right
set ruler                           " always show the cursor position 
set showcmd                         " display incomplete commands

set encoding=utf-8
set laststatus=2
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h13

"-------------------
" scheme, gui, etc
"-------------------

colorscheme molokai
"colorscheme beekai
"colorscheme PaperColor
set t_Co=256
set background=dark

"-------------------
" for plugins
"-------------------

let g:notes_directories = ['~/notes/vim-notes']
let g:notes_suffix = '.txt'

" vim-airline fonts fixes
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled=1

" for the vim-bookmarks
let g:bookmark_save_per_working_dir=1 " Save bookmarks per working dir, the folder you opened vim from
let g:bookmark_manage_per_buffer=1    " Save bookmarks when leaving a buffer, load when entering one
let g:bookmark_auto_save=1            " enable auto save

"-------------------
" Key Mappings
"-------------------

let mapleader=" "
set timeout timeoutlen=1500

map <leader>t :NERDTreeToggle<CR>

" for vim-easymotion
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
