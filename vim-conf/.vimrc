set number
set numberwidth=1
set relativenumber
set sw=2

set ruler
set showcmd
set laststatus=2

set mouse=a
set clipboard=unnamed

set encoding=UTF-8
set showmatch
syntax enable
set noshowmode

call plug#begin('~/.vim/plugged')

" ========= Themes

" Plug 'morhetz/gruvbox'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }

Plug 'navarasu/onedark.nvim'

" Plug 'rafalbromirski/vim-aurora'
" Plug 'tribela/vim-transparent'

Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" =========  shortcuts

Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'

Plug 'christoomey/vim-tmux-navigator'

" =========  Syntax

Plug 'sheerun/vim-polyglot'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'dense-analysis/ale'

" ========= Typing

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'editorconfig/editorconfig-vim'

" ========= IDE

Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-repeat'

call plug#end()

" ================================================

"For the themes

" colorscheme gruvbox

" Settings for onehalf theme
" colorscheme onehalfdark
" set t_Co=256

" Settings for aurora theme
" colorscheme aurora
" set termguicolors
" set background=dark

" Settings for onedark theme
let g:onedark_config = {
  \ 'style': 'cool',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme onedark

" ==============================================


"For the editor

" Settings for custom keymaps

let mapleader=" "

" easymotion key map

nmap <Leader>w <Plug>(easymotion-s2)

" nerdtree key map

nmap <Leader>T :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Settings for nerdtree

let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber
autocmd BufEnter NERD_tree_* | execute 'normal R'
let NERDTreeShowHidden=1

"" settings for nerdtree-devicon-syntax

 let s:colors = {
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
\ }

" settings for vim-arline config

let g:airline_theme='tomorrow'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Settings for ALE

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

let g:ale_completion_enabled = 1

let g:ale_floating_preview = 1
let g:ale_floating_window_border = ['│', '─', '╭', '╮', '╯', '╰']

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'
let g:ale_fix_on_save=1


  " powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
