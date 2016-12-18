#!/usr/bin/env ruby

dest_dir = '~/.vim'
colorschool = `mkdir -p #{dest_dir}/colors && cd #{dest_dir}/colors && wget https://raw.githubusercontent.com/29decibel/codeschool-vim-theme/master/colors/codeschool.vim`
github = `mkdir -p #{dest_dir}/colors && cd #{dest_dir}/colors && wget https://raw.githubusercontent.com/endel/vim-github-colorscheme/master/colors/github.vim`
