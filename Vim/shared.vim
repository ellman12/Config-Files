"General Config
set showmatch

set smartcase

set autoread

set incsearch

set laststatus=0

set matchpairs=(:),{:},[:],<:>,`:`,':',":"

"Tabs
set tabstop=4
set shiftwidth=4
set noexpandtab

"Ensure only LF and no CRLF.
"set fileformats=unix
"set fileformat=unix


"Remaps
""Make Home go to first non-blank character.
nnoremap <Home> ^
inoremap <Home> <C-o>^

""Redo with U in addition to Ctrl R.
nnoremap U <C-r>

""Send x, X, and s to the black hole register.
nnoremap x "_x
nnoremap X "_X
nnoremap s "_s

""Consistent behavior between IdeaVim and Vim.
"""In IdeaVim, Y normally does yy for some reason.
nnoremap Y y$

"""In IdeaVim, gg does gg0 which I like.
nnoremap gg gg0
nnoremap gG gg


"Plugin Config
""EasyMotion
nnoremap <SPACE> <Nop>
let mapleader=" "
map <Leader> <Plug>(easymotion-prefix)


"Autocommands
""Relative line numbers in normal and visual mode, absolute in insert mode.
"""https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
autocmd!
autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END


