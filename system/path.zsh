export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/local/bin/npm:$ZSH/bin:$HOME/.bin:$PATH"

if [ -d "/Applications/Postgres.app/Contents/Versions/9.5/bin" ]; then
	export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# nvm stuff
export NVM_DIR="$HOME/.nvm"
test -e "/usr/local/opt/nvm/nvm.sh" && source "/usr/local/opt/nvm/nvm.sh"

# rbenv
export PATH="$HOME/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.zsh'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
