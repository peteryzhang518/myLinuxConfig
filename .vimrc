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
"%*为向右对齐
set statusline=%1*\ %{getcwd()}\ %*
set statusline+=%2*\ %f\ %*
set statusline+=%=%3*\ %P\ 
set statusline+=%2*\ \[%l\,%c\]\ 
set statusline+=%1*\ \ \ \ \ %L\ \ \ \ \ 

nnoremap fvf, ff
nnoremap ff :Files<CR>
nnoremap fvt, ft
nnoremap fb :Buffers<CR>

call plug#begin()
" Plugin outside ~/.vim/plugged with post-update hook
"Plug '/usr/bin/fzf'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" On-demand loading
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'

"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
