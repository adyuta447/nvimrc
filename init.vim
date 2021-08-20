set encoding=UTF-8
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
filetype plugin indent on
set nu
set cursorline
set nocompatible
set incsearch
set mouse=nicr
set nu
set wildmenu
set incsearch
set nobackup
set smartindent
set hlsearch
set mouse=a
set smartcase
set termguicolors
nmap <C-S> :w<CR>
nmap <C-_> :noh<CR>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
nmap <C-Up> 8k
nmap <C-Down> 8j
nmap <C-O> o<Esc>
nmap <C-Z> u
nmap <C-Y> <C-R>
nmap <C-F> /
nmap <C-H> i<C-W><Esc>
nmap <F3> :set invnumber<CR>
nmap <F4> :q<CR>
imap <C-S> <Esc>:w<CR>a
imap <C-_> <Esc>:noh<CR>a
imap <S-Left> <Esc>lv<Left>
imap <S-Right> <Esc>lv<Right>
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Z> <Esc>ua
imap <C-Y> <Esc><C-R>a
imap <Nul> <C-N>
imap <C-F> <Esc>/
imap <C-H> <C-W>
imap <C-V> <Esc>pa
imap <F3> <Esc>:set invnumber<CR>a
imap <F4> <Esc>:q<CR>
vmap <C-Up> 8k
vmap <C-Down> 8j
hi linenr ctermfg=8
hi cursorline cterm=NONE
hi cursorlinenr ctermfg=15
hi comment ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=0
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
autocmd colorscheme * hi clear cursorline
match group1 /\t/

" In ~/.vim/ftplugin/javascript.vim, or somewhere similar.

" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
nmap <F8> :TagbarToggle<CR>
" Use ALE and also some plugin 'foobar' as completion sources for all code.

" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:airline_theme='base16_material_palenight'
let g:colorschemes= 'SerialExperimentsLain'

set fillchars+=stl:\ ,stlnc:\

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

augroup exe_code
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>r
        \ :sp<CR> :term python3 %<CR> :startinsert<CR>
    autocmd FileType javascript nnoremap <buffer> <localleader>r
        \ :sp<CR> :term nodejs %<CR> :startinsert<CR>
    autocmd FileType bash,sh nnoremap <buffer> <localleader>r
        \ :sp<CR> :term bash %<CR> :startinsert<CR>
augroup END
nmap <F8> :TagbarToggle<CR>

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'flazz/vim-colorschemes'
    Plug 'tpope/vim-surround'
    Plug 'pangloss/vim-javascript'
    Plug 'altercation/vim-colors-solarized'
    Plug 'yggdroot/indentline'
    Plug 'ap/vim-css-color'
    Plug 'scrooloose/nerdtree'
    Plug 'prettier/vim-prettier'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'majutsushi/tagbar'
    Plug 'shougo/neocomplete.vim'
    Plug 'neoclide/coc-snippets'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'romgrk/barbar.nvim'
    Plug 'w0rp/ale'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'arcticicestudio/nord-vim'
    Plug 'leshill/vim-json'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'hushicai/tagbar-javascript.vim'
    Plug 'majutsushi/tagbar'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/playground'
    Plug 'ojroques/vim-scrollstatus'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'ghifarit53/tokyonight-vim'
call plug#end()
colorscheme tokyonight
" Scroll status
let g:airline_section_x = '%{ScrollStatus()} '
let g:airline_section_y = airline#section#create_right(['filetype'])
let g:airline_section_z = airline#section#create([
            \ '%#__accent_bold#%3l%#__restore__#/%L', ' ',
            \ '%#__accent_bold#%3v%#__restore__#/%3{virtcol("$") - 1}'
            \ ])

syntax region mkdURL matchgroup=mkdEscape start="(" end=")" contained oneline
syntax region mkdCode matchgroup=mkdEscape start="`" end="`" oneline concealends contained
syntax region mkdID matchgroup=mkdEscape start="\[" end="\]" oneline concealends contains=mkdCode
syntax region mkdURI matchgroup=mkdEscape  start="\\\@<!!\?\[\ze[^]\n]*\n\?[^]\n]*\][[(]" end="\]" contains=mkdID,mkdURL,mkdCode nextgroup=mkdURL,mkdID skipwhite
syntax match mkdUnderline /─*$/
syntax match mkdLeftAngle /&lt;/ conceal cchar=<
syntax match mkdRightAngle /&gt;/ conceal cchar=>

hi def link mkdLine special
hi def link mkdID markdownLinkText
hi def link mkdURI markdownLinkText
hi def link mkdURL markdownURL
hi def link mkdCode markdownCode

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>

"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Config fzf

let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

" Floaterm config
let g:floaterm_keymap_toggle = '<F12>'
