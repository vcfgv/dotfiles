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
Plug 'rhysd/clever-f.vim'
" You can specify any mapping for Sneak (see :help sneak). 
" By the way: cl is equivalent to s, and cc is equivalent to S.
" Plug 'justinmk/vim-sneak'
" Replacing f & t
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T
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
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]
let g:indentLine_bufTypeExclude = ['nofile']
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
Plug 'stephpy/vim-yaml',                { 'for': 'yaml'       }
Plug 'lervag/vimtex',                    { 'for': 'tex'   }
" Plug 'zinit-zsh/zinit-vim-syntax',       { 'for': 'zshrc' }
Plug 'vim-python/python-syntax',         { 'for': 'python'    }
Plug 'dag/vim-fish',                     { 'for': 'fish'  }
Plug 'MTDL9/vim-log-highlighting',       { 'for': 'log'   }
Plug 'tpope/vim-git',                    { 'for': ['gitcommit', 'gitrebase', 'gitconfig']}
" Plug 'chrisbra/csv.vim', {'for': 'csv'}
Plug 'vim-jp/syntax-vim-ex',             { 'for': 'vim'   }
" Plug 'chr4/nginx.vim',                   { 'for': 'nginx'          }

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
  let branch = FugitiveHead()
  return branch !=# '' ? ' '.branch : ''
endfunction

" Git blame message
function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  return winwidth(0) > 120 ? blame : ''
endfunction

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
" Plug 'nightsense/snow'
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

" lightline setup {{{
" wombat tabline colorscheme customization
let s:palette = g:lightline#colorscheme#wombat#palette
let s:palette.tabline.tabsel = [ [ '#242424', '#8ac6f2', 235, 117, 'bold' ] ]
unlet s:palette
" }}}
