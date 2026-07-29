export BAT_THEME="Catppuccin Mocha"
export EDITOR="micro"
export MICRO_TRUECOLOR=1

## Pacman
alias add="sudo pacman -S"
alias cleancache="sudo pacman -Sc"
alias cleanorphans="sudo pacman -Rs $(pacman -Qdtq)"
alias info="pacman -Si"
alias list="pacman -Qqe > $HOME/Documents/list"
alias orphans="pacman -Qdtq"
alias qi="pacman -Qi"
alias remove="sudo pacman -Rns"
alias search="pacman -Ss"
alias update="sudo pacman-mirrors -c France,Germany && sudo pacman -Syyu"

## Système
alias cache="dust .cache"
alias cleantemp="sudo rm -rf /var/cache/pacman/pkg/download-*"
alias conf="yazi $HOME/.config"
alias error="journalctl -p 3 -xb"
alias rm="trash -v"
alias zshrc="micro .zshrc && source $HOME/.zshrc"

## Utilitaires
alias c="clear"
alias cdt="cd $HOME/Téléchargements"
alias ff="fastfetch"
alias fm="yazi"
alias ls="eza --icons -1 --group-directories-first"
alias pfc="papirus-folders -C"
alias pfl="papirus-folders -l"
