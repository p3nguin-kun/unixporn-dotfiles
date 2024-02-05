# ~/.zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Options
setopt prompt_subst
setopt auto_list
setopt hist_find_no_dups
setopt hist_ignore_dups

# Greeting
echo "Merry Christmas, $USER!"

# Prompt
PROMPT='%~ '

# Auto startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

# Vars
export TERMINAL="alacritty"
export BROWSER="firefox"
export EDITOR="nvim"
export VISUAL="${EDITOR}"

# Aliases
alias pls='sudo'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
alias cl='clear'
alias christmas='curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/master/tree-EN.sh | bash'

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# cute sudo
export SUDO_PROMPT="Give me %u's pass pls: "

# not found
command_not_found_handler() {
	printf "%s%s? I don't know what is it\n" "$acc" "$0" >&2
    return 127
}
