execute pathogen#infect('bundle/{}', '~/.vim/bundle/{}')
syntax on
filetype plugin indent on
let mapleader = ","
command! -range -nargs=0 -bar JsonTool <line1>,<line2>!python -m json.tool
command! -range -nargs=0 -bar XmlTool <line1>,<line2>!xmllint --format -
map <C-n> :NERDTreeToggle<CR>
map <Leader>r :w !ruby -c<CR>
nmap <Leader>c :TagbarToggle<CR>
map <Leader>t :CommandT
map <C-å> :exe  v:count1."tag <C-R>=RubyCursorIdentifier()<CR>"
colorscheme codeschool
let g:vimrubocop_config = '~/projects/rubocop/default.yml'
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set runtimepath^=~/.vim/bundle/vim-erlang-compiler
au FileType ruby setl sw=2 sts=2
