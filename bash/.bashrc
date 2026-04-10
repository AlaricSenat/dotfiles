# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:$HOME/.local/bin:$HOME/.local/share/nvim/mason/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/.local/bin:$HOME/share/nvim/mason/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
export EDITOR=vim
#eval "$(starship init bash)"
. "$HOME/.cargo/env"

export ZK_NOTEBOOK_DIR="$HOME/Workspaces/notes/"
