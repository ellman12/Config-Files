source ~/Documents/GitHub/Config-Files/Vim/remap.vim
source ~/Documents/GitHub/Config-Files/Vim/set.vim

"https://youtu.be/VxHT88haAPU
set t_vb=

"This magic sequence of characters fixes the cursor not switching from block to bar.
"https://polodev.github.io/learning/bits/how-to-add-block-cursor-in-vim-specially-in-gitbash-or-cygwin-vim-editor/
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

augroup YankHighlight
	autocmd!
	autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=500}
augroup end

