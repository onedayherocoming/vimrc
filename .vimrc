"设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"显示行号
set nu

"突出显示当前行
set cul

"启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"显示括号匹配
set showmatch

"设置缩进
set tabstop=4
"自动缩进4
set shiftwidth=4
"继承前一行的缩进方式
set autoindent
"用空格替代tab
set expandtab
"设置c模式下的自动缩进
"开启文件类型探测缩进模式
filetype indent on
"设置粘贴模式
"set paste

"显示状态栏
set laststatus=2
set ruler

"打开文件类型检测
filetype plugin indent on

"解决无法删除的问题
"set backspace=indent,eol,start
set nocompatible
set backspace=2
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"gruxbox 配色
Plug 'morhetz/gruvbox'

"目录树插件
Plug 'https://github.com/preservim/nerdtree.git'


Plug 'vim-airline/vim-airline'		" 美化底部插件
Plug 'vim-airline/vim-airline-themes'	" 主题插件

"括号匹配线
Plug 'https://github.com/Yggdroot/indentLine.git'

Plug 'https://github.com/ycm-core/YouCompleteMe.git'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

"gruxbox 配色配置
set bg=dark                     "设置背景为黑色
colorscheme gruvbox             "设置主题为 gruvbox

"目录树NREDTree快捷键
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>


" airline
let g:airline#extensions#tabline#enabled = 1                " 设置开启tab样式
let g:airline#extensions#tabline#formatter = 'jsformatter'  " 设置默认tab栏样式

" airline-theme
"let g:airline_theme='solarized'
let g:airline_theme='angr'              " 好像还是比较喜欢这个颜色


