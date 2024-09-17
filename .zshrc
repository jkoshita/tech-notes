# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(~/.zsh/zsh-completions/src $fpath)

alias linksys.lan='ssh -i /home/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@linksys.lan'
alias debian-1.lan='ssh -i /home/jkoshita/.ssh/debian-1.lan -L 34000:localhost:4000 -D 8080 jkoshita@jkoshita.duckdns.org'
alias debian-1.lan_macos='ssh -i /home/jkoshita/.ssh/debian-1.lan -L 24000:localhost:24000 jkoshita@jkoshita.duckdns.org'
alias debian-2.lan='ssh -i /home/jkoshita/.ssh/debian-2.lan -L 14000:localhost:4000 jkoshita@windows-2.lan'
alias macos.lan='ssh -i /home/jkoshita/.ssh/macos.lan -L 24000:localhost:4000 jkoshita@macos.lan'

#
# powershell aliases:
#
# Set-Alias -Name linksys.lan -Value C:\Users\jkoshita\.ssh\login\linksys.ps1
# linksys.ps1: ssh -i /Users/jkoshita/.ssh/linksys.lan -L 18080:localhost:80 root@linksys.lan
#
# Set-Alias -Name windows-1.lan -Value C:\Users\jkoshita\.ssh\login\windows-1.ps1
# windows-1.ps1: ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 34000:localhost:4000 -D 8080 jkoshita@jkoshita.duckdns.org
#
# Set-Alias -Name windows-1.lan_macos -Value C:\Users\jkoshita\.ssh\login\windows-1.lan_macos.ps1
# windows-1.lan_macos.ps1: ssh -i /Users/jkoshita/.ssh/windows-1.lan -L 24000:localhost:24000 jkoshita@jkoshita.duckdns.org
#
# Set-Alias -Name windows-2.lan -Value C:\Users\jkoshita\.ssh\login\windows-2.ps1
# windows-2.ps1: ssh -i /Users/jkoshita/.ssh/windows-2.lan -L 14000:localhost:4000 jkoshita@windows-2.lan
#
# Set-Alias -Name macos.lan -Value C:\Users\jkoshita\.ssh\login\macos.ps1
# macos.ps1: ssh -i /Users/jkoshita/.ssh/macos.lan -L 24000:localhost:4000 jkoshita@macos.lan
#

PS1='%K{blue}%n@debian%k %F{cyan}%1~%f $ '
RPROMPT='%t'


#
# install zsh plugins
#
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/zsh-completions
# (on next login)
# rm -f ~/.zcompdump; compinit
#
