" Python config ---------------------------------------------------------------
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set modeline
set textwidth=120
set linebreak
set wrap
nnoremap <buffer> <C-h> :execute "!pydoc3 " . expand("<cword>")<CR>
