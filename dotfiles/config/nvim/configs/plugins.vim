call plug#begin('~/.vim/plugged')

" tpope/vim-sensible {{{ "
if !has('nvim')
    Plug 'tpope/vim-sensible' " no need for nvim
endif
" }}} tpope/vim-sensible "

" StartUpTime {{{ "
" Plug 'tweekmonster/startuptime.vim'
" }}} StartUpTime "

" BufOnly {{{ "
" Delete all the buffers except the current buffer.
" Plug 'vim-scripts/BufOnly.vim'
Plug 'schickling/vim-bufonly'
" }}} BufOnly "

" incsearch {{{ "
" incrementally highlights ALL pattern matches unlike default 'incsearch'.
Plug 'haya14busa/incsearch.vim'
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" doesn't move the cursor
map g/ <Plug>(incsearch-stay)
" This plugin highlights patterns and ranges for Ex commands in Command-line mode.
Plug 'markonm/traces.vim'
" }}} incsearch "

" repeat {{{ "
Plug 'tpope/vim-repeat'
" }}} repeat "

" Auto toggle paste mode when paste {{{ "
Plug 'ConradIrwin/vim-bracketed-paste'
" }}} Auto toggle paste mode when paste "

" Select in visual {{{ "
Plug 'terryma/vim-expand-region'
map + <Plug>(expand_region_expand)
map _ <Plug>(expand_region_shrink)
" vmap J <Plug>(expand_region_expand)
" vmap K <Plug>(expand_region_shrink)
" }}} Select in visual "

" Cursor {{{ "
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

Plug 'itchyny/vim-cursorword'
" }}} Cursor "

" numbertoggle {{{ "
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" }}} numbertoggle "

" Quick Motion Search {{{ "
" You can specify any mapping for Sneak (see :help sneak). 
" By the way: cl is equivalent to s, and cc is equivalent to S.
Plug 'justinmk/vim-sneak'
" Replacing f & t
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" Plug 'andymass/vim-matchup'
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_prompt = 'Jump to → '
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_keys = 'fjdkswbeoavn'
" <Leader>f{char} to move to {char}
map  <Leader>S <Plug>(easymotion-bd-f)
nmap <Leader>S <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-s2)
nmap <Leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)
" }}} Quick Motion Search "

" vim-move {{{ "
Plug 'matze/vim-move'
let g:move_map_keys = 0
vmap <c-a-j> <Plug>MoveBlockDown
vmap <c-a-k> <Plug>MoveBlockUp
nmap <c-a-j> <Plug>MoveLineDown
nmap <c-a-k> <Plug>MoveLineUp
" }}} vim-move "

:" *-Improved {{{ "
Plug 'haya14busa/vim-asterisk'
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
" }}} *-Improved "

" Start Page {{{ "
" Plug 'mhinz/vim-startify', {'on': 'Startify'}
nmap <c-t> :Startify<CR>
let g:startify_lists = [
 \ { 'type': 'files',     'header': ['   MRU']            },
 \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
 \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
 \ { 'type': 'commands',  'header': ['   Commands']       },
 \ ]
let g:startify_bookmarks = [
           \]
let g:startify_files_number = 20
let g:startify_session_autoload = 1
let g:startify_skiplist = [
      \ '^/tmp',
      \ ]
let g:startify_custom_header = [
      \ '                                       ',
      \ '   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠞⠉⢉⣭⣿⣿⠿⣳⣤⠴⠖⠛⣛⣿⣿⡷⠖⣶⣤⡀⠀⠀⠀   ',
      \ '    ⠀⠀⠀⠀⠀⠀⠀⣼⠁⢀⣶⢻⡟⠿⠋⣴⠿⢻⣧⡴⠟⠋⠿⠛⠠⠾⢛⣵⣿⠀⠀⠀⠀  ',
      \ '    ⣼⣿⡿⢶⣄⠀⢀⡇⢀⡿⠁⠈⠀⠀⣀⣉⣀⠘⣿⠀⠀⣀⣀⠀⠀⠀⠛⡹⠋⠀⠀⠀⠀  ',
      \ '    ⣭⣤⡈⢑⣼⣻⣿⣧⡌⠁⠀⢀⣴⠟⠋⠉⠉⠛⣿⣴⠟⠋⠙⠻⣦⡰⣞⠁⢀⣤⣦⣤⠀  ',
      \ '    ⠀⠀⣰⢫⣾⠋⣽⠟⠑⠛⢠⡟⠁⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠘⣷⡈⠻⣍⠤⢤⣌⣀  ',
      \ '    ⢀⡞⣡⡌⠁⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠸⣇⠀⢾⣷⢤⣬⣉  ',
      \ '    ⡞⣼⣿⣤⣄⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠸⣿⣇⠈⠻  ',
      \ '    ⢰⣿⡿⢹⠃⠀⣠⠤⠶⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⣿⠛⡄⠀  ',
      \ '    ⠈⠉⠁⠀⠀⠀⡟⡀⠀⠈⡗⠲⠶⠦⢤⣤⣤⣄⣀⣀⣸⣧⣤⣤⠤⠤⣿⣀⡀⠉⣼⡇⠀  ',
      \ '    ⣿⣴⣴⡆⠀⠀⠻⣄⠀⠀⠡⠀⠀⠀⠈⠛⠋⠀⠀⠀⡈⠀⠻⠟⠀⢀⠋⠉⠙⢷⡿⡇⠀  ',
      \ '    ⣻⡿⠏⠁⠀⠀⢠⡟⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⢀⠈⠀⢀⣀⡾⣴⠃⠀  ',
      \ '    ⢿⠛⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠈⠢⠄⣀⠠⠼⣁⠀⡱⠤⠤⠐⠁⠀⠀⣸⠋⢻⡟⠀⠀  ',
      \ '    ⠈⢧⣀⣤⣶⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠛⠻⣄⠀⠀⠀⢀⣠⡾⠋⢀⡞⠀⠀⠀  ',
      \ '    ⠀⠀⠻⣿⣿⡇⠀⠈⠓⢦⣤⣤⣤⡤⠞⠉⠀⠀⠀⠀⠈⠛⠒⠚⢩⡅⣠⡴⠋⠀⠀⠀⠀  ',
      \ '    ⠀⠀⠀⠈⠻⢧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⠿⠋⠀⠀⠀⠀⠀⠀  ',
      \ '    ⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣄⣀⡀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀  ',
      \ '                                       ',
      \ ]
