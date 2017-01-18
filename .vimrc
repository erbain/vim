set nocompatible

" Setup vundle
filetype off

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle
Plug 'gmarik/vundle'

" Vim-script library used by other plugins
Plug 'vim-scripts/L9'

" Syntax check files on save
Plug 'scrooloose/syntastic'

" Git in VIM
Plug 'tpope/vim-fugitive'

" Show git status in the gutter
Plug 'airblade/vim-gitgutter'

" Fuzzy finder for files <leader>f,buffers <leader>b and MRU <leader>m
Plug 'ctrlpvim/ctrlp.vim'

" Expanding region selection
Plug 'terryma/vim-expand-region'

" <leader>c<space> to quickly comment current line
Plug 'scrooloose/nerdcommenter'

" File browser
Plug 'scrooloose/nerdtree'

" Neocomplete plugin
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Wrapper around CmdAlias
Plug 'vim-scripts/cmdalias.vim'

" Grep in VIM
Plug 'vim-scripts/grep.vim'

" Misc Perl syntax files
Plug 'vim-perl/vim-perl'

" Extra auto complete for perl
Plug 'c9s/perlomni.vim'

" Show / Hide marks in left hand col
Plug 'kshenoy/vim-signature'

" Easily change somethings surroundings cs"' to change double to single quotes.
Plug 'tpope/vim-surround'

" Extend VIMs autocimplete
Plug 'vim-scripts/SyntaxComplete'

" Show / Update files tags
Plug 'majutsushi/tagbar'

" Status bar improvments
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Allows cycling back through yanks
Plug 'vim-scripts/YankRing.vim'

" Intelligently auto close quotes, brackets etc
Plug 'Raimondi/delimitMate'

" Make % match other things like HTML elements
Plug 'vim-scripts/matchit.zip'

" Session manager
Plug 'vim-scripts/sessionman.vim'
"
"Shell in VIM, nice MySQL syntax
Plug 'basepi/vim-conque'

Plug 'tpope/vim-unimpaired'

" Frontend HTML / JS / CSS plugins
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'

" Show CSS colours with color as background
Plug 'ap/vim-css-color'
Plug 'groenewege/vim-less'

" Coffe Script syntax, indenting, compiling etc
Plug 'kchmck/vim-coffee-script'

" Tern - looks v interesting but seems broken
Plug 'marijnh/tern_for_vim', {'do' : 'npm install'}


" Expand string to HTML markup
Plug 'mattn/emmet-vim'

" Display indentation guides
Plug 'nathanaelkane/vim-indent-guides'

" Install easytags to keep tags file updated
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'


" <leader><leader> motion allows quick jumping to nearby file locations
Plug 'Lokaltog/vim-easymotion'

" tmux nav integration
Plug 'christoomey/vim-tmux-navigator'

" tmux focus events passed to vim
Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'vim-scripts/SQLUtilities'
" Required by SQLUtilities
Plug 'vim-scripts/Align'

" Typescript / Angular2 Support
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Quramy/tsuquyomi'
Plug 'jason0x43/vim-js-indent'

" Theme
Plug 'altercation/vim-colors-solarized'

"Done with vim-plug
call plug#end()

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

" Remove splash screen
set shortmess+=I

set background=dark
colorscheme solarized
let g:solarized_termtrans=1

" Fix indent highlight to work with gruvbox
let g:indent_guides_auto_colors = 0

" Enable syntax highlight
syntax on
" Make visually selected lines readable
highlight! link Visual CursorLine

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

" Disable arrow keys to force use of hjkl, use to resize splits
nnoremap <left> :vertical resize -5<cr>
nnoremap <down> :resize +5<cr>
nnoremap <up> :resize -5<cr>
nnoremap <right> :vertical resize +5<cr>

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
nnoremap <Leader>ct :set cursorcolumn!<CR>

" shortcuts to open/close the quickfix window
nmap <leader>q :copen<CR>
nmap <leader>qc :cclose<CR>
nmap <leader>e :lopen<CR>
nmap <leader>ec :lclose<CR>
nmap <leader>en :lN<CR>
nmap <leader>ep :lN<CR>

" Save buffer with 2 keys
" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null

" Map perltidy to <leader>pt
nnoremap <leader>pt :%!perltidy -q<cr> " only works in 'normal' mode
vnoremap <leader>pt :!perltidy -q<cr> " only works in 'visual' mode

vnoremap < <gv
vnoremap > >gv

" Scroll the viewport 3 lines vs just 1 line at a time
noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" resize current buffer by +/- 5
"nnoremap <M-h> :vertical resize -5<cr>
"nnoremap <M-j> :resize +5<cr>
"nnoremap <M-k> :resize -5<cr>
"nnoremap <M-l> :vertical resize +5<cr>

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
"let g:ycm_allow_changing_updatetime = 0
"set updatetime=1000
"let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 1

"Neocomplete Options
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Neosnipet options
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=nc
endif


" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


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
  \ 'dir':  '\v[\/]\.(git|hg|svn)|dist|node_modules|bower_components$',
  \ 'file': '\v(\.(exe|so|dll|tar|gz|swp|bin|zip|tgz))|(-min.js|.min.js)$',
  \ 'link': '',
  \ }

let g:used_javascript_libs = 'jquery,angularjs,requirejs'


" Easy tags config.
let g:easytags_updatetime_warn = 0
let g:easytags_async = 1
let g:easytags_on_cursorhold = 0
let g:easytags_auto_highlight = 0
let g:easytags_auto_update = 0


" Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1


" Indent Guides <leader>ig
let g:indent_guides_start_level=2

" Auto change cwd so syntasitc plugins can find local config files
autocmd BufEnter * silent! lcd %:p:h
