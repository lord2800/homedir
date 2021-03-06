export EDITOR=nano

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv
export NVM_DIR=/usr/local/var/nvm

DNVM="$(brew --prefix dnvm)/bin/dnvm.sh"
NVM="$(brew --prefix nvm)/nvm.sh"
PHP_VERSION="$(brew --prefix php-version)/php-version.sh"
GIT_PROMPT="$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh"
GIT_COMPLETE="$(brew --prefix git)/etc/bash_completion.d/git-completion.bash"

alias ls='ls -lah '
alias myip='curl -4 icanhazip.com'
alias flushdns='sudo discoveryutil udnsflushcaches'

[ -f "$HOME/.bash_aliases" ] && source $HOME/.bash_aliases

# TODO make this an array or something more consistent
for script in $DNVM $NVM $PHP_VERSION $GIT_PROMPT $GIT_COMPLETE; do
	if [ -f $script ]; then
		source $script
	else
		echo 'Script $script not found.'
	fi
done

if [ -f $NVM ]; then nvm use stable; fi
if [ -f $PHP_VERSION ]; then php-version 5.6; fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PS1="\[$(tput setaf 4)\][\[$(tput setaf 1)\]\w\[$(tput setaf 4)\]]\[$(tput setaf 2)\]\$(__git_ps1)\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"