let g:startify_custom_footer = [
      \ '+-------------------------------------------+',
      \ '|                                           |',
      \ '|           Have fun with VIM               |',
      \ '|                                           |',
      \ '+-------------------------------------------+',
      \ ]
Plug 'glepnir/dashboard-nvim'
let g:dashboard_default_executive ='clap'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
" }}} Start Page "

" Rainbow parentheses {{{
Plug 'luochen1990/rainbow' ,{'for': ['h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'go', 'html', 'css', 'vim', 'sh']}
let g:rainbow_active = 1
let g:rainbow_conf = {
      \'guifgs':   ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \'operators': '_,_',
      \'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \'separately': {
      \'*': {},
      \'tex': {
      \'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \},
      \'lisp': {
      \'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \},
      \'vim': {
      \'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \},
      \'html': {
      \'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \},
      \'css': 0,
      \}
      \}
" Rainbow parentheses }}}

" commenter {{{ "
Plug 'tyru/caw.vim' ", {'on': '<Plug>(caw:zeropos:toggle)'}
nmap <leader>/ <Plug>(caw:zeropos:toggle)
vmap <leader>/ <Plug>(caw:zeropos:toggle)
" }}} commenter "

" Undo {{{ "
Plug 'simnalamburt/vim-mundo',{'on': 'MundoToggle'}
" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo
nmap <leader>m :MundoToggle<CR>
" }}} Undo "

" WhichKey {{{ "
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
" By default timeoutlen is 1000 ms
set timeoutlen=5000
nnoremap <silent> <leader>      :<c-u>WhichKey ' '<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
" }}} WhichKey "

" auto-pair {{{ "
Plug 'tmsvg/pear-tree'
" Default rules for matching:
let g:pear_tree_pairs = {
            \ '(': {'closer': ')'},
            \ '[': {'closer': ']'},
            \ '{': {'closer': '}'},
            \ "'": {'closer': "'"},
            \ '"': {'closer': '"'}
            \ }
" See pear-tree/after/ftplugin/ for filetype-specific matching rules
" Pear Tree is enabled for all filetypes by default:
let g:pear_tree_ft_disabled = []
" Pair expansion is dot-repeatable by default:
let g:pear_tree_repeatable_expand = 1
" Smart pairs are disabled by default:
let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 0
let g:pear_tree_smart_backspace = 0
" If enabled, smart pair functions timeout after 60ms:
let g:pear_tree_timeout = 60
" Automatically map <BS>, <CR>, and <Esc>
let g:pear_tree_map_special_keys = 1
" Default mappings:
imap <BS> <Plug>(PearTreeBackspace)
imap <CR> <Plug>(PearTreeExpand)
" imap <Esc> <Plug>(PearTreeFinishExpansion)
" Pear Tree also makes <Plug> mappings for each opening and closing string.
"     :help <Plug>(PearTreeOpener)
"     :help <Plug>(PearTreeCloser)
" Not mapped by default:
" <Plug>(PearTreeSpace)
" <Plug>(PearTreeJump)
" <Plug>(PearTreeExpandOne)
" <Plug>(PearTreeJNR)
Plug 'tpope/vim-surround'

" sandwich.vim is a set of operator and textobject plugins to add/delete/replace surroundings of a sandwiched textobject, like (foo).
" Plug 'machakann/vim-sandwich'
" let g:sandwich_no_default_key_mappings = 1
" let g:operator_sandwich_no_default_key_mappings = 1
" let g:textobj_sandwich_no_default_key_mappings = 1
" nmap <silent> sa <Plug>(operator-sandwich-add)
" xmap <silent> sa <Plug>(operator-sandwich-add)
" omap <silent> sa <Plug>(operator-sandwich-g@)
" nmap <silent> sd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
" xmap <silent> sd <Plug>(operator-sandwich-delete)
" nmap <silent> sr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
" xmap <silent> sr <Plug>(operator-sandwich-replace)
" nmap <silent> sdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
" nmap <silent> srb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
" omap ib <Plug>(textobj-sandwich-auto-i)
" xmap ib <Plug>(textobj-sandwich-auto-i)
" omap ab <Plug>(textobj-sandwich-auto-a)
" xmap ab <Plug>(textobj-sandwich-auto-a)
" omap is <Plug>(textobj-sandwich-query-i)
" xmap is <Plug>(textobj-sandwich-query-i)
" omap as <Plug>(textobj-sandwich-query-a)
" xmap as <Plug>(textobj-sandwich-query-a)
" }}} auto-pair "

" cheat.sh {{{ "
Plug 'dbeniamine/cheat.sh-vim'
" Vim command used to open new buffer
let g:CheatSheetReaderCmd='new"'
" Cheat sheet file type
let g:CheatSheetFt='markdown'
" Program used to retrieve cheat sheet with its arguments
let g:CheatSheetUrlGetter='curl --silent'
" Flag to add cookie file to the query
let g:CheatSheetUrlGetterIdFlag='-b'
" cheat sheet base url
let g:CheatSheetBaseUrl='https://cht.sh'
" cheat sheet settings do not include style settings neiter comments, 
" see other options below
let g:CheatSheetUrlSettings='q'
" cheat sheet pager
let g:CheatPager='less -R'
" pygmentize theme used for pager output, see :CheatPager :styles-demo
let g:CheatSheetPagerStyle="rrt"
" Show comments in answers by default
" (setting this to 0 means giving ?Q to the server)
let g:CheatSheetShowCommentsByDefault=1
" cheat sheet buffer name
let g:CheatSheetBufferName="_cheat"
" Default selection in normal mode (line for whole line, word for word under cursor)
let g:CheatSheetDefaultSelection="line"
" Default query mode
" 0 => buffer
" 1 => replace (do not use or you might loose some lines of code)
" 2 => pager
" 3 => paste after query
" 4 => paste before query
let g:CheatSheetDefaultMode=0
" Path to cheat sheet cookie
let g:CheatSheetIdPath=expand('~/.cht.sh/id')
" Make plugin silent by  setting bellow variable to 1
let g:CheatSheetSilent=0
" }}} cheat.sh "

" Git {{{ "
" Git wrapper, show git blame, git branch, etc.
Plug 'tpope/vim-fugitive'
nmap [q :cprev<CR>
nmap ]q :cnext<CR>
nmap [Q :cfirst<CR>
nmap ]Q :clast<CR>
nmap <Leader>gd :Gdiffsplit<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gB :Gbrowse<CR>
nmap <Leader>gS :Gstatus<CR>
nmap <Leader>gp :git push<CR>
nmap <Leader>gl :GitLogAll<CR>
nmap <Leader>gr :GitBranch<CR>

Plug 'rhysd/git-messenger.vim'
nmap <Leader>gm <Plug>(git-messenger)
hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi gitmessengerHeader term=None guifg=#88b8f6 ctermfg=111
hi gitmessengerHash term=None guifg=#f0eaaa ctermfg=229
hi gitmessengerHistory term=None guifg=#fd8489 ctermfg=210
function! s:setup_git_messenger_popup() abort
    nmap <buffer><C-o> o
    nmap <buffer><C-i> O
endfunction
autocmd FileType gitmessengerpopup call <SID>s:setup_git_messenger_popup()

" show vcs symbol on the left side
Plug 'mhinz/vim-signify'
let g:signify_vcs_list               = ['git', 'svn']
let vcs_signs_delete_up              = [ '⤤', '◥', '⥔', '⬈', '⇗', '↗', '⎺']
let vcs_signs_delete_down            = [ '⤥', '◢', '⥕', '⬊', '⇘', '↘', '⎽']
let g:signify_sign_add               = '+'
let g:signify_sign_change            = '~'
let g:signify_sign_changedelete      = g:signify_sign_change
let g:signify_sign_delete            = vcs_signs_delete_down[0]
let g:signify_sign_delete_first_line = vcs_signs_delete_up[0]

" Better GitDiff
Plug 'chrisbra/vim-diff-enhanced'
let g:signify_vcs_cmds = {
      \ 'git': 'git diff --no-color --diff-algorithm=histogram --no-ext-diff -U0 -- %f',
      \}
" }}} Git "

" fzf {{{ "
Plug '/usr/local/opt/fzf'
	Plug 'junegunn/fzf.vim' ", {'on': ['Colors', 'Ag', 'Buffers', 'Files']}
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" Mapping selecting mappings
nmap <c-l>m <plug>(fzf-maps-n)
xmap <c-l>m <plug>(fzf-maps-x)
omap <c-l>m <plug>(fzf-maps-o)
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
let g:fzf_history_dir = '~/.local/share/fzf-history'
" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
      \ call fzf#vim#grep(
      \   'git grep --line-number '.shellescape(<q-args>), 0,
      \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
      \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], [preview window], toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root(

function! s:fzf_icons()
    let l:fzf_files_options = '
                \ --no-border
                \ --multi
                \ --preview-window right
                \ --preview "$FZF_FILE_HIGHLIGHTER {$FZF_PATH_LOC} 2>/dev/null | head -'.&lines.'"
                \ '

    call fzf#run(fzf#wrap('fzf_icons', {
                \ 'source':  expand('$FZF_CTRL_T_COMMAND'),
                \ 'window':  'call FloatingFZF()',
                \ 'options': l:fzf_files_options,
                \ 'down':    '50%',
                \ }))
endfunction
command! FilesWithIcon :call s:fzf_icons()

" nnoremap <silent> <C-p> :ProjectFiles<CR>
nnoremap <silent> <C-p> :FilesWithIcon<CR>
nnoremap <silent> <leader>pf :ProjectFiles<CR>
nnoremap <silent> <leader>bl :BLines<CR>
nnoremap <silent> <leader>bf :Buffers<CR>
nnoremap <silent> <Leader>A :Ag<CR>
nnoremap <silent> <Leader>R :Rg<CR>

let g:fzf_action = {
            \ 'alt-v':  'vsplit',
            \ 'alt-t':  'nabnew',
            \ 'alt-x':  'split'
            \ }

if has('nvim')
  function! s:create_float(hl, opts)
    let buf = nvim_create_buf(v:false, v:true)
    let opts = extend({'relative': 'editor', 'style': 'minimal'}, a:opts)
    let win = nvim_open_win(buf, v:true, opts)
    call setwinvar(win, '&winhighlight', 'NormalFloat:'.a:hl)
    call setwinvar(win, '&colorcolumn', '')
    return buf
  endfunction

  function! FloatingFZF()
    " Size and position
    let width = float2nr(&columns * 0.9)
    let height = float2nr(&lines * 0.6)
    let row = float2nr((&lines - height) / 2)
    let col = float2nr((&columns - width) / 2)

    " Border
    " let top = '┌' . repeat('─', width - 2) . '┐'
    " let mid = '│' . repeat(' ', width - 2) . '│'
    " let bot = '└' . repeat('─', width - 2) . '┘'
    " let top = '┏' . repeat('━', width - 2) . '┓'
    " let mid = '┃' . repeat(' ', width - 2) . '┃'
    " let bot = '┗' . repeat('━', width - 2) . '┛'
    let top = '┏━' . repeat('─', width - 4) . '━┓'
    let mid = '│'  . repeat(' ', width - 2) .  '│'
    let bot = '┗━' . repeat('─', width - 4) . '━┛'
    let border = [top] + repeat([mid], height - 2) + [bot]

    " Draw frame
    let s:frame = s:create_float('Comment', {'row': row, 'col': col, 'width': width, 'height': height})
    call nvim_buf_set_lines(s:frame, 0, -1, v:true, border)

    " Draw viewport
    call s:create_float('Normal', {'row': row + 1, 'col': col + 2, 'width': width - 4, 'height': height - 2})
    autocmd BufWipeout <buffer> execute 'bwipeout' s:frame
  endfunction

  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif
" }}} fzf "

" ale {{{ "
" Plug 'dense-analysis/ale'
" let g:ale_linters = {
"      \ 'c': ['gcc', 'cppcheck'],
"      \ 'cpp': ['gcc', 'cppcheck'],
"      \ 'python': ['flake8', 'pylint'],
"      \ 'javascript': ['eslint'],
"      \ }
" 
" let g:ale_fixers = {
"\   'javascript': ['prettier'],
"\   'css': ['prettier'],
"\}
" let g:ale_lint_on_insert_leave = 1
" let g:ale_completion_enabled = 1
" let g:ale_completion_delay = 500
" let g:ale_fix_on_save = 1
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_linters_explicit = 1
" 
" let g:ale_sign_error = '⤫'
" let g:ale_sign_warning = '⚠'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" 
" let g:ale_python_flake8_options = '--ignore=F821,E501'
" let g:ale_python_pylint_options = '--disable=C0111,C0301,R0902,R0903,R0913,R0914,R0915,E1101,E1004'
" 
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++17'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''
" 
" " virtual text, conflicts with coc-git
" let g:ale_virtualtext_cursor = 1
" let g:ale_virtualtext_prefix = ' > '
" hi link ALEError ALEErrorSign
" hi link ALEWarning ALEWarningSign
" 
" nmap <silent> <a-p> <Plug>(ale_previous_wrap)
" nmap <silent> <a-n> <Plug>(ale_next_wrap)
" }}} ale "

" coc {{{ "
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-emoji',
      \ 'coc-json',
      \ 'coc-yaml',
      \ 'coc-highlight',
      \ 'coc-fzf-preview',
      \ 'coc-marketplace'
      \ ]
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
set signcolumn=yes
" Better display for messages
set cmdheight=2
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
let g:coc_status_warning_sign = ' '
let g:coc_status_error_sign = ' '

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <buffer> <silent> <C-s><C-]> :<C-u>call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <buffer> <silent> <C-s>] :<C-u>call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <buffer> <silent> <C-t><C-]> :<C-u>call CocAction('jumpDefinition', 'tabe')<CR>
nmap <buffer> <silent> <C-t>] :<C-u>call CocAction('jumpDefinition', 'tabe')<CR>
nmap <buffer> <silent> <C-w><C-]> :<C-u>call CocAction('jumpDefinition', 'split')<CR>
nmap <buffer> <silent> <C-w>] :<C-u>call CocAction('jumpDefinition', 'split')<CR>

