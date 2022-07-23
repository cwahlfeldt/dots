export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"
export PATH="/usr/local/sbin:$PATH"

export STARSHIP_CONFIG="~/.config/starship/starship.toml"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

alias l="exa -lah --group-directories-first"
alias lt='exa --tree --group-directories-first --ignore-glob node_modules --ignore-glob .git'
alias ls="exa"
alias n="nvim -c \"Neotree\""
alias dc="docker-compose"
alias brewski="brew update && brew upgrade && brew doctor && brew cleanup"
alias bat="bat --paging=never"

# zsh-autosuggestions settings
zstyle ':autocomplete:*' insert-unambiguous yes
zstyle ':autocomplete:*' fzf-completion yes
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle :compinstall filename '/Users/waffles/.zshrc'

autoload -Uz compinit && compinit
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

plugins=(git ssh-agent zsh-z)
