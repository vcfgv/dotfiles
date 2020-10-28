set shell=/bin/zsh
" Cancel compatible to avoid some bugs and limitations.
set nocompatible

if has('mac')
  let $VIM_CONFIG=$HOME.'/.config/nvim'
  if filereadable($HOME.'/miniconda3/bin/python3')
    let $PATH=$HOME.'/miniconda3/bin/:'.$PATH
    let g:python3_host_prog=$HOME.'/miniconda3/bin/python3'
  else
    let g:python3_host_prog='/usr/bin/python3'
  endif
endif

" Set data/cache directory as $XDG_CACHE_HOME
let $DATA_PATH =
      \ expand(($XDG_CACHE_HOME ? $XDG_CACHE_HOME : '$HOME/.cache'))

" Encoding
if has('multi_byte')
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=utf-8,gbk,gb2312,gb18030
endif

for fpath in split(globpath(expand($VIM_CONFIG.'/configs'), '*.vim'), '\n')
  exe 'source' fpath
endfor

:set tags+=tags
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = $HOME.'/.gtags.conf'

" Remenber last location
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" True color
if has('termguicolors')
  if empty($COLORTERM) || $COLORTERM =~# 'truecolor\|24bit'
    set termguicolors
  endif
endif

" Syntax
if has('syntax')
  syntax on
  set background=dark
  colorscheme edge
endif

" history : how many lines of history VIM has to remember
set history=2000

" filetype
filetype on
" Enable filetype plugins
filetype plugin on
filetype indent on

" base
set autoread                    " reload files when changed on disk, i.e. via `git checkout`
set shortmess=atI

set magic                       " For regular expressions turn magic on
set title                       " change the terminal's title
set nobackup                    " do not keep a backup file

set novisualbell                " turn off visual bell
set noerrorbells                " don't beep
set visualbell t_vb=            " turn off error beep/flash
set t_vb=
set tm=500

" show
set ruler                       " show the current row and column
set number relativenumber
set wrap
set linebreak
set showcmd                     " display incomplete commands
set showmode                    " display current modes
set showmatch                   " jump to matches when entering parentheses
set matchpairs+=<:>     " Add HTML brackets to pair matching
set matchtime=2                 " tenths of a second to show the matching parenthesis
" 延迟绘制（提升性能）
set lazyredraw
" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m
" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B
" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac

" 文件搜索和补全时忽略下面扩展名
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
