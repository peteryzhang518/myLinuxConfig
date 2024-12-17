set shell=/bin/bash
set expandtab
set tabstop=4
set shiftwidth=4

set number
set relativenumber
"some row on the buttow
set scrolloff=10
"backspcae can not use. can use :help bs to watch document
set backspace=
"auto change line
set textwidth=80
set wrapmargin=2
set fo+=t
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
"search smart
set smartcase
set is

set hlsearch
"syntax on
syntax enable

"添加ctag的配置
"set tags+=~/.vim/linux-4.6.4-tags
"nmap <silent> <F4> :tselect <c-r><c-w><cr>
set updatetime=1000
let Tlist_Ctags_Cmd="/usr/bin/ctags"
set tags=./.tags;,.tags
"set autochdir

let Tlist_Auto_Open=1
let Tlist_Show_Menu=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=0
"let Tlist_WinWidth=35
let Tlist_WinWidth=45
"let Tlist_GainFocus_On_ToggleOpen=1

"Nerdtree  config
let g:NERDTreeWinPos='right'
let g:NERDTreeWinSize=30

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

"添加fzf的快捷键映射
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>u :Buffers<CR>
nnoremap <Leader>r :Rg <C-R><C-W><CR>
nnoremap <Leader>o :only \| set nonumber norelativenumber noshowmode noshowcmd noruler laststatus=0 signcolumn=no<CR>
nnoremap <Leader>O :set number relativenumber showmode showcmd ruler laststatus=2 signcolumn=yes<CR>

"添加调出一个终端的映射
nnoremap <Leader>tt :terminal <CR>
tnoremap <Esc> <C-\><C-N>

" vim-fugitive
command! GlogFullScreen :botright new | Glog

call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/yegappan/taglist'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-fugitive'
call plug#end()

"set bg=dark
set background=dark
"colorscheme  molokai
colorscheme solarized
"colorscheme solarized8
let g:solarized_termcolors=256

" 开启 256 色支持 t_Co即terminal Color
"set t_Co=256
" 开启真彩色支持（Neovim 或 Vim 8 以上版本支持）
"if has("termguicolors")
"  set termguicolors
"endif
"颜色信息的书写方式 hi name cterm=* ctermfg=* ctermbg=* gui=* guifg=* guibg=* 
hi User1        ctermfg=234 ctermbg=191
hi User2        ctermfg=234 ctermbg=156
hi User3        ctermfg=234 ctermbg=121

"状态栏
set laststatus=2
"状态栏显示当前文件颜色为user1
"%num*为用第几组颜色        \ 为空格        %%为字符百分号      %=为向左对齐
"%*为向右对齐
set statusline=%1*\ %{getcwd()}\ %*
set statusline+=%2*\ %f\ %*
set statusline+=%=%3*\ %P\ 
set statusline+=%2*\ \[%l\,%c\]\ 
set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 
