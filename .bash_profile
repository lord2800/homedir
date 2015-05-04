export EDITOR=nano

export PATH="/usr/local/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv
export NVM_DIR=/usr/local/var/nvm

alias ls='ls -lah '
alias myip='curl -4 icanhazip.com'

source $(brew --prefix nvm)/nvm.sh
source $(brew --prefix php-version)/php-version.sh
source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh
source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PS1="\[$(tput setaf 4)\][\[$(tput setaf 1)\]\W\[$(tput setaf 4)\]]\[$(tput setaf 2)\]\$(__git_ps1)\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"