nmap <silent> g<LeftMouse> <LeftMouse><Plug>(coc-definition)
nmap <silent> <C-LeftMouse> <LeftMouse><Plug>(coc-definition)
nmap <silent> <M-LeftMouse> <LeftMouse><Plug>(coc-definition)
nmap <silent> <leader>jd :<C-u>call CocAction('jumpDefinition', 'vsplit')<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap gs <Plug>(coc-git-chunkinfo)
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show commit contains current position
nmap gC <Plug>(coc-git-commit)

" Use K to show documentation in preview window
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
nmap <leader>f  <Plug>(coc-format)
xmap <leader>f  <Plug>(coc-format)

" Use C to open coc config
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
call SetupCommandAbbrs('C', 'CocConfig')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use <s-tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <S-TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader><space>a :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader><space>e :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader><space>c :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader><space>o :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader><space>s :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader><space>j :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader><space>k :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader><space>p :<C-u>CocListResume<CR>
" Yank list
nnoremap <silent> <leader><space>y :<C-u>CocList -A --normal yank<cr>

" coc-snippets extension config
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" let g:coc_snippet_next = '<TAB>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" let g:coc_snippet_prev = '<S-TAB>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" coc-vimlsp extension config
let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]
" }}} coc "

" defx {{{
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Defx git
Plug 'kristijanhusak/defx-git'
let g:defx_git#indicators = {
      \ 'Modified'  : '✹',
      \ 'Staged'    : '✚',
      \ 'Untracked' : '✭',
      \ 'Renamed'   : '➜',
      \ 'Unmerged'  : '═',
      \ 'Ignored'   : '☒',
      \ 'Deleted'   : '✖',
      \ 'Unknown'   : '?'
      \ }
