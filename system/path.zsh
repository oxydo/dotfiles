export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/local/bin/npm:$ZSH/bin:$HOME/.bin:$PATH"

if [ -d "/Applications/Postgres.app/Contents/Versions/9.5/bin" ]; then
	export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# nvm stuff
export NVM_DIR="$HOME/.nvm"
test -e "/usr/local/opt/nvm/nvm.sh" && source "/usr/local/opt/nvm/nvm.sh"
