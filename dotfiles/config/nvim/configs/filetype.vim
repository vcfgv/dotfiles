" Vim {{{
autocmd FileType vim set tabstop=2 shiftwidth=2 expandtab ai
" Vim }}}

" JSON {{{ "
autocmd FileType json syntax match Comment +\/\/.\+$+
" }}} JSON "

" Python {{{
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType python let b:delimitMate_nesting_quotes = ['"']
" set colorcolumn
function! ColorColumn()
    if(&colorcolumn == 80)
        set colorcolumn=0
    else
        set colorcolumn=80
    endif
endfunc
autocmd FileType python nnoremap <leader>b :call ColorColumn()<cr>
autocmd FileType python nnoremap <leader>= :0,$!yapf<CR>
" Python }}}

" Text {{{
autocmd BufRead,BufNew *.md,*.mkd,*.markdown  set filetype=markdown
autocmd FileType yaml set sw=2 sts=2 et
autocmd FileType json syntax match Comment +\/\/.\+$+
autocmd FileType puppet set sw=2 sts=2 et
" Text }}}

" File-type Detection {{{ "
if exists('did_load_filetypes')
  finish
endif

augroup filetypedetect

autocmd BufNewFile,BufRead */playbooks/*.{yml,yaml} setfiletype yaml.ansible
autocmd BufNewFile,BufRead */inventory/*            setfiletype ansible_hosts
" autocmd BufNewFile,BufRead */templates/*.{yaml,tpl} setfiletype yaml.gotexttmpl

autocmd BufNewFile,BufRead *.hcl                setfiletype terraform
autocmd BufNewFile,BufRead yarn.lock            setfiletype yaml
autocmd BufNewFile,BufRead */.kube/config       setfiletype yaml
autocmd BufNewFile,BufRead *.postman_collection setfiletype json
autocmd BufNewFile,BufRead .tern-{project,port} setfiletype json
autocmd BufNewFile,BufRead *.js.map             setfiletype json
autocmd BufNewFile,BufRead .jsbeautifyrc        setfiletype json
autocmd BufNewFile,BufRead .eslintrc            setfiletype json
autocmd BufNewFile,BufRead .jscsrc              setfiletype json
autocmd BufNewFile,BufRead .babelrc             setfiletype json
autocmd BufNewFile,BufRead .watchmanconfig      setfiletype json
autocmd BufNewFile,BufRead .buckconfig          setfiletype toml
autocmd BufNewFile,BufRead .flowconfig          setfiletype ini
autocmd BufNewFile,BufRead Jenkinsfile*         setfiletype groovy
autocmd BufNewFile,BufRead Tmuxfile,tmux/config setfiletype tmux
autocmd BufNewFile,BufRead Brewfile             setfiletype ruby
augroup END

" }}} File-type Detection "