let g:defx_git#column_length = 0
hi def link Defx_filename_directory NERDTreeDirSlash
hi def link Defx_git_Modified Special
hi def link Defx_git_Staged Function
hi def link Defx_git_Renamed Title
hi def link Defx_git_Unmerged Label
hi def link Defx_git_Untracked Tag
hi def link Defx_git_Ignored Comment

" Defx icons
Plug 'kristijanhusak/defx-icons'
" disbale syntax highlighting to prevent performence issue
let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length           = 2
let g:defx_icons_directory_icon          = ''
let g:defx_icons_mark_icon               = '*'
let g:defx_icons_copy_icon               = ''
let g:defx_icons_move_icon               = ''
let g:defx_icons_parent_icon             = ''
let g:defx_icons_default_icon            = ''
let g:defx_icons_directory_symlink_icon  = ''
" Options below are applicable only when using "tree" feature
let g:defx_icons_root_opened_tree_icon   = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

" defx
nmap <silent> <c-\> :Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
" keymap in defx
autocmd filetype defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  setl nospell
  setl signcolumn=no
  setl nonumber
  nnoremap <silent><buffer><expr> l
        \ defx#is_directory() ?
        \ defx#do_action('open_or_close_tree') :
        \ defx#do_action('open')
  nmap <silent><buffer><expr> <2-leftmouse>
        \ defx#is_directory() ?
        \ defx#do_action('open_or_close_tree') :
        \ defx#do_action('drop',)
  " Defx drop
  nnoremap <silent><buffer><expr> s defx#do_action('drop', 'split')
  nnoremap <silent><buffer><expr> v defx#do_action('drop', 'vsplit')
  nnoremap <silent><buffer><expr> t defx#do_action('drop', 'tabe')

  " Defx open
  nnoremap <silent><buffer><expr> <cr> defx#do_action('open')
  nnoremap <silent><buffer><expr> O defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> e defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> p defx#do_action('open', 'pedit')

  " Defx new
  nnoremap <silent><buffer><expr> k defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> n defx#do_action('new_file')
  nnoremap <silent><buffer><expr> N defx#do_action('new_multiple_files')

  " Jump
  nnoremap <silent><buffer>  [g :<C-u>call <SID>jump_dirty(-1)<CR>
  nnoremap <silent><buffer>  ]g :<C-u>call <SID>jump_dirty(1)<CR>

  " Change directory
  nnoremap <silent><buffer><expr><nowait> \  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr><nowait> &  defx#do_action('cd', getcwd())
  nnoremap <silent><buffer><expr> <BS>  defx#async_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~     defx#async_action('cd')
  nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
  nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
  nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])

  " Defx's buffer management
  nnoremap <silent><buffer><expr> q defx#do_action('quit')
  nnoremap <silent><buffer><expr> R defx#do_action('redraw')
  nnoremap <silent><buffer><expr> se defx#do_action('save_session')

  " File/dir management
  nnoremap <silent><buffer><expr> c defx#do_action('copy')
  nnoremap <silent><buffer><expr> p defx#do_action('paste')
  nnoremap <silent><buffer><expr> m defx#do_action('move')
  nnoremap <silent><buffer><expr> r defx#do_action('rename')
  nnoremap <silent><buffer><expr> d defx#do_action('remove')
  nnoremap <silent><buffer><expr> D defx#do_action('remove_trash')

  " Selection
  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select')
  nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr><nowait> <Space> defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> S defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> C defx#do_action('toggle_columns', 'indent:mark:filename:type:size:time')

  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> u defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> cd defx#do_action('change_vim_cwd')
  nnoremap <silent><buffer><expr> ~ defx#async_action('cd')

  if exists('$TMUX')
    nnoremap <silent><buffer><expr> gl  defx#async_action('call', '<SID>explorer')
  endif
