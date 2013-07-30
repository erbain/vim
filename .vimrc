set nocompatible

" Setup vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Vim-script library used by other plugins
Bundle 'vim-scripts/L9'

" Syntax check files on save
Bundle 'scrooloose/syntastic'

" Git in VIM
Bundle 'tpope/vim-fugitive'

" <leader><leader> motion allows quick jumping to nearby file locations
Bundle 'Lokaltog/vim-easymotion'

" Fuzzy finder for files <leader>f,buffers <leader>b and MRU <leader>m
Bundle 'kien/ctrlp.vim.git'

" <leader>c<space> to quickly comment current line
Bundle 'scrooloose/nerdcommenter'

" File browser
Bundle 'scrooloose/nerdtree'

" Nice auto complete popup
Bundle 'vim-scripts/AutoComplPop'

" Browse open buffers <F8>
Bundle 'jeetsukumaran/vim-buffergator'

" Wrapper around CmdAlias
Bundle 'vim-scripts/cmdalias.vim'

" Grep in VIM
Bundle 'vim-scripts/grep.vim'

" Extra auto complete for perl
Bundle 'c9s/perlomni.vim'

" Tab completion while searching
Bundle 'vim-scripts/SearchComplete'

" Show / Hide marks in left hand col
Bundle 'kshenoy/vim-signature'

" Easily change somethings surroundings cs"' to change double to single quotes.
Bundle 'tpope/vim-surround'

" Extend VIMs autocimplete
Bundle 'vim-scripts/SyntaxComplete'

" Show / Update files tags
Bundle 'majutsushi/tagbar'

" Status bar improvments
Bundle 'millermedeiros/vim-statline'

" Allows cycling back through yanks
Bundle 'vim-scripts/YankRing.vim'

" Intelligently auto close quotes, brackets etc
Bundle 'Raimondi/delimitMate'

" Make % match other things like HTML elements
Bundle 'vim-scripts/matchit.zip'

" Misc Perl syntax files
Bundle 'vim-perl/vim-perl'

" Session manager
Bundle 'vim-scripts/sessionman.vim'
"
"Shell in VIM, nice MySQL syntax
Bundle 'basepi/vim-conque'

Bundle 'tpope/vim-unimpaired'

" Required by snipmate
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim'
" Text snippets
Bundle 'garbas/vim-snipmate'

" Frontend HTML / JS / CSS plugins
Bundle 'hail2u/vim-css3-syntax'
Bundle 'jelera/vim-javascript-syntax'

" Show CSS colours with color as background
Bundle 'ap/vim-css-color'
Bundle 'groenewege/vim-less'
Bundle 'vim-scripts/JavaScript-Indent'

" Tern broken
"Bundle 'marijnh/tern_for_vim'

" Expand string to HTML markup
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

"Done with vundle

filetype plugin on
filetype indent on

" Force 256 color support in Konsole
set t_Co=256

set autoindent
set showmatch
set et

" Set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set sw=2
set sts=2 " softtabstop
set backspace=2
set expandtab
set smarttab
set shiftround

" Always show the status line (0=never, 1=2+ windows, 2=always)
set laststatus=2

" don't split lines of text
set textwidth=0

" Warp on line breaks
set wrap linebreak

" Show spaces and line breaks
set list listchars=tab:»·,eol:·,trail:·
autocmd FileType conque_term setlocal nolist 

" Switching buffers is OK with unsaved changes.
set hidden

" Show some footer info about current command
set showcmd

" Disable case sensitive searching unless search contains multiple cases
set ignorecase
set smartcase

" Jump to first matching search term
set incsearch

" Highlight all search matches
set hlsearch

" Auto write buffer on switch.
"set autowrite

" Enable vim AutoCmp menu
set wildmenu

" Set Undo & History
set undolevels=100
set history=100

" Ignore some files
set wildignore=*.swp,*.bak,*.pyc,*.class,*.ttc

" Don't save backup files
set nobackup
set noswapfile

" Show line numbers
set number

"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar

" Remove splash screen
set shortmess+=I

set background=dark
colorscheme mustang_custom

" Enable syntaxx highlight
syntax on

" setup a custom dict for spelling
" zg = add word to dict
" zw = mark word as not spelled correctly (remove)
set spellfile=~/.vim/dict.add

" Highlight the current line
set cursorline

" ,c toggles highlight of current column
set nocursorcolumn


" GENERIC VIM KEY MAPPINGS


" Change the leading char to be a backtick
let mapleader=","

" Allow saves etc with fewer key strokes ;w instead of :w
nnoremap ; :

" F5 to toggle set paste
set pastetoggle=<F5>

