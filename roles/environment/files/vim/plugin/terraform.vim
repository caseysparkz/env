" Terraform configs -----------------------------------------------------------
autocmd BufNewFile main.tf
    \ :0r ~/.vim/templates/terraform.d/main.tf

autocmd BufNewFile providers.tf
    \ :0r ~/.vim/templates/terraform.d/providers.tf

autocmd BufNewFile variables.tf
    \ :0r ~/.vim/templates/terraform.d/variables.tf
