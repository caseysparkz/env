" Python config ---------------------------------------------------------------
autocmd BufNewFile pyproject.toml
    \ :0r ~/.vim/templates/pyproject.toml.template                          |
    \ :%s/\<DIR\>/\=substitute(getcwd(), '^.*\/', '', '')/g

autocmd BufNewFile *.py
    \ :0r ~/.vim/templates/python.template                                  |
    \ :%s/\<YEAR\>/\=strftime("%Y")/                                        |
    \ :%s/\<DATE\>/\=strftime("%B %d, %Y")/

autocmd BufNewFile test_*.py
    \ :%d                                                                   |
    \ :0r ~/.vim/templates/python_test.template                             |
    \ :%s/\<YEAR\>/\=strftime("%Y")/                                        |
    \ :%s/\<DATE\>/\=strftime("%B %d, %Y")/

autocmd Filetype python
    \ set autoindent                                                        |
    \ set tabstop=4                                                         |
    \ set softtabstop=4                                                     |
    \ set expandtab                                                         |
    \ set modeline                                                          |
    \ set textwidth=120                                                     |
    \ set linebreak                                                         |
    \ set wrap                                                              |
    \ nnoremap <buffer> <C-h> :execute "!pydoc3 " . expand("<cword>")<CR>