endfunction
" Defx }}}

" vim-devicons {{{ "
Plug 'ryanoasis/vim-devicons'
" }}} vim-devicons "

" sbdchd/neoformat {{{ "
Plug 'sbdchd/neoformat'
" enable alignment
let g:neoformat_basic_format_align = 1
" enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1
nnoremap <c-a-l> :neoformat<cr>
" }}} sbdchd/neoformat "

" vim-easy-align {{{ "
Plug 'junegunn/vim-easy-align', {'for': ['vim','json','go','html','js','jsx','python','css','less','tmpl','toml','xml','sql','Dockerfile']}
let g:easy_align_delimiters = {
      \ '>': { 'pattern': '>>\|=>\|>' },
      \ '\': { 'pattern': '\\' },
      \ '/': { 'pattern': '//\+\|/\*\|\*/', 'delimiter_align': 'l', 'ignore_groups': ['!comment'] },
      \ ']': {
      \     'pattern':       '\]\zs',
      \     'left_margin':   0,
      \     'right_margin':  1,
      \     'stick_to_left': 0
      \   },
      \ ')': {
      \     'pattern':       ')\zs',
      \     'left_margin':   0,
      \     'right_margin':  1,
      \     'stick_to_left': 0
      \   },
      \ 'f': {
      \     'pattern': ' \(\s\+(\)\@=',
      \     'left_margin': 0,
      \     'right_margin': 0
      \   },
      \ 'd': {
      \     'pattern': ' \ze\s\+\s*[;=]',
      \     'left_margin': 0,
      \     'right_margin': 0
      \   }
      \ }
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Live interactive mode
xmap <leader>ga <Plug>(LiveEasyAlign)
" }}} vim-easy-align "

" comfortable-motion {{{ "
Plug 'psliwka/vim-smoothie'
" }}} comfortable-motion "

" splitjoin {{{ "
Plug 'andrewradev/splitjoin.vim'
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap gss :splitjoinsplit<cr>
nnoremap gsj :splitjoinjoin<cr>
" }}} splitjoin "

" Snippets {{{ "
Plug 'honza/vim-snippets'
" }}} Snippets "

" gutentags {{{ "
Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
" Plug 'skywind3000/vim-preview'
" let g:gutentags_trace = 1
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_exclude_filetypes = [ 'defx', 'denite', 'vista', 'magit', 'log']
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 0

let g:gutentags_modules = []
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
let s:vim_tags = $DATA_PATH . '/tags'
" creat if not exist
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
let g:gutentags_ctags_exclude = ['*.json', '*.js', '*.ts', '*.jsx', '*.css', '*.less', '*.sass', '*.go', '*.dart', 'node_modules', 'dist', 'vendor']
" 禁用 gutentags 自动加载 gtags 数据库
let g:gutentags_auto_add_gtags_cscope = 0
" change focus to quickfix window after search (optional).
" let g:gutentags_plus_switch = 1
" gtags-cscope
"s：查找C代码符号
"g：查找本定义
"c：查找调用本函数的函数
"t：查找本字符串
"e：查找本egrep模式
"f：查找本文件
"i：查找包含本文件的文件
"d：查找本函数调用的函数
" let g:gutentags_plus_nomap = 1
" noremap <silent> <c-\>s :GscopeFind s <C-R><C-W><cr>
" noremap <silent> <c-\>g :GscopeFind g <C-R><C-W><cr>
" noremap <silent> <c-\>c :GscopeFind c <C-R><C-W><cr>
" noremap <silent> <c-\>t :GscopeFind t <C-R><C-W><cr>
" noremap <silent> <c-\>e :GscopeFind e <C-R><C-W><cr>
" noremap <silent> <c-\>f :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" noremap <silent> <c-\>i :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" noremap <silent> <c-\>d :GscopeFind d <C-R><C-W><cr>
" noremap <silent> <c-\>a :GscopeFind a <C-R><C-W><cr>

" " preview
" autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
" autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
" }}} gutentags "

