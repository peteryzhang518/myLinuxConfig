set expandtab
set tabstop=4
set shiftwidth=4

set number
set relativenumber
"some row on the buttow
set scrolloff=10
"backspcae can not use. can use :help bs to watch document
set backspace=



syntax on
set hlsearch
colorscheme  molokai


"t_Co即terminal Color
set t_Co=256 
"颜色信息的书写方式 hi name cterm=* ctermfg=* ctermbg=* gui=* guifg=* guibg=* 
hi User1        ctermfg=234 ctermbg=191
hi User2        ctermfg=234 ctermbg=156
hi User3        ctermfg=234 ctermbg=121
"状态栏
set laststatus=2
"状态栏显示当前文件颜色为user1
"%num*为用第几组颜色        \ 为空格        %%为字符百分号      %=为向左对齐
set statusline=%1*\ %{getcwd()}\ %*
set statusline+=%2*\ %f\ %*
set statusline+=%=%3*\ %P\ %*
set statusline+=%=%2*\ \[%l\,%c\]\ %*
set statusline+=%=%1*\ \ \ \ \ %L\ \ \ \ \ %*
