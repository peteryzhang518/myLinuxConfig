set mouse=a
set shell=/bin/bash
set expandtab
set tabstop=4
set shiftwidth=4

set number
set relativenumber
set scrolloff=10 "some row on the buttow set scrolloff=10
"backspcae can not use. can use :help bs to watch document
set backspace=
"auto change line
set textwidth=80
set wrapmargin=2
set fo+=t
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
"set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
"search smart
set smartcase
set is

set hlsearch

set termguicolors

"添加leader键位的映射
let mapleader=" "
map <Leader> <Plug>(easymotion-prefix)
map <Leader>a <Plug>(easymotion-jumptoanywhere)
let g:EasyMotion_verbose = 0
let g:EasyMotion_re_anywhere = '\v' .
    \       '(<.|^$)' . '|' .
    \       '(.>|^$)' . '|' .
    \       '(\l)\zs(\u)' . '|' .
    \       '(_\zs.)' . '|' .
    \       '(#\zs.)'


"添加在命令行模式左右的移动方式
cnoremap <c-h> <left>
cnoremap <c-l> <right>

"添加fzf的快捷键映射
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>u :Buffers<CR>
nnoremap <Leader>r :Rg <C-R><C-W><CR>
nnoremap <Leader>o :only \| set nonumber norelativenumber noshowmode noshowcmd noruler laststatus=0 signcolumn=no<CR>
nnoremap <Leader>O :set number relativenumber showmode showcmd ruler laststatus=2 signcolumn=yes<CR>

"
nnoremap <leader>y :let @+ = expand('%:t')<CR>
"添加调出一个终端的映射
nnoremap <Leader>tt :terminal <CR>
tnoremap <Esc> <C-\><C-N>


call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"
Plug 'https://github.com/tpope/vim-fugitive'
"彩虹括号
Plug 'https://github.com/HiPhish/rainbow-delimiters.nvim'

"竖线
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/preservim/tagbar'

"nvim 官方代码高亮
Plug 'https://github.com/nvim-treesitter/nvim-treesitter'

Plug 'https://github.com/easymotion/vim-easymotion'

"markdown 语法
Plug 'https://github.com/tpope/vim-markdown'
"markdown 浏览器预览
Plug 'https://github.com/iamcco/markdown-preview.nvim'
"markdown 自动添加标题横线
Plug 'https://github.com/lukas-reineke/headlines.nvim'
"markdown table
Plug 'https://github.com/dhruvasagar/vim-table-mode'
call plug#end()



"set bg=dark
set background=dark
"colorscheme  molokai
"colorscheme solarized
colorscheme solarized8
"let g:solarized_termcolors=256

" 开启 256 色支持 t_Co即terminal Color
"set t_Co=256
" 开启真彩色支持（Neovim 或 Vim 8 以上版本支持）
set termguicolors

"颜色信息的书写方式 hi name cterm=* ctermfg=* ctermbg=* gui=* guifg=* guibg=* 
hi User4 guifg=#CCFF66 guibg=#000000
hi User5 guifg=#99FF99 guibg=#000000
hi User6 guifg=#99FFCC guibg=#000000

"状态栏
set laststatus=3
"状态栏显示当前文件颜色为user1
"%num*为用第几组颜色        \ 为空格        %%为字符百分号      %=为向左对齐
"%*为向右对齐
set statusline=%#User4#\ %{getcwd()}
set statusline+=%#User5#\ %f\ %*
set statusline+=%=%#User6#\ %P\ 
set statusline+=%#User5#\ \[%l\,%c\]\ 
set statusline+=%#User4#\ \ \ \ \ %L\ \ \ \ \ 



"lua require("ibl").setup()
lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "cpp",  "vim", "vimdoc", "markdown", "markdown_inline", "python"},

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
      enable = true,
--    additional_vim_regex_highlighting = false,
  },
}

require 'rainbow-delimiters.setup'.setup {
    strategy = {
        [''] = 'rainbow-delimiters.strategy.global',
        cpp = 'rainbow-delimiters.strategy.global',
--        commonlisp = 'rainbow-delimiters.strategy.local',
    },
    query = {
        [''] = 'rainbow-delimiters',
--        latex = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

EOF

"添加tagbar
let g:tagbar_autofocus = 1
let g:tagbar_autoclose_netrw = 1
let g:tagbar_left = 1
let g:tagbar_show_linenumbers = 3
autocmd VimEnter * nested :TagbarOpen
autocmd VimEnter * nested :TagbarOpenAutoClose
autocmd VimEnter * nested call s:OpenTagbarAndFocusMain()

function! s:OpenTagbarAndFocusMain()
  TagbarOpen
  wincmd p   " 切回上一个窗口（通常就是主编辑区）
endfunction

"添加ctag的配置
"set tags+=~/.vim/linux-4.6.4-tags
"nmap <silent> <F4> :tselect <c-r><c-w><cr>
set updatetime=1000

"Nerdtree  config
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=30


"fzf
"source ~/.fzf/plugin/fzf.vim
set rtp+=~/.fzf
set rtp+=~/.fzf/bin/
set rtp+=/home/p/.fzf/
set rtp+=/home/p/.fzf/bin/
set rtp+=/home/p/.fzf/bin/fzf
set rtp+=~/.vim/plugin/
set rtp+=~/.vim/plugin/
set rtp+=/usr/bin/
set rtp+=/usr/bin/fzf
"let g:fzf_executable = '/usr/bin/fzf'

"- Popup window(anchored to the bottom of the current window)
let g:fzf_vim                     = {}
let g:fzf_vim.preview_window      = [ 'hidden,right,50%', 'ctrl-\' ]
let g:fzf_layout = {'window':{'width':1, 'height':1, 'relative':v:false, 'yoffset':1.0}}

let $FZF_DEFAULT_OPTS='
    \ --bind ctrl-d:half-page-down
    \ --bind ctrl-u:half-page-up
    \ '

" vim-fugitive
command! GlogFullScreen :botright new | Glog

syntax on
syntax enable
filetype plugin indent on

let g:mkdp_browser = '/usr/bin/google-chrome'
"function OpenMarkdownPreview (url)
"    execute "silent ! firefox --new-window " . a:url
"endfunction
"let g:mkdp_browserfunc = 'OpenMarkdownPreview'
