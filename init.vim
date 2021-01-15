let mapleader = "," 

call plug#begin()

  Plug 'gruvbox-community/gruvbox' 
  Plug 'flazz/vim-colorschemes'
  Plug 'vim-airline/vim-airline' "for the tabs and the status bar
  Plug 'dracula/dracula-theme' "dracula
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline-themes' "Customizing it
  Plug 'henrynewcomer/vim-theme-papaya'
  Plug 'vim-python/python-syntax' "add some syntax highlighting to see errors
  Plug 'tpope/vim-surround' "auto-pairing parenthesis and quotes
  Plug 'aonemd/kuroi.vim'
  Plug 'puremourning/vimspector' "debugging
  Plug 'chriskempson/base16-vim'
  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'mhinz/vim-startify' "startscreen
  Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intellisense
  Plug 'kien/ctrlp.vim'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} "to navigate through the pc fast
  Plug 'preservim/nerdtree' "VSCODE-like directory
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'preservim/nerdcommenter'
  Plug 'scrooloose/syntastic'
  Plug 'majutsushi/tagbar'
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'Yggdroot/indentLine'

call plug#end()

"ONEDARK
"source $HOME/.config/nvim/themes/onedark.vim

"GRUVBOX
colorscheme gruvbox
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
let gruvbox_contrast_light = 'soft'
let g:papaya_gui_color='blue'

"Customizing vim airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' ' 
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"tagbar
nmap <F8> :TagbarToggle<CR>

"Making tha bracket colorizer active globally
let g:rainbow_active = 1
"setting the python syntax highlighter
let g:python_highlight_all = 1

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

"LIMELIGHT
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

"CTRLP
let g:ctrlp_cmd = 'CtrlP'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"GOYO
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=Black guibg=NONE

" cpp 
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'


"General settings
syntax on

filetype plugin indent on

set exrc
"set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set updatetime=50

