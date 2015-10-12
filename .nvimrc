"do pip install neovim twisted argparse
"install ctags
call plug#begin('~/.nvim/plugged')

" Languages
Plug 'pangloss/vim-javascript',{'for' : ['javascript', 'html5', 'html']}
Plug 'tpope/vim-markdown',{'for' : 'markdown'}
Plug 'othree/html5.vim',{'for' : 'html5'}
Plug 'rstacruz/sparkup', {'rtp': 'vim/', 'for' : ['css', 'html5', 'html']},
Plug 'elzr/vim-json', {'for' : 'json'}
Plug 'derekwyatt/vim-scala', {'for' : 'scala'}
Plug 'fatih/vim-go', {'for' : 'go'}
Plug 'rust-lang/rust.vim', {'for' : 'rust'}
Plug 'phildawes/racer', {'for' : 'rust', 'do' : 'cargo build --release -j8'}
Plug 'lukerandall/haskellmode-vim', {'for' : 'haskell'}
Plug 'octol/vim-cpp-enhanced-highlight', {'for' : 'cpp'}
Plug 'Rip-Rip/clang_complete', {'for' : ['c', 'cpp']}
Plug 'ap/vim-css-color', {'for' : ['javascript', 'html5', 'html']}
Plug 'klen/python-mode', {'for' : 'python'}
Plug 'wlangstroth/vim-racket', {'for' : 'racket'}
Plug 'guns/vim-clojure-static', {'for' : 'clojure'}
Plug 'LaTeX-Box-Team/LaTeX-Box', {'for' : 'LaTeX'}
Plug 'vitalk/vim-shebang'
Plug 'cespare/vim-toml', {'for' : 'toml'}
" Colorschemes
"Plug 'godlygeek/csapprox'
Plug 'bronson/vim-crosshairs'
Plug 'geoffharcourt/one-dark.vim'
Plug 'zeis/vim-kolor'
Plug 'Yggdroot/indentline'
" Exterior addons
Plug 'bling/vim-airline'
Plug 'ryanss/vim-hackernews', {'on': 'HackerNews'}
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}
Plug 'mhinz/vim-startify'
Plug 'joshhartigan/vim-reddit', {'on': 'Reddit'}
Plug 'chrisbra/Colorizer'
" Useful Programs
Plug 'floobits/floobits-neovim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'majutsushi/tagbar' 
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'} 
Plug 'benekastah/neomake', {'on': 'Neomake'}
Plug 'danro/rename.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-fugitive'
Plug 'L9'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim', {'on': ['Goyo', 'LimeLight']}
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'wikitopian/hardmode'
" Useful Programs that are mainly for insert mode
"Plug 'Raimondi/delimitmate'
"Plug 'kana/vim-smartinput'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'

" All of your Plugs must be added before the following line
call plug#end()            " required
set nocompatible              " be iMproved, required
set background=dark
set number
set backspace=indent,eol,start
if has('gui_running')
	set guifont=Inconsolata:h11,Consolas:h11,Source_Code_Pro:h11
endif
syntax on
au BufRead,BufNewFile *.nvimrc set filetype=vim
au BufRead,BufNewFile *.ss set filetype=racket
au BufRead,BufNewFile *.rkt set filetype=racket
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" no arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" more shebang recognition
set hidden
let $RUST_SRC_PATH="/home/honorabrutroll/gitproj/rust/src/"
let g:racer_cmd = "/home/honorabrutroll/.nvim/plugged/racer/target/release/racer"
AddShebangPattern! lua ^#!.*/bin/env\s\+lua\>
AddShebangPattern! haskell ^#!.*/bin/env\s\+runhaskell\>
let g:startify_change_to_dir = '$HOME'
filetype plugin indent on    " required
set laststatus=2
let g:numbers_exclude = ['tagbar', 'gundo', 'nerdtree']
let g:UltiSnipsExpandTrigger="<tab>"
" Syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Airline config
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"set encoding=utf-8
"autostarts NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | e
"autostarts autopairs
autocmd vimenter * :call AutoPairsTryInit()
let g:AutoPairs = {'(': ')', '[': ']', '{': '}', '<': '>', "'": "'", '"': '"', '`': '`'}
"nmap <F9> :MinimapToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F7> :Goyo<CR>
nmap <F6> :NERDTreeToggle<CR>
"Goyo/limelight focus config
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!
"Enclosing colors
au VimEnter * RainbowParentheses
"au BufEnter * :call AutoPairsTryInit()
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Set Colorscheme
colors kolor
let g:syntastic_extra_filetypes = ['rust']
let g:syntastic_rust_checkers = ['rust', 'rustc']
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set mouse=
let g:indentLine_char = '│'
let g:indentLine_color_gui = '#3B3D3A'
"switch buffers
noremap <c-j> :bnext<cr>
noremap <c-k> :bprevious<cr>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set cursorline
