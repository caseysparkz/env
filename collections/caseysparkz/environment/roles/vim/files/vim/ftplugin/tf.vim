" Terraform config -------------------------------------------------------------
set filetype=terraform
set textwidth=120
set linebreak
set wrap

command Fmt %!terraform fmt

let g:terraform_fmt_on_save=1
