" Share clipboard with OS
set clipboard=unnamed

" Set n lines to the cursor - when moving vertically using j/k
set scrolloff=7
set sidescrolloff=15
if has('mouse')
  set mouse=a
endif

" show location
set cursorcolumn
set cursorline

" 设置 Backspace 键模式
set bs=eol,start,indent

" search
set hlsearch                    " highlight searches
set incsearch                   " do incremental searching, search as you type
set ignorecase                  " ignore case when searching
set smartcase                   " no ignorecase if Uppercase char present
set wildmenu                    " command line auto-complete
set wildmode=longest:list,full

" tab
set expandtab                   " expand tabs to spaces
set smarttab
set shiftround

" indent
set autoindent smartindent cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

" fold
set foldenable
set foldmethod=marker
set foldlevel=99
" No fold when vim start up
set nofoldenable

" Show whitespace
" set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽,space:·
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
