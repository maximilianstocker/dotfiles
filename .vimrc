"
" " An example for a vimrc file.
" "
" " Maintainer:	Bram Moolenaar <Bram@vim.org>
" " Last change:	2016 Jul 28
" "
" " To use it, copy it to
" "     for Unix and OS/2:  ~/.vimrc
" "	      for Amiga:  s:.vimrc
" "  for MS-DOS and Win32:  $VIM\_vimrc
" "	    for OpenVMS:  sys$login:.vimrc
"
" " When started as "evim", evim.vim will already have done these settings.
" if v:progname =~? "evim"
"   finish
" endif
"
" " Get the defaults that most users want.
" source $VIMRUNTIME/defaults.vim
"
" if has("vms")
"   set nobackup		" do not keep a backup file, use versions instead
" else
"   set backup		" keep a backup file (restore to previous version)
"   if has('persistent_undo')
"     set undofile	" keep an undo file (undo changes after closing)
"   endif
" endif
"
" if &t_Co > 2 || has("gui_running")
"   " Switch on highlighting the last used search pattern.
"   set hlsearch
" endif
"
" " Only do this part when compiled with support for autocommands.
" if has("autocmd")
"
"   " Put these in an autocmd group, so that we can delete them easily.
"   augroup vimrcEx
"   au!
"
"   " For all text files set 'textwidth' to 78 characters.
"   autocmd FileType text setlocal textwidth=78
"
"   augroup END
"
" else
"
"   set autoindent		" always set autoindenting on
"
" endif " has("autocmd")
"
" " Add optional packages.
" "
" " The matchit plugin makes the % command work better, but it is not backwards
" " compatible.
" if has('syntax') && has('eval')
"   packadd matchit
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
"autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTreeTabsOn' argv()[0] | wincmd p | ene | endif
"autocmd vimexit * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeTabsClose") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree with ^-n
map <C-n> :NERDTreeTabsToggle<CR>

"mimimap
"autocmd VimEnter * :Minimap
"autocmd vimexit * NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:vim-minimap") && b:vim-mimimap.isTabTree()) | :q | endif

" Pathogen
execute pathogen#infect()

" "Airline Plugin Theme
" let g:airline_theme='deus'
" let g:AutoPairsUseInsertedCount = 1

"Simple-Todo Plugin
let mapleader=','
let maplocalleader='\'

"colorscheme
colorscheme onedark
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

"autocomplete popup menu: select with <ENTER>
"plugin: AutoComplPop
:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"general vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
filetype plugin indent on
set mouse=v
"Mac OS clipboard settings
set clipboard=unnamed

"tab settings
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

"line number settings
set number relativenumber

"cmd: tab complete show list
set wildmode=longest,list,full
set wildmenu

"key remaps for changing splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"key remaps for changing tabs
nnoremap tk  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tj  :tablast<CR>
nnoremap te  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap tc  :tabclose<CR>

"Tab colors
:hi TabLineFill ctermfg=15 ctermbg=233
:hi TabLine ctermfg=15 ctermbg=233
:hi TabLineSel ctermfg=LightGrey ctermbg=235   


