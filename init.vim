"       ____      _ __        _         
"      /  _/___  (_) /__   __(_)___ ___ 
"      / // __ \/ / __/ | / / / __ `__ \
"    _/ // / / / / /__| |/ / / / / / / /
"   /___/_/ /_/_/\__(_)___/_/_/ /_/ /_/ 
                                    
"           Author : Adyuta
"
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
"    Plug 'yggdroot/indentline'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'ap/vim-css-color'
    Plug 'scroloose/nerdtree'
    Plug 'prettier/vim-prettier'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'majutsushi/tagbar'
    Plug 'shougo/neocomplete.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
    Plug 'akinsho/bufferline.nvim'
"    Plug 'vim-airline/vim-airline'
"    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'arcticicestudio/nord-vim' 
    Plug 'prabirshrestha/vim-lsp'
    Plug 'hushicai/tagbar-javascript.vim'
    Plug 'majutsushi/tagbar'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-treesitter/playground'
 "   Plug 'ojroques/vim-scrollstatus'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'mhinz/vim-signify'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'mattn/emmet-vim'
    Plug 'wfxr/minimap.vim'
    Plug 'joshdick/onedark.vim'
    Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }

call plug#end()
colorscheme onedark
"One dark 

" Prettier
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0

autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync


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

"" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Github COnfiguration
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk



" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

" HTML5 Configuration

let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

" Minimap Configuration
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
hi MinimapCurrentLine ctermfg=Green guifg=#81A1C1 guibg=#5E81AC
let g:minimap_highlight = 'MinimapCurrentLine'

" Javascript config 
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

set conceallevel=1

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"

" NERDTree config
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Start NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

lua << EOF
local bufferline = require('bufferline')

bufferline.setup({
  options = {
    offsets = { { filetype = "NvimTree", text = "File Explorer", padding = 1 } },
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    show_close_icon = true,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "thin",
    always_show_bufferline = true,
    diagnostics = "nvim_lsp", -- or "coc" if you're using coc
  },
})
EOF

" GalaxyLine configuration
lua << EOF
local gl = require('galaxyline')
local gls = gl.section
local diagnostic = require('galaxyline.provider_diagnostic')

gl.short_line_list = {
    'LuaTree', 'vista', 'dbui', 'term', 'nerdtree', 'fugitive',
    'fugitiveblame', 'plug', 'dashboard'
}

local colors = {
    line_bg  = '#1E1F29',
    fg       = '#f8f8f2',
    fg_green = '#3FBB5E',

    yellow   = '#f1fa8c',
    cyan     = '#8be9fd',
    darkblue = '#83A598',
    green    = '#50fa7b',
    orange   = '#ffb86c',
    purple   = '#bd93f9',
    magenta  = '#ff79c6',
    blue     = '#73BA9F',
    red      = '#ff5555'
}

local function has_file_type()
    local f_type = vim.bo.filetype
    if not f_type or f_type == '' then return false end
    return true
end

local buffer_not_empty = function()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then return true end
    return false
end

local function insert_left(element) table.insert(gls.left, element) end

local function insert_blank_line_at_left()
    insert_left {
        Space = {
            provider = function() return ' ' end,
            highlight = {colors.line_bg, colors.line_bg}
        }
    }
end

local function insert_right(element) table.insert(gls.right, element) end

local function insert_blank_line_at_right()
    insert_right {
        Space = {
            provider = function() return ' ' end,
            highlight = {colors.line_bg, colors.line_bg}
        }
    }
end

insert_left {
    Start = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}

insert_blank_line_at_left()

insert_left {
    ViMode = {
        icon = function()
            local icons = {
                n = ' ',
                i = ' ',
                c = ' ',
                V = ' ',
                [''] = ' ',
                v = ' ',
                C = 'ﲵ ',
                R = '﯒ ',
                t = ' '
            }
            return icons[vim.fn.mode()]
        end,
        provider = function()
            -- auto change color according the vim mode
            local alias = {
                n = 'NORMAL',
                i = 'INSERT',
                c = 'C',
                V = 'VL',
                [''] = 'V',
                v = 'VISUAL',
                C = 'C',
                ['r?'] = ':CONFIRM',
                rm = '--MORE',
                R = 'REPLACE',
                Rv = 'R&V',
                s = 'S',
                S = 'S',
                ['r'] = 'HIT-ENTER',
                [''] = 'SELECT',
                t = 'T',
                ['!'] = 'SH'
            }

            local mode_color = {
                n = colors.yellow,
                i = colors.green,
                v = colors.blue,
                [''] = colors.blue,
                V = colors.blue,
                c = colors.magenta,
                no = colors.red,
                s = colors.orange,
                S = colors.orange,
                [''] = colors.orange,
                ic = colors.yellow,
                R = colors.purple,
                Rv = colors.purple,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ['r?'] = colors.cyan,
                ['!'] = colors.red,
                t = colors.red
            }

            local vim_mode = vim.fn.mode()
            vim.api.nvim_command('hi GalaxyViMode guifg=' ..
                                     mode_color[vim_mode])
            return alias[vim_mode]
        end,
        highlight = {colors.line_bg, colors.line_bg}
    }
}

