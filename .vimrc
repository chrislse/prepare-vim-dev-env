
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/vim-scripts/Figlet.vim.git'
Plug 'https://github.com/haya14busa/incsearch.vim.git'
Plug 'https://github.com/yegappan/lid.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/xolox/vim-easytags.git'
Plug 'https://github.com/fatih/vim-go.git'
Plug 'https://github.com/ryanss/vim-hackernews.git'
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'git://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/dhruvasagar/vim-table-mode.git'
Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/elixir-lang/vim-elixir.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/wincent/command-t.git'
call plug#end()

"""editor configurations
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
