set nocompatible

" Setup vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Vim-script library used by other plugins
Plugin 'vim-scripts/L9'

" Syntax check files on save
Plugin 'scrooloose/syntastic'

" Git in VIM
Plugin 'tpope/vim-fugitive'

" Show git status in the gutter
Plugin 'airblade/vim-gitgutter'

" Fuzzy finder for files <leader>f,buffers <leader>b and MRU <leader>m
Plugin 'kien/ctrlp.vim.git'

" Expanding region selection
Plugin 'terryma/vim-expand-region'

" <leader>c<space> to quickly comment current line
Plugin 'scrooloose/nerdcommenter'

" File browser
Plugin 'scrooloose/nerdtree'

" Nice auto complete popup
Plugin  'Valloric/YouCompleteMe'

" Wrapper around CmdAlias
Plugin 'vim-scripts/cmdalias.vim'

" Grep in VIM
Plugin 'vim-scripts/grep.vim'

" Misc Perl syntax files
Plugin 'vim-perl/vim-perl'

" Extra auto complete for perl
Plugin 'c9s/perlomni.vim'

" Show / Hide marks in left hand col
Plugin 'kshenoy/vim-signature'

" Easily change somethings surroundings cs"' to change double to single quotes.
Plugin 'tpope/vim-surround'

" Extend VIMs autocimplete
Plugin 'vim-scripts/SyntaxComplete'

" Show / Update files tags
Plugin 'majutsushi/tagbar'

" Status bar improvments
Plugin 'bling/vim-airline'

" Allows cycling back through yanks
Plugin 'vim-scripts/YankRing.vim'

" Intelligently auto close quotes, brackets etc
Plugin 'Raimondi/delimitMate'

" Make % match other things like HTML elements
Plugin 'vim-scripts/matchit.zip'

" Session manager
Plugin 'vim-scripts/sessionman.vim'
"
"Shell in VIM, nice MySQL syntax
Plugin 'basepi/vim-conque'

Plugin 'tpope/vim-unimpaired'

" Snipits that integrate with YCM
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

" Frontend HTML / JS / CSS plugins
Plugin 'hail2u/vim-css3-syntax'
Plugin 'pangloss/vim-javascript'

" Show CSS colours with color as background
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'

" Coffe Script syntax, indenting, compiling etc
Plugin 'kchmck/vim-coffee-script'

" Tern - looks v interesting but seems broken
Plugin 'marijnh/tern_for_vim'

" Expand string to HTML markup
Plugin 'mattn/emmet-vim'

" Display indentation guides
Plugin 'nathanaelkane/vim-indent-guides'

" Install easytags to keep tags file updated
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'


" <leader><leader> motion allows quick jumping to nearby file locations
Plugin 'Lokaltog/vim-easymotion'

" tmux nav integration
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vim-scripts/SQLUtilities'
" Required by SQLUtilities
Plugin 'vim-scripts/Align'

" Theme
Plugin 'NLKNguyen/papercolor-theme'

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

" Auto wrap text (comments) at 78 chars
"set textwidth=78

" Warp on line breaks
set wrap linebreak

" Show spaces and line breaks
set list listchars=tab:»·,trail:·
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

" Enable vim AutoCmp menu
set wildmode=longest,list,full
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

"set bg=dark
"let g:gruvbox_italicize_comments = 0
"colorscheme gruvbox

set background=dark
colorscheme PaperColor

" Fix indent highlight to work with gruvbox
let g:indent_guides_auto_colors = 0

" Enable syntax highlight
syntax on

" setup a custom dict for spelling
" zg = add word to dict
" zw = mark word as not spelled correctly (remove)
set spellfile=~/.vim/dict.add

" Highlight the current line
set cursorline

" ,c toggles highlight of current column
set nocursorcolumn

" Open splits on the right / bottom
set splitbelow
set splitright


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

" show registers from things cut/yanked
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

" Toggle cursor column display
nnoremap <Leader>c :set cursorcolumn!<CR>

" shortcuts to open/close the quickfix window
nmap <leader>q :copen<CR>
nmap <leader>qc :cclose<CR>
nmap <leader>e :lopen<CR>
nmap <leader>ec :lclose<CR>
nmap <leader>en :lN<CR>
nmap <leader>ep :lN<CR>

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
"map ' :set hls!<bar>set hls?<CR>
nmap \n <Esc>:tabn<CR>
nmap \p <Esc>:tabp<CR>
nmap \c <Esc>:tabclose<CR>

" Search word under cursor in current dir
"map <C-F> <esc>:Grep<CR>

" Space bar toggles fold or creates fold in v mode
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


" PLUGIN CONFIG / MAPPINGS

" Easy Motion

let g:EasyMotion_smartcase = 1

" Better motion searhcing
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" 2 char searching
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

"hjkl motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)


"YCM Options
let g:ycm_allow_changing_updatetime = 0
set updatetime=1000
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1


" Enable HTML/CSS highlight in JS
let javascript_enable_domhtmlcss = 1


" Expand space and <cr> in delimitMate
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" F6 to toggle mark column
map <F6> :SignatureToggle<CR>

" Settings for Conque Plugin
let g:ConqueTerm_ToggleKey = '<F9>'
let g:ConqueTerm_FastMode = 0 " Disables colors and some unicode support to gain speed
let g:ConqueTerm_Color = 2
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 1
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_ToggleKey = '<F12>'


" Setup custom status line

" Enable fugitive
let g:statline_fugitive = 1 
" Show file paths
let g:statline_filename_relative = 1
" hide trailing space crap
let g:statline_trailing_space = 0
" hide buffer count
let g:statline_show_n_buffers = 0


" Set map to trigger zencoding defaults to C-e used above
let g:user_emmet_leader_key = '<C-y>'


" Set libs for syntastic
let g:syntastic_loc_list_height = 5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_aggregate_errors = 1
let g:syntastic_perl_checkers = ['perl', 'perlcritic']
let g:syntastic_perl_lib_path = [ './',  './lib', './t/lib', '/home/ewan/dev/vX/WCN/lib' ]
let g:syntastic_enable_perl_checker = 1
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
"let g:syntastic_javascript_jshint_args = '--config ~/DevEnv/jshintrc'
let g:indent_guides_guide_size=1


" Set the currsor to be a rectangle in visual mode and a line in insert mode
if &term =~ '^screen'
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Options for the session plugin to save
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos


" Delete fugitive buffers when hidden
autocmd BufReadPost fugitive://* set bufhidden=delete


" Ctrl t toggles the tag list plugin
nmap <C-t> <Esc>:TagbarToggle<CR>


" Jump to the tagbar window when opened
let g:tagbar_autofocus = 1


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
let g:ctrlp_match_window = 'bottom,order:btt,min:5,max:20,results:50'
let g:ctrlp_max_files = 50000
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|dist$',
  \ 'file': '\v(\.(exe|so|dll|tar|gz|swp|bin|zip|tgz))|(-min.js|.min.js)$',
  \ 'link': '',
  \ }

let g:used_javascript_libs = 'jquery,angularjs,requirejs'


" Disable easy tag warning.
let g:easytags_updatetime_warn = 0


" Airline
let g:airline_theme='PaperColor'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1


" Indent Guides <leader>ig
let g:indent_guides_start_level=2

" Auto change cwd so syntasitc plugins can find local config files
autocmd BufEnter * silent! lcd %:p:h
