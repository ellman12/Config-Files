"Some ideas from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua

nnoremap <SPACE> <Nop>
let mapleader=" "

"Make Home go to first non-blank character.
nnoremap <Home> ^
inoremap <Home> <C-o>^

"Redo with U in addition to Ctrl R.
nnoremap U <C-r>

"Make Backspace in normal and visual mode useful.
nnoremap <BS> X
vnoremap <BS> X

"Send x, X, and s to the black hole register.
nnoremap x "_x
nnoremap X "_X
nnoremap s "_s

"Move selected lines up/down.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Don't move cursor when joining lines
"nnoremap J mzJ`z

"Keeps cursor centered on screen for these.
nnoremap <PageUp> <PageUp>zz
inoremap <PageUp> <PageUp><C-o>zz
nnoremap <C-u> <C-u>zz
nnoremap <PageDown> <PageDown>zz
inoremap <PageDown> <PageDown><C-o>zz
nnoremap <C-d> <C-d>zz
nnoremap n nzzzv
nnoremap N Nzzzv

"Consistent behavior between IdeaVim and Vim.
""In IdeaVim, Y normally does yy for some reason.
nnoremap Y y$

""In IdeaVim, gg does gg0 which I like.
nnoremap gg gg0
nnoremap gG gg

