call pathogen#infect()


set background=dark
" solarized options
let g:solarized_termtrans = 1

syntax on
filetype plugin indent on

colorscheme solarized

set laststatus=2
set number
set tabstop=2
set shiftwidth=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
set colorcolumn=80

au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.tt set filetype=html
au BufRead,BufNewFile *.slim set filetype=slim
au BufRead,BufNewFile *.conf set filetype=nginx
au BufRead,BufNewFile *.hbs set filetype=mustache
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby


autocmd FileType jade setlocal commentstring=\/\/\-\ %s
autocmd FileType coffee set commentstring=#\ %s
autocmd BufWritePre * :%s/\s\+$//e

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

map <C-u> :NERDTreeToggle<CR>
map <C-e> :noh<CR>
map <C-l> :30winc ><CR>
map <C-h> :30winc <<CR>
map <C-j> :20winc +<CR>
map <C-k> :20winc -<CR>
map <C-m> :mksession! ~/.vim/session<CR>
map <C-y> :source ~/.vim/session<CR>


hi UNDO ctermfg=red
match UNDO /UNDO/
autocmd InsertLeave * match UNDO /UNDO/

set guifont=Hack
set t_Co=256
set term=xterm-256color
set termencoding=utf-8

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
let g:airline_left_sep = '|'
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_right_sep = '|'
let g:airline_symbols.crypt = '|'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.linenr = '|'
let g:airline_symbols.branch = '|'
let g:airline_symbols.paste = '|'
let g:airline_symbols.paste = '|'
let g:airline_symbols.paste = '|'
let g:airline_symbols.whitespace = '|'
