" Terraform configs -----------------------------------------------------------
autocmd BufNewFile *.tf
    \ :0r ~/.vim/templates/terraform.d/default.tf
    \ :set filetype=terraform

autocmd BufNewFile *.hcl
    \ :0r ~/.vim/templates/terraform.d/default.tf
    \ :set filetype=terraform

autocmd BufNewFile main.tf
    \ :%d                                                                   |
    \ :0r ~/.vim/templates/terraform.d/main.tf                              |
    \ :5s/\<DATE\>/\=strftime("%B %d, %Y")/

autocmd BufNewFile providers.tf
    \ :%d                                                                   |
    \ :0r ~/.vim/templates/terraform.d/providers.tf

autocmd BufNewFile variables.tf
    \ :%d                                                                   |
    \ :0r ~/.vim/templates/terraform.d/variables.tf