" tagbar {{{ "
Plug 'liuchengxu/vista.vim' , {'on': ['Vista', 'Vista!','Vista!!']}
nmap - :Vista!!<cr>
nnoremap <leader>vf :Vista finder<CR>
" Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
" let g:vista_default_executive = 'ctags'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 35
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_vimwiki_executive = 'markdown'
let g:vista_executive_for = {
  \ 'vimwiki': 'markdown',
  \ 'pandoc': 'markdown',
  \ 'markdown': 'toc',
  \ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#icons = {
     \   "function": "",
     \   "variable": "",
     \  }
" }}} tagbar "

"  vim-clap {{{
Plug 'liuchengxu/vim-clap'
let g:clap_cache_directory = $DATA_PATH . '/clap'
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_enable_icon = 1
let g:clap_layout = { 'relative': 'editor' }
let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= {
      \'text': '➤',
      \'texthl': "ClapCurrentSelectionSign",
      \ "linehl": "ClapCurrentSelection"
      \ }
let g:clap_open_action = {
      \  'ctrl-t': 'tab split',
      \  'ctrl-x': 'split',
      \  'ctrl-v': 'vsplit'
      \  }
let g:clap_provider_alias = {'hist:': 'command_history'}
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '
" A funtion to config highlight of ClapSymbol
" when the background color is opactiy
function! s:ClapSymbolHL() abort
    let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
    if s:current_bgcolor == ''
        hi ClapSymbol guibg=NONE ctermbg=NONE
    endif
endfunction

autocmd User ClapOnEnter call s:ClapSymbolHL()
" }}}

" indentLine {{{ "
Plug 'Yggdroot/indentLine', {'for': ['asm', 'h', 'hpp', 'c', 'cpp', 'python', 'js', 'ts', 'java', 'go', 'html', 'css', 'vim', 'sh', 'tex']}
nmap <leader>il :IndentLinesToggle<CR>
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]
let g:indentLine_bufTypeExclude = ['nofile']
let g:indentLine_bufNameExclude = ["\[defx\]*"]
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setConceal = 0
let g:indentLine_concealcursor = ''
" let g:indentLine_color_gui = '#A4E57E'
" let g:indentLine_color_term = 239
" }}} indentLine "

" floaterm {{{ "
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle', 'FloatermSend']}
let g:floaterm_position='auto'
let g:floaterm_rootmarkers=['.project', '.git', '.hg', '.svn', '.root', '.gitignore']
" Configuration example
nnoremap   <silent>   <F7>    :FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
nnoremap   <silent>   <F10>   :FloatermToggle<CR>

" Set floaterm window's background to black
hi FloatermNF guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan

autocmd User Startified setlocal buflisted
" }}} floaterm "

" Language Packs {{{ "
" loaded after vim-go
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['latex', 'markdown', 'c', 'cpp']

" tabular plugin is used to format tables
Plug 'vim-pandoc/vim-pandoc',             {'for': 'markdown'}
Plug 'vim-pandoc/vim-pandoc-syntax',      {'for': 'markdown'}
Plug 'mityu/vim-applescript',             {'for': 'applescript'}
Plug 'ekalinin/Dockerfile.vim',           { 'for': ['dockerfile', 'docker-compose'] }
" Plug 'andrewstuart/vim-kubernetes',     { 'for': 'yaml'       }
" Plug 'vim-scripts/awk.vim',             { 'for': 'awk'        }
" Plug 'nelstrom/vim-textobj-rubyblock',  { 'for': 'ruby'       }
Plug 'tmux-plugins/vim-tmux',            { 'for': 'tmux'       }
" Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['cpp', 'c'] }
Plug 'bfrg/vim-cpp-modern', { 'for': ['c', 'cpp']}
Plug 'ap/vim-css-color',                { 'for': 'css'        }
" Plug 'moll/vim-node',                   { 'for': 'node'       }
" Plug 'mattn/emmet-vim',                 { 'for': 'html'       }
" Plug 'othree/xml.vim',                  { 'for': 'xml'        }
Plug 'elzr/vim-json',                    { 'for': 'json'       }
Plug 'cespare/vim-toml',                 { 'for': 'toml'       }
Plug 'pangloss/vim-javascript',         { 'for': 'javascript' }
" Plug 'martinda/Jenkinsfile-vim-syntax', { 'for': 'jenkins'    }
" Plug 'udalov/kotlin-vim',               { 'for': 'kotlin'     }
" Plug 'vim-ruby/vim-ruby',               { 'for': 'ruby'       }
" Plug 'tpope/vim-bundler',               { 'for': 'ruby'       }
" Plug 'tpope/vim-rake',                  { 'for': 'ruby'       }
" Plug 'jgdavey/vim-blockle',             { 'for': 'ruby'       }| let g:blockle_mapping = '<leader>B'
" Plug 'stephpy/vim-yaml',                { 'for': 'yaml'       }
Plug 'lervag/vimtex',                    { 'for': 'tex'   }
Plug 'zinit-zsh/zinit-vim-syntax',       { 'for': 'zshrc' }
Plug 'vim-python/python-syntax',         { 'for': 'python'    }
Plug 'dag/vim-fish',                     { 'for': 'fish'  }
Plug 'MTDL9/vim-log-highlighting',       { 'for': 'log'   }
Plug 'tpope/vim-git',                    { 'for': ['gitcommit', 'gitrebase', 'gitconfig']}
" Plug 'chrisbra/csv.vim', {'for': 'csv'}
Plug 'vim-jp/syntax-vim-ex',             { 'for': 'vim'   }
" Plug 'chr4/nginx.vim',                   { 'for': 'nginx'          }