" Disable arrow keys to force use of hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <PageUp> <nop>
map <PageDown> <nop>
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Up>    <nop>
inoremap <Down>  <nop>
inoremap <PageUp>  <nop>
inoremap <PageDown>  <nop>

" jk move to next visible row not the next line.
nnoremap j gj
nnoremap k gk

" show thE REGISTERS FROM Things cut/yanked
nmap <leader>r :registers<CR>

" map the various registers to a leader shortcut for pasting from them
nmap <leader>0 "0p
nmap <leader>1 "1p
nmap <leader>2 "2p
nmap <leader>3 "3p
nmap <leader>4 "4p
nmap <leader>5 "5p
nmap <leader>6 "6p
nmap <leader>7 "7p
nmap <leader>8 "8p
nmap <leader>9 "9p

" shortcut to toggle spelling
nmap <leader>s :setlocal spell! spelllang=en_gb<CR>

nnoremap <Leader>c :set cursorcolumn!<CR>

" shortcuts to open/close the quickfix window
nmap <leader>q :copen<CR>
nmap <leader>qq :cclose<CR>
nmap <leader>l :lopen<CR>
nmap <leader>ll :lclose<CR>
nmap <leader>ln :lN<CR>
nmap <leader>lp :lN<CR>

" Map perltidy to <leader>pt
nnoremap <leader>pt :%!perltidy -q<cr> " only works in 'normal' mode
vnoremap <leader>pt :!perltidy -q<cr> " only works in 'visual' mode

vnoremap < <gv
vnoremap > >gv

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" Scroll the viewport 3 lines vs just 1 line at a time
noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" make these all work in insert mode too ( <C-O> makes next cmd
" happen as if in command mode )
imap <C-W> <C-O><C-W>

" resize current buffer by +/- 5 
nnoremap <M-left> :vertical resize -5<cr>
nnoremap <M-down> :resize +5<cr>
nnoremap <M-up> :resize -5<cr>
nnoremap <M-right> :vertical resize +5<cr>

" <F2> close current window 
noremap <f2> <Esc>:close<CR><Esc>

" Clear current search with ,/
nmap <silent> ,/ :nohlsearch<CR>

" Map jj in insert mode to esc back to normal mode
imap jj <ESC>

" Tab options
nmap \t <Esc>:tabnew<CR>
map ' :set hls!<bar>set hls?<CR>
nmap \n <Esc>:tabn<CR>
nmap \p <Esc>:tabp<CR>
nmap \c <Esc>:tabclose<CR>

" Search word under cursor in current dir
"map <C-F> <esc>:Grep<CR>


" PLUGIN CONFIG / MAPPINGS


" F6 to toggle mark column - Currently BROKEN
map <F6> :SignatureToggle<CR>

map <F8> :BuffergatorToggle<CR>
let g:buffergator_suppress_keymaps = 1
let g:buffergator_viewport_split_policy = 'T'

let g:ConqueTerm_ToggleKey = '<F9>'
let g:ConqueTerm_FastMode = 0 " Disables colors and some unicode support to gain speed
"let g:ConqueTerm_Color = 1

" Make tab in AutoCmp omni popup select next item
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"

" Setup custom status line
" Enable fugitive
let g:statline_fugitive = 1 
" Show file paths
let g:statline_filename_relative = 1
" hide trailing space crap
let g:statline_trailing_space = 0
" hide buffer count
let g:statline_show_n_buffers = 0

" Set map to trigger sparkup defaults to C-e use above
let g:sparkupExecuteMapping = '<C-w>'

" Set libs for syntastic
let g:syntastic_perl_lib_path = './,./lib,/t/lib'

" Set the currsor to be a rectangle in visual mode and a line in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Options for the session plugin to save
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

" Delete fugitive buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete

" Ctrl t toggles the tag list plugin
nmap <C-t> <Esc>:TagbarToggle<CR>

"let g:acp_behaviorSnipmateLength=1
let g:acp_behaviorPerlOmniLength=1

" <F7> opens the NERDTree Plugin
map <F7> :NERDTree<cr>
let NERDTreeShowBookmarks=1

" CtrlP Settings

nnoremap <leader>f :CtrlP<CR>
" leader d to CtrlP files in the same dir as the current file
nnoremap <leader>d :CtrlP %:h<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
let g:ctrlp_max_height = 20
let g:ctrlp_max_files = 50000
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v(\.(exe|so|dll|tar|gz|swp|bin|zip|tgz))|(-min.js|.min.js)$',
  \ 'link': '',
  \ }

let g:used_javascript_libs = 'jquery,angularjs,requirejs'