insert_blank_line_at_left()

insert_left {
    Separa = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}

insert_left {
    Start = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}

insert_left {
    FileIcon = {
        provider = 'FileIcon',
        condition = buffer_not_empty,
        highlight = {
            require('galaxyline.provider_fileinfo').get_file_icon_color,
            colors.line_bg
       }
    }
}

insert_left {
    BufferType = {
        provider = 'FileTypeName',
        condition = has_file_type,
        highlight = {colors.fg, colors.line_bg}
    }
}

insert_blank_line_at_left()

insert_left {
    GitIcon = {
        provider = function() return '  ' end,
        condition = require('galaxyline.provider_vcs').check_git_workspace,
        highlight = {colors.orange, colors.line_bg}
    }
}

insert_left {
    GitBranch = {
        provider = 'GitBranch',
        condition = require('galaxyline.provider_vcs').check_git_workspace,
        highlight = {'#8FBCBB', colors.line_bg}
    }
}

insert_blank_line_at_left()

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then return true end
    return false
end

insert_left {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = checkwidth,
        icon = '  ',
        highlight = {colors.green, colors.line_bg}
    }
}

insert_left {
    DiffModified = {
        provider = 'DiffModified',
        condition = checkwidth,
        icon = '  ',
        highlight = {colors.orange, colors.line_bg}
    }
}

insert_left {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = checkwidth,
        icon = '  ',
        highlight = {colors.red, colors.line_bg}
    }
}

DiagnosticError = diagnostic.get_diagnostic_error
DiagnosticWarn = diagnostic.get_diagnostic_warn
DiagnosticHint = diagnostic.get_diagnostic_hint
DiagnosticInfo = diagnostic.get_diagnostic_info

insert_left {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.red, colors.line_bg}
    }
}

insert_left {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        condition = checkwidth,
        icon = '  ',
        highlight = {colors.yellow, colors.line_bg}
    }
}

insert_left {
    DiagnosticInfo = {
        provider = DiagnosticInfo,
        condition = checkwidth,
        highlight = {colors.green, colors.line_bg},
        icon = '  '
    }
}

insert_left {
    DiagnosticHint = {
        provider = DiagnosticHint,
        condition = checkwidth,
        highlight = {colors.white, colors.line_bg},
        icon = '  '
    }
}

insert_left {
    Separa = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}
-- left information panel end}

insert_right {
    Start = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}

insert_blank_line_at_right()

insert_right {
    FileFormat = {
        provider = 'FileFormat',
        condition = checkwidth,
        highlight = {colors.fg, colors.line_bg, 'bold'}
    }
}

insert_blank_line_at_right()

insert_right {
    LineInfo = {
        provider = 'LineColumn',
        separator = ' ',
        condition = checkwidth,
        separator_highlight = {colors.green, colors.line_bg},
        highlight = {colors.fg, colors.line_bg}
    }
}

insert_right {
    PerCent = {
        provider = 'LinePercent',
        separator = '',
        separator_highlight = {colors.blue, colors.line_bg},
        highlight = {colors.cyan, colors.line_bg, 'bold'}
    }
}

insert_right {
    Encode = {
        provider = 'FileEncode',
        separator = '',
        condition = checkwidth,
        separator_highlight = {colors.blue, colors.line_bg},
        highlight = {colors.cyan, colors.line_bg, 'bold'}
    }
}

insert_blank_line_at_right()

insert_right {
    Separa = {
        provider = function() return ' ' end,
        highlight = {colors.line_bg}
    }
}

-- Disable Status Line when opening nvimtree
vim.api.nvim_exec (
  [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == 'NvimTree'|set laststatus=0|else|set laststatus=2|endif]],
  false
) 
EOF

" IndentLine Configuration
lua << EOF
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}


EOF