" VimTex
let g:latex_view_general_viewer = "skim"
let g:vimtex_view_method = "skim"
let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_compiler_latexmk = {
    \ 'background' : 1,
    \ 'build_dir' : 'build',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" TOC settings
let g:vimtex_toc_config = {
    \ 'name' : 'TOC',
    \ 'layers' : ['content', 'todo', 'include'],
    \ 'resize' : 1,
    \ 'split_width' : 30,
    \ 'todo_sorted' : 0,
    \ 'show_help' : 1,
    \ 'show_numbers' : 1,
    \ 'mode' : 2,
    \}

Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'   }
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': 'markdown'}
" Whether to conceal urls (seems does not work)
let g:pandoc#syntax#conceal#urls = 1

" Use pandoc-syntax for markdown files, it will disable conceal feature for
" links, use it at your own risk
augroup pandoc_syntax
  au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
" Markdown syntax
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_override_foldtext = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_auto_insert_bullets = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_toc_autofit = 0
let g:vim_markdown_fenced_languages = [
      \ 'c++=cpp',
      \ 'viml=vim',
      \ 'bash=sh',
      \ 'ini=dosini',
      \ 'js=javascript',
      \ 'json=javascript',
      \ 'jsx=javascriptreact',
      \ 'tsx=typescriptreact',
      \ 'docker=Dockerfile',
      \ 'makefile=make',
      \ 'py=python',
      \ 'html',
      \ 'css',
      \ 'scss',
      \ 'sass=scss',
      \ 'ts=typescript',
      \ 'tsx=typescript.tsx',
      \ 'go',
      \ 'rust',
      \ 'rs=rust',
      \ 'php',
      \ 'sh',
      \ 'shell=sh',
      \ 'vim',
      \ 'sql',
      \ 'yaml',
      \ 'toml'
      \ ]
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1
" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
" Let the TOC window autofit so that it doesn't take too much space
let g:vim_markdown_toc_autofit = 1

" Markdown Preview
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': 'markdown' }
" set to 1, nvim will open the preview window after entering the markdown buffer
let g:mkdp_auto_start = 0
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
let g:mkdp_refresh_slow = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
let g:mkdp_command_for_global = 0
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
let g:mkdp_open_to_the_world = 0
" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''
" specify browser to open preview page
let g:mkdp_browser = 'firefox'
" set to 1, echo preview page url in command line when open preview page
let g:mkdp_echo_preview_url = 1
" a custom vim function name to open preview page
" this function will receive url as param
let g:mkdp_browserfunc = ''
" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''
" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''
" use a custom port to start server or random for empty
let g:mkdp_port = ''
" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" mappings
nmap <M-m> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'}
let g:vmt_auto_update_on_save = 0
let g:vmt_cycle_list_item_markers = 1
" Trim unnecessary TOC
function RToc()
    exe "/-toc .* -->"
    let lstart=line('.')
    exe "/-toc -->"
    let lnum=line('.')
    execute lstart.",".lnum."g/           /d"
endfunction

" Prettier
" coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Prettier range format only support languageId including:
" javascript, javascriptreact, typescript, typescriptreact, json and graphql.

" Plug 'prettier/vim-prettier', {
"  \ 'do': 'npm install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Max line length that prettier will wrap on: a number or 'auto' (use
" textwidth).
" default: 'auto'
let g:prettier#config#print_width = 'auto'

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 'auto'

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'auto'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty string
" (let prettier choose).
" default: ''
let g:prettier#config#parser = 'babylon'

" cli-override|file-override|prefer-file
" default: 'file-override'
let g:prettier#config#config_precedence = 'file-override'

" always|never|preserve
" default: 'preserve'
let g:prettier#config#prose_wrap = 'preserve'

" css|strict|ignore
" default: 'css'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" false|true
" default: 'false'
let g:prettier#config#require_pragma = 'false'

" Define the flavor of line endings
" lf|crlf|cr|all
" defaut: 'lf'
let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line', 'lf')

Plug '907th/vim-auto-save', {'for': 'markdown'}
let g:auto_save = 0
augroup ft_markdown
  au!
  au FileType markdown let b:auto_save = 1
augroup END
let g:auto_save_events = ["InsertLeave", "TextChanged"]
" }}} Language Packs "

" limelight & Goyo {{{ "
Plug 'junegunn/limelight.vim', {'on': 'Limelight'}
Plug 'junegunn/goyo.vim', {'on': 'Goyo','for': 'md'} | nnoremap <Leader>G :Goyo<CR>
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_paragraph_span = 1
let g:limelight_priority = -1

function! s:goyo_enter()
  silent :execute "normal! mL"
  if has('gui_running')
	" Gui fullscreen
      set fullscreen
      set background=light
      set linespace=7
  elseif exists('$TMUX')
      silent !tmux set status off
  endif
  setl foldlevel=99
  setl nowrap
  setl nocursorline
  let &background = &background
  Limelight
  let &l:statusline = '%M'
  hi StatusLine ctermfg=red guifg=red cterm=NONE gui=NONE
endfunction

function! s:goyo_leave()
  if has('gui_running')
      " Gui exit fullscreen
      set nofullscreen
      set background=dark
      set linespace=0
  elseif exists('$TMUX')
      silent !tmux set status on
  endif
  Limelight!
  let &background = &background
  hi VertSplit ctermbg=NONE guibg=NONE
  hi Normal    ctermbg=NONE guibg=NONE
  silent :execute "normal! `L"
endfunction

" Goyo Commands {{{
autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
nnoremap <silent> <Leader>L :Limelight!!<cr>
" }}} limelight & Goyo "


" ===============THEME===============
" Status line {{{ "
Plug 'itchyny/lightline.vim'
" Plug 'maximbaz/lightline-ale'
set laststatus=2
set noshowmode

" Show readonly
function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

" Show git branch
function! LightlineFugitive()
  let branch = fugitive#head()
  return branch !=# '' ? ' '.branch : ''
endfunction

" Git blame message
function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  return winwidth(0) > 120 ? blame : ''
endfunction

" Get current funtion symbol
function! CocCurrentFunction()
  let currentFunctionSymbol = get(b:, 'coc_current_function', '')
  return currentFunctionSymbol !=# '' ? currentFunctionSymbol : ''
  " return currentFunctionSymbol !=# '' ? " " .currentFunctionSymbol : ''
endfunction

function! NearestMethodOrFunction() abort
  let currentFunctionSymbol = get(b:, 'vista_nearest_method_or_function', '')
  return currentFunctionSymbol !=# '' ? currentFunctionSymbol : ''
endfunction

" Filetype with icons
function! Devicons_Filetype()"{{{
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction"}}}

function! Devicons_Fileformat()"{{{
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction"}}}

let g:lightline = {}
let g:lightline.colorscheme = 'sonokai'
let g:lightline.active = {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'relativepath', 'modified' ],
      \           [ 'cocstatus', 'currentfunction' ] ],
      \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok'],
      \            [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ }

