alias nrb="clear && npm run build"
alias nrd="clear && npm run dev"
alias nrl="clear && npm run lint"
alias nrf="clear && npm run format"
alias nrc="clear && npm run clean"
alias nrlb="nrl && npm run build"
alias nrld="nrl && npm run dev"

alias nclean="rm -rf node_modules/"
alias nfreshi="nclean && npm i"
alias nfreshb="nfreshi && nrlb"
alias nfreshd="nfreshi && nrld"

