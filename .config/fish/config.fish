
#eza config
alias ls='eza --icons=always'

#zoxide config
set -x _ZO_ECHO 1
zoxide init fish | source

#use "cd" as "z" (for zoxide)
alias cd='z'

# random aliases
alias ..= 'cd ..'

#homebrew-config
#env-conf for homebrew
#Vorinstallation: sudo nala install -y build-essential procps curl file git 
#> Eingabe im Term:
#eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#echo 'eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.config/fish/config.fish
#je nach dem mit oder ohne "$" > eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