let g:lightline.component = {
      \ 'vim_logo': "\ue7c5"
      \ }

let g:lightline.component_function = {
      \ 'readonly': 'LightlineReadonly',
      \ 'gitbranch': 'LightlineFugitive',
      \ 'cocstatus': 'coc#status',
      \ 'currentfunction': 'CocCurrentFunction',
      \ 'currentfunctionmethod': 'NearestMethodOrFunction',
      \ 'blame': 'LightlineGitBlame',
      \ 'devicons_filetype': 'Devicons_Filetype',
      \ 'devicons_fileformat': 'Devicons_Fileformat',
      \ }

" let g:lightline_gitdiff#indicator_added = '+'
" let g:lightline_gitdiff#indicator_deleted = '-'
" let g:lightline_gitdiff#indicator_modified = '*'
" let g:lightline_gitdiff#min_winwidth = '70'
" let g:lightline#asyncrun#indicator_none = ''
" let g:lightline#asyncrun#indicator_run = 'Running...'
" Ale
" let g:lightline#ale#indicator_checking = "\uf110"
" let g:lightline#ale#indicator_warnings = "\uf071 "
" let g:lightline#ale#indicator_infos = "\uf129"
" let g:lightline#ale#indicator_errors = "\uf05e "
" let g:lightline#ale#indicator_ok = "\uf00c"
" let g:lightline.component_expand = {
"      \  'linter_checking': 'lightline#ale#checking',
"      \  'linter_warnings': 'lightline#ale#warnings',
"      \  'linter_infos': 'lightline#ale#infos',
"      \  'linter_errors': 'lightline#ale#errors',
"      \  'linter_ok': 'lightline#ale#ok',
"      \ }
let g:lightline.component_type = {
      \  'linter_checking': 'right',
      \  'linter_warnings': 'warning',
      \  'linter_infos': 'right',
      \  'linter_errors': 'error',
      \  'linter_ok': 'right',
      \ }

" seperator
let g:lightline.separator = { 'left': '', 'right': '' }
" let g:lightline.subseparator = { 'left': '', 'right': '' }
" let g:lightline.separator = { 'left': '' , 'right': ''}
" let g:lightline.subseparator = { 'left': "", 'right': "" }
" let g:lightline.tabline_separator = { 'left': "", 'right': "" }
" let g:lightline.tabline_subseparator = { 'left': "", 'right': "" }

" tabline
set showtabline=2  " Show tabline
let g:lightline.tabline = {
      \   'left': [ [ 'vim_logo', 'tabs' ] ],
      \   'right': [ [ 'gitbranch'], ['close'] ]
      \ }
let g:lightline.tab_component_function = {
      \   'shortpath': 'ShortPath',
      \}
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'shortpath', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

function! ShortPath(n) abort
  " Partly copied from powerline code:
  " https://github.com/admc/dotfiles/blob/master/.vim/autoload/Powerline/Functions.vim#L25
  " Display a short path where the first directory is displayed with its
  " full name, and the subsequent directories are shortened to their
  " first letter, i.e. "/home/user/foo/foo/bar/baz.vim" becomes
  " "~/foo/f/b/baz.vim"

  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let filename = expand('#'.buflist[winnr - 1].':t')
  if filename ==# ''
    return '[No Name]'
  endif

  let exclude_files = ['gitcommit', 'defx']
  for ft in exclude_files
    if ft ==# &filetype
      return filename
    endif
  endfor

  " Check if buffer is a terminal
  if &buftype ==# 'terminal'
    return filename
  endif

  let dirsep = has('win32') && ! &shellslash ? '\' : '/'
  let filepath = expand('%:p')
  if empty(filepath)
    return filename
  endif
  " This displays the shortest possible path, relative to ~ or the
  " current directory.
  let mod = (exists('+acd') && &acd) ? ':~:h' : ':~:.:h'
  let fpath = split(fnamemodify(filepath, mod), dirsep)
  let fpath_shortparts = map(fpath[1:], 'v:val[0]')
  let short_path = join(extend([fpath[0]], fpath_shortparts), dirsep) . dirsep
  if short_path == ('.' . dirsep)
    let short_path = ''
  endif
  return short_path . filename
endfunction
" }}} Status line "

" ColorScheme {{{ "
Plug 'nightsense/snow'
let g:snow_background = 'dark'
Plug 'junegunn/seoul256.vim'
let g:seoul256_background = 235

Plug 'sainnhe/edge'
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 0
Plug 'sainnhe/sonokai'
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
Plug 'joshdick/onedark.vim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'liuchengxu/space-vim-theme'
Plug 'connorholyday/vim-snazzy'
let g:SnazzyTransparent = 0.8
" }}} ColorScheme "

call plug#end()

" Define some custom command
command! PU PlugUpgrade | PlugUpdate
command! PI PlugInstall
command! PC PlugClean

" Defx setup {{{
call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ 'root_icon': ' ',
      \ })
call defx#custom#column('filename', {
      \ 'min_width': 40,
      \ 'max_width': 40,
      \ })
call defx#custom#column('mark', {
      \ 'readonly_icon': '',
      \ 'selected_icon': '✓',
      \ })
call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'columns': 'git:mark:indent:icons:filename:type',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'root_marker': '≡ '
      \ })
" Defx setup }}}

" coc.nvim setup {{{
" color for cursor holding highlight
hi default CocHighlightText guibg=#8a8a8a guifg=#211F1C
hi default CocHighlightText ctermbg=#8a8a8a ctermfg=#211F1C

" color for coc-diagnostic
hi link CocErrorSign Error
hi link CocWarningSign ALEWarningSign
" }}}

" lightline setup {{{
" wombat tabline colorscheme customization
let s:palette = g:lightline#colorscheme#wombat#palette
let s:palette.tabline.tabsel = [ [ '#242424', '#8ac6f2', 235, 117, 'bold' ] ]
unlet s:palette
" }}}
