"""""""""""""""""""""""""""""""""""""
" Pedro Zara Vimrc configuration
"""""""""""""""""""""""""""""""""""""

" set UTF-8 encoding
set encoding=utf8

"""" START Vundle Configuration

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
" Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'tpope/vim-dispatch'

" Generic Programming Support
Plugin 'valloric/youcompleteme'
" Plugin 'jakedouglas/exuberant-ctags'
" Plugin 'honza/vim-snippets'
" Plugin 'Townk/vim-autoclose'
" Plugin 'tomtom/tcomment_vim'
" Plugin 'tobyS/vmustache'
" Plugin 'janko-m/vim-test'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'neomake/neomake'

" Markdown / Writting
" Plugin 'reedes/vim-pencil'
" Plugin 'tpope/vim-markdown'
" Plugin 'jtratner/vim-flavored-markdown'
" Plugin 'LanguageTool'

" Git Support
" Plugin 'kablamo/vim-git-log'
" Plugin 'gregsexton/gitv'
" Plugin 'tpope/vim-fugitive'

" Go lang support
Plugin 'fatih/vim-go'

" Theme / Interface
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'AnsiEsc.vim'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'sjl/badwolf'
" Plugin 'tomasr/molokai'
" Plugin 'morhetz/gruvbox'
" Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plugin 'junegunn/limelight.vim'
" Plugin 'mkarmona/colorsbox'
" Plugin 'romainl/Apprentice'
" Plugin 'Lokaltog/vim-distinguished'
" Plugin 'chriskempson/base16-vim'
" Plugin 'w0ng/vim-hybrid'
" Plugin 'AlessandroYorba/Sierra'
" Plugin 'daylerees/colour-schemes'
" Plugin 'effkay/argonaut.vim'
" Plugin 'ajh17/Spacegray.vim'
" Plugin 'atelierbram/Base2Tone-vim'
" Plugin 'colepeters/spacemacs-theme.vim'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""
set nowrap

" OSX stupid backspace fix
set backspace=indent,eol,start

" Show linenumbers
set number

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Turn syntax highlighting on
set t_Co=256
syntax on

" highlight matching braces
set showmatch

" Always display the status line
set laststatus=2

" Disable vi compatibility (emulation of old bugs)
set nocompatible

" Use indentation of previous line
set autoindent

" Use intelligent indentation for C
set smartindent

" Wwrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=120

let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

" Vim-Supertab Configuration
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Vim-UtilSnips Configuration
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'


"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Old part

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

filetype plugin indent on    " required

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line