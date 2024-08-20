
#eza config
alias ls='eza --icons=always'

#zoxide config
set -x _ZO_ECHO 1
zoxide init fish | source

#set "cd" as "z" (for zoxide)
alias cd='z'

#homebrew-config
#env-conf for homebrew
#Vorinstallation: sudo apt install -y build-essential procps curl file git 
#> Eingabe im Term:
#eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#echo 'eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.config/fish/config.fish
#je nach dem mit oder ohne "$" > eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
