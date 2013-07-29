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
Bundle 'thisivan/vim-bufexplorer'

" Wrapper around CmdAlias
Bundle 'vim-scripts/cmdalias.vim'

" Grep in VIM
Bundle 'vim-scripts/grep.vim'

" Extra auto complete for perl
Bundle 'c9s/perlomni.vim'

" Tab completion while searching
Bundle 'vim-scripts/SearchComplete'

"Bundle 'vim-scripts/ShowMarks'

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
set sw=2
set laststatus=2
set sts=2
set backspace=2
set tabstop=2
set smarttab
set expandtab
set shiftround
set background=dark
set textwidth=0
set shiftwidth=2
set tabpagemax =15
set acd
set wrap linebreak
set ic
set list listchars=tab:»·,eol:·,trail:·
set hidden
set showcmd
set ignorecase
set smartcase
set incsearch
set hlsearch
set autowrite
set wildmenu
set undolevels=100
set history=1000
set wildignore=*.swp,*.bak,*.pyc,*.class,*.ttc
set title

" Don't save backup files
set nobackup
set noswapfile

" Show lin numbers
set number

" F5 to toggle set paste
set pastetoggle=<F5>

" F6 to toggle mark column - Currently BROKEN
map <F6> :SignatureToggle<CR>

"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar

" Remove splash screen
set shortmess+=I

"colorscheme ir_black_custom
colorscheme mustang_custom

"hi clear SpellBad
"hi SpellBad cterm=bold

" Enable syntaxx highlight
syntax on

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

" Command-t doesn't work very well with auto dir changing
set noautochdir

" Change the leading char or the perl plugion to be a backtick
let mapleader=","

" Allow saves etc with fewer key strokes ;w instead of :w
nnoremap ; :

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

" show the registers from things cut/yanked
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

" setup a custom dict for spelling
" zg = add word to dict
" zw = mark word as not spelled correctly (remove)
set spellfile=~/.vim/dict.add

" Highlight the current line
set cursorline

" ,c toggles highlight of current column
set nocursorcolumn
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

" Set map to trigger sparkup defaults to C-e use above
let g:sparkupExecuteMapping = '<C-w>'

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" and lets make these all work in insert mode too ( <C-O> makes next cmd
" happen as if in command mode )
imap <C-W> <C-O><C-W>

" resize current buffer by +/- 5 
nnoremap <M-left> :vertical resize -5<cr>
nnoremap <M-down> :resize +5<cr>
nnoremap <M-up> :resize -5<cr>
nnoremap <M-right> :vertical resize +5<cr>

" F2 close current window 
noremap <f2> <Esc>:close<CR><Esc>

" Clear current search with ,/
nmap <silent> ,/ :nohlsearch<CR>

" Allow saving of files requiring root with :w!!
cmap w!! w !sudo tee % >/dev/null 

" Set libs for syntastic
let g:syntastic_perl_lib_path = './,./lib,/t/lib'

" Set the currsor to be a rectangle in visual mode and a line in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Options for the session plugin to save
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

" Tag list options
"let Tlist_Auto_Open=1
"let Tlist_Auto_Update=1
"let Tlist_Auto_Highlight_Tag=1
"let Tlist_Compact_Format=1
"let Tlist_Enable_Fold_Column=0
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Highlight_Tag_On_BufEnter=1
"let Tlist_Inc_Winwidth=0
"let Tlist_Show_One_File=1
"let Tlist_Use_Right_Window=1
"let Tlist_Sort_Type="name"

" Ctrl t toggles the tag list plugin
nmap <C-t> <Esc>:TagbarToggle<CR>


"let g:acp_behaviorSnipmateLength=1
let g:acp_behaviorPerlOmniLength=1

" Tab options
nmap \t <Esc>:tabnew<CR>
map ' :set hls!<bar>set hls?<CR>
nmap \n <Esc>:tabn<CR>
nmap \p <Esc>:tabp<CR>
nmap \c <Esc>:tabclose<CR>
map <F8> :BufExplorer<CR>

" Tag List shortcut
nnoremap ,T :Tlist<CR>
nnoremap ,U :TlistUpdate<CR>
"nnoremap ,s :TlistSessionSave tlist<CR>
"nnoremap ,l :TlistSessionLoad tlist<CR>

" Ctrl e opens the NERDTree Plugin
"nmap <C-e> <Esc>:NERDTree<CR>
map <F7> :NERDTree<cr>
let NERDTreeShowBookmarks=1

" Search word under cursor in current dir
"map <C-F> <esc>:Grep<CR>

let g:used_javascript_libs = 'jquery,angularjs,requirejs'

" Override the qa command to only close the current tabs if we have tabs open
command! -bang QA :call TabQAll('<bang>')
function! TabQAll(bang)
  try
    if tabpagenr('$') > 1
      exec 'tabclose'.a:bang
    else
      exec 'qa'.a:bang
    endif
  catch
    echohl ErrorMsg | echo v:exception | echohl NONE
  endtry
endfunction

function! InitPlugins()
  call CmdAlias('qa', 'QA')
  call CmdAlias('nt', 'NERDTree')
  au! InitPlugins VimEnter
endfunction

aug InitPlugins
  au!
  au VimEnter * :call InitPlugins()
aug END

" Map jj in insert mode to esc back to normal mode
imap jj <ESC>

" perl-support suggested options
"highlight MatchParen ctermbg=blue guibg=lightyellow

noremap <silent> <F11>   :TlistToggle<CR>
inoremap <silent> <F11>  <C-C>:TlistToggle<CR>
let tlist_perl_settings  = 'perl;c:constants;f:formats;l:labels;p:packages;s:subroutines;d:subroutines;o:POD'

" CtrlP Settings

nnoremap <leader>f :CtrlP<CR>
" leader d to CtrlP files in the same dir as the current file
nnoremap <leader>d :CtrlP %:h<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
let g:ctrlp_max_height = 20
let g:ctrlp_max_files = 50000
"let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v(\.(exe|so|dll|tar|gz|swp|bin|zip|tgz))|(-min.js|.min.js)$',
  \ 'link': '',
  \ }

