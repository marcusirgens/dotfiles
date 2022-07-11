# include the "fuck" commands as "fix"
eval "$(thefuck --alias "fix")"

# This makes you able to tab through the "menu" of completions
zstyle ':completion:*' menu select

# LS should have colors
export COLORTERM="1"
alias ls='ls --color=auto'