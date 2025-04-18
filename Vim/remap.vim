"Some ideas from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua

nnoremap <SPACE> <Nop>
let mapleader=" "

"Make wrapped lines less annoying.
nnoremap j gj
nnoremap k gk

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

"Paste over selection without overwriting register.
vnoremap p P

"Facilitate working with system clipboard.
nnoremap <leader>y "+y
nnoremap <leader>Y "+y$
nnoremap <leader>d "+d
nnoremap <leader>D "+D
nnoremap <leader>p "+p
nnoremap <leader>P "+P

vnoremap <leader>y "+y
vnoremap <leader>d "+d
vnoremap <leader>p "+p

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

"Find and replace word under cursor.
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

"Find and replace selection.
vnoremap <leader>s "zy:%s/<C-r>z//g<Left><Left>


"Consistent behavior between IdeaVim and Vim.
""In IdeaVim, Y normally does yy for some reason.
nnoremap Y y$

""In IdeaVim, gg does gg0 which I like.
nnoremap gg gg0
nnoremap gG gg

