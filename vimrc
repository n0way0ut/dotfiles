set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
"set paste
set expandtab
set cursorline
set nocompatible 
set encoding=utf-8

set hidden
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/

"copy to system clipboard
vnoremap <C-c> "*y

" Netrw - ZZ to exit
map <C-z> :bd<ENTER>
 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 16

map  <C-n> :Vexplore<CR>
" buffer next
map  <C-l> :bn<ENTER>
" buffer next
map  <C-h> :bp<CR>
" new buffer
map  <C-t> :enew<CR>
" close buffer and window
map <C-x>  :bn<bar>bd#<ENTER>


" ctrl+t create a new tab
" ctrl+w close current tab
" ctrl+arrows navigate tabs
"map <C-t> :tabnew<cr>
"map <C-x> :tabclose<cr>
"map <C-left> :tabp<cr>
"map <C-right> :tabn<cr>

"select all ctrl a
noremap <C-a> ggVG<CR>

"open file containing the tag found in new tab
" nnoremap  <C-]> :e wincmd ]<CR>
" g] to navigate the tags

set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
"autocmd FileType * unlet! g:airline#extensions#whitespace#checks
"autocmd FileType markdown let g:airline#extensions#whitespace#checks = [ 'indent' ]


"set t_Co=256
"let g:solarized_termcolors=256

set background=dark
colo Benokai

" case insensitive
set ic

 "set counter num
set nu

"set guifont=FuraMono-Regular\ Powerline:s12
" highlight colors
hi CurrentWord ctermbg=53
hi CurrentWordTwins ctermbg=135


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/calendar.vim'
Plugin 'vim-airline/vim-airline'
    let g:airline_theme = 'kolor'
Plugin 'ludovicchabant/vim-gutentags'
    let g:gutentags_enabled = 0
    let g:gutentags_cache_dir = "/tmp/vim"
    "let g:gutentags_modules = ['ctags', 'gtags-cscope']    
    let g:gutentags_define_advanced_commands = 1
Plugin 'jsfaint/gen_tags.vim'
    let g:gen_tags#cache_dir = "/tmp/vim"

Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'

Plugin 'ryanoasis/vim-devicons'
    let g:webdevicons_enable_nerdtree = 1
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:DevIconsEnableFoldersOpenClose = 1
    let g:WebDevIconsUnicodeDecorateFolderNodes = 1

Plugin 'Shougo/neocomplete.vim'
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3

Plugin 'Lokaltog/vim-powerline'
    " Use unicode symbols in powerline
    let g:Powerline_symbols = 'unicode'
    " For devicons
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1

Plugin 'Yggdroot/indentLine'
    let g:indentLine_setColors = 1
"    let g:vim_json_syntax_conceal = 0

Plugin 'scrooloose/nerdtree'
    " Ctrl+d to toggle NerdTree
    " nmap <silent> <C-D> :NERDTreeToggle<CR>
    " Open it on vim startup
    "autocmd VimEnter * NERDTree
    " Mirror tree position for every buffer
    "autocmd BufEnter * NERDTreeMirror
    " Go to previous (last accessed) window ( move focus to file buffer
    " instead of the tree itself).
    "autocmd VimEnter * wincmd p
    " Close nerdtree when it's the only buffer left open
"    autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
    " Change dir to the dir of the new root
"    let NERDTreeChDirMode = 2
    " Single click to open files and expand folders.
    let NERDTreeMouseMode = 3
    " Display hidden files
    " let NERDTreeShowHidden=1
    " Do not display these files
    let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
"    let g:NERDTreeDirArrowExpandable = '▸'
"    let g:NERDTreeDirArrowCollapsible = '▾'

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'flazz/vim-colorschemes'

"Plugin 'joshdick/onedark.vim'

    "let g:airline_theme='onedark'
Plugin 'dominikduda/vim_current_word'
    " Twins of word under cursor:
    let g:vim_current_word#highlight_twins = 1
    " The word under cursor:
    let g:vim_current_word#highlight_current_word = 1
Plugin 'ctrlpvim/ctrlp.vim'


call vundle#end()

"let g:airline_symbols_ascii = 0
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline#extensions#tabline#formatter = 'default'

autocmd Filetype json :IndentLinesDisable


