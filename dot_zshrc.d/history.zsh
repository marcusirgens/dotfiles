# Load before completions!

# For plugin zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# See https://unix.stackexchange.com/a/157773
setopt AUTO_PUSHD # pushes the old directory onto the stack
setopt PUSHD_MINUS # exchange the meanings of '+' and '-'
setopt CDABLE_VARS # expand the expression (allows 'cd -2/tmp')
zstyle ':completion:*:directory-stack' list-colors '=(#b) #([0-9]#)*( *)==95=38;5;12'

