# put below in ~/.bashrc

# some more ls aliases
# File lists
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# apps
alias chrome='google-chrome'

# cd aliases
alias ch='cd ~'
alias cdd='cd Desktop && la'
alias cdg='cd Desktop/Github && la'
alias ..='cd ..'
alias ...='cd ../..'

# Terminal Aliases
alias c='clear'

# Git aliases
alias gs='git status'
alias gp='git push --verbose'
alias gc='git commit -m'
alias gcl='git clone'
alias ga='git add .'
alias gpu='git pull'
alias rd='rm -rf'
alias bye='shutdown -r now'
alias jn='jupyter notebook'

alias id='whoami'
alias eal='vi ~/.bash_aliases'

# XAMMP aliases
alias sx='sudo systemctl stop apache2 && sudo /opt/lampp/lampp start'
alias stx='sudo /opt/lampp/lampp stop'
alias resx='sudo /opt/lampp/lampp restart'
alias relx='sudo /opt/lampp/lampp reload'
alias unx='sudo /opt/lampp/ uninstall'
