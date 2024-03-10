# system aliases
alias pwd='pwd && pwd | xclip -sel clipboard'
alias open='xdg-open .'
alias dropcache='echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias zshreload='source ~/.zshrc'
