export PATH="./bin:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/local/bin/npm:$ZSH/bin:$HOME/.bin:$PATH"

if [ -d "/Applications/Postgres.app/Contents/Versions/9.5/bin" ]; then
	export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
