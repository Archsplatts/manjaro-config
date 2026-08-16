export BAT_THEME="Catppuccin Mocha"
export DIFFPROG=meld
export EDITOR="micro"
export MICRO_TRUECOLOR=1

## Pacman
alias add="sudo pacman -S --noconfirm"
alias cache="sudo paccache -rvk3"
alias co="sudo pacman -Rs $(pacman -Qdtq)"
alias del="sudo pacman -Rns"
alias list="pacman -Qqe > $HOME/Documents/list"
alias orphans="pacman -Qdtq"
alias search="pacman -Ss"
alias update="sudo pacman -Syu"

## Utilitaires
alias c="clear"
alias cdt="cd $HOME/Téléchargements"
alias error="journalctl -p 3 -xb"
alias ff="fastfetch"
alias ls="eza --icons -1 --group-directories-first"
alias pd="pacdiff"
alias rm="trash -v"
alias sv="systemctl list-unit-files --state=enabled"
alias zshrc="micro .zshrc && source $HOME/.zshrc"
