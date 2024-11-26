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
set bg=dark
"set background=dark
colorscheme solarized8
"colorscheme  molokai
let g:solarized_termcolors=256

" 开启 256 色支持 t_Co即terminal Color
"set t_Co=256
" 开启真彩色支持（Neovim 或 Vim 8 以上版本支持）
if has("termguicolors")
  set termguicolors
endif
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
let Tlist_WinWidth=50
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

"hi link EasyMotionTarget        WarningMsg
"hi link EasyMotionShade         WarningMsg
"hi link EasyMotionTarget2First  MatchParen
"hi link EasyMotionTarget2Second MatchParen
"hi link EasyMotionMoveHL Search
" Turn on case sensitive feature
" let g:EasyMotion_smartcase = 1
" " keep cursor colum when JK motion
" let g:EasyMotion_startofline = 0 
" let g:EasyMotion_grouping = 1
" let g:EasyMotion_keys='l,rcpgyf;zqvjwkmasonetuh'
" " default 'asdghklqwertyuiopzxcvbnmfj;'
" let g:EasyMotion_do_shade = 0
" let g:EasyMotion_use_upper = 1
" let g:EasyMotion_enter_jump_first = 1
" map  /         <Plug>(easymotion-sn)
" omap /         <Plug>(easymotion-tn)
" map  n         <Plug>(easymotion-next)
" map  N         <Plug>(easymotion-prev)
" map  f         <Plug>(easymotion-bd-f)
" map  t         <Plug>(easymotion-bd-t)
" nmap s         <Plug>(easymotion-s2)
" xmap s         <Plug>(easymotion-s2)
" omap z         <Plug>(easymotion-s2)
" map  <Leader>h <Plug>(easymotion-lineforward)
" map  <Leader>j <Plug>(easymotion-j)
" map  <Leader>k <Plug>(easymotion-k)
" map  <Leader>l <Plug>(easymotion-linebackward)

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
"let g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']
let g:fzf_vim                     = {}
let g:fzf_vim.preview_window      = [ 'hidden,right,50%', 'ctrl-\' ]
let g:fzf_layout = {'window':{'width':1, 'height':1, 'relative':v:false, 'yoffset':1.0}}

let $FZF_DEFAULT_OPTS='
    \ --bind ctrl-d:half-page-down
    \ --bind ctrl-u:half-page-up
    \ '
"   \--bind ctrl-d:up,ctrl-h:down'
"   --bind ctrl-s:toggle-sort
"   \--bind ctrl-e:preview-down
"   \--bind ctrl-y:preview-up
"-down/up/left/right
"let g:fzf_layout = {'down':'40%'}

"添加fzf的快捷键映射
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>u :Buffers<CR>
nnoremap <Leader>r :Rg <C-R><C-W><CR>
"添加调出一个终端的映射
nnoremap <Leader>tt :bo ter ++rows=10<CR>

nnoremap <Leader>o :only \| set nonumber norelativenumber noshowmode noshowcmd noruler laststatus=0 signcolumn=no<CR>
nnoremap <Leader>O :set number relativenumber showmode showcmd ruler laststatus=2 signcolumn=yes<CR>

":autocmd VimEnter * :Files<CR>
"autocmd BufEnter * call fzf#vim#files() 
"autocmd BufWinEnter	* call fzf#vim#files() 
"'command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(expand("<cword>")), 1, s:p(<bang>0), <bang>0)' ,

call plug#begin()
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/lifepillar/vim-solarized8'
Plug 'https://github.com/yegappan/taglist'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-fugitive'
call plug#end()

" Grep配置
"let Grep_Default_Filelist = '*.h *.c *.cpp *.cc *.s *.S *.mk'
"let Grep_Default_Options = '-w'

" cscope配置
"set cscopeverbose   " 提示已加载数据库
"set cscopequickfix=s-,d-,i-,t-,e-
",g-  " 查找输出到quickfix中
"set cscopetag       " 同时查找cscope数据库和tags文件, 下述两个命令等同
"set csto=0          " cscope数据被优先查找，假如cscope没有返回匹配项，然后才会查找tag文件
"set cspc=0          " 一个文件的路径的多少部分被显示。默认值是0，所以整个路径都会被显示。值为1的话，那么就只会显示文件名，不带路径.

"if has("cscope")
"    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"   set cspc=3
"   add any database in current dir
"    if filereadable("cscope.out")
"        cs add cscope.out
"    else search cscope.out elsewhere
"    else
"       let cscope_file=findfile("cscope.out", ".;")
"       let cscope_pre=matchstr(cscope_file, ".*/")
"       if !empty(cscope_file) && filereadable(cscope_file)
"           exe "cs add" cscope_file cscope_pre
"       endif
"     endif
"endif
"
" 打开过的历史文件[3]
"let MRU_File = '/home/zhangyi/.vim/_vim_mru_files'
"let MRU_Max_Entries = 100000
"let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
"
"let MRU_Include_Files = '\.c$\|\.h$\|\.cpp$\|\.java$\|\.mk$\|\.dtsi$\|\.txt$\|\.xml$\|\.prop$\|\.diff$\|\.inf$\|\.dts$'
"let MRU_Include_Files += '\.patch$\|\.dec$\|\.sh$\|\.html$\|\.cfg$\|\.bak$\|\.rej$\|\.kl$\|\.dot$\|\.uml$\|\.rc$'
"let MRU_Include_Files += '\.map$'
"let MRU_Include_Files += '\.vimrc$'
"
"let MRU_Window_Height = 15
"let MRU_Use_Current_Window = 0   " 0 -- 将结果显示到quickfix上; 1 -- 将结果显示到新窗口上.
"let MRU_Auto_Close = 1           " 0 -- 选择打开一个文件后，MRC依然保存打开; 1 -- 选择打开一个文件后，MRC自动关闭
"let MRU_Add_Menu = 1
"let MRU_Max_Menu_Entries = 15
"let MRU_Max_Submenu_Entries = 15
"let MRU_Filename_Format={'formatter':'v:val', 'parser':'.*'}
" map <silent> <leader> :MRU<CR>
" nnoremap <silent> ll :MRU<cr>
"
" 参考资料
" [1] Vim实用技巧. 人民邮电出版社.
" [2]vim折叠设置(http://www.cnblogs.com/welkinwalker/archive/2011/05/30/2063587.html)
" [3]vim可以查看最近编辑过的文件吗(https://zhidao.baidu.com/question/488525856.html)


" touchFish.vim
let g:statuLineState = 0
let g:fishTxtLineNum = 0

function! GetData(arg1)
    return g:data[a:arg1]
endfunction

function! SaveFish()
    let g:data = readfile('/home/ts/fish.txt')
"    echom GetData(g:fishTxtLineNum)
endfunction
command! PZSaveFish call SaveFish()

function! NextFish()
"    echom g:statuLineState
    if g:statuLineState == 1
        if g:fishTxtLineNum >= 0
            let g:fishTxtLineNum = g:fishTxtLineNum + 1
        endif
        set statusline=%1*\ %{getcwd()}\ %*
        set statusline+=%2*\ %f\ %*
        set statusline+=%{g:data[g:fishTxtLineNum]}
        set statusline+=%=%3*\ %P\ 
        set statusline+=%2*\ \[%l\,%c\]\ 
        set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 
    endif
"    echom g:fishTxtLineNum 
endfunction
command! PZNextFish call NextFish()

function! LastFish()
    if g:statuLineState == 1
        if g:fishTxtLineNum > 0
            let g:fishTxtLineNum = g:fishTxtLineNum - 1
        endif
        set statusline=%1*\ %{getcwd()}\ %*
        set statusline+=%2*\ %f\ %*
        set statusline+=%{g:data[g:fishTxtLineNum]}
        set statusline+=%=%3*\ %P\ 
        set statusline+=%2*\ \[%l\,%c\]\ 
        set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 
    endif
"    echom g:fishTxtLineNum 
endfunction
command! PZLastFish call LastFish()

function! ChangeFish()
    if g:statuLineState == 0
        let g:statuLineState = 1
"        echom g:statuLineState
"        echom g:data[g:fishTxtLineNum]
"        set statusline=%!GetData(g:fishTxtLineNum)
        set statusline=%1*\ %{getcwd()}\ %*
        set statusline+=%2*\ %f\ %*
        set statusline+=%{g:data[g:fishTxtLineNum]}
        set statusline+=%=%3*\ %P\ 
        set statusline+=%2*\ \[%l\,%c\]\ 
        set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 
        nnoremap j :PZNextFish<CR>
        nnoremap k :PZLastFish<CR>
    else
        let g:statuLineState = 0
"        echom g:statuLineState
        set statusline=%1*\ %{getcwd()}\ %*
        set statusline+=%2*\ %f\ %*
        set statusline+=%=%3*\ %P\ 
        set statusline+=%2*\ \[%l\,%c\]\ 
        set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 
        unmap j
        unmap k
    endif
endfunction
command! PZChangeFish call ChangeFish()
nnoremap <Leader>c :PZChangeFish<CR>
