# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/scripts:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.bun/bin$PATH"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4'

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"

alias l="exa -lah --group-directories-first"
alias lt='exa --tree --group-directories-first --ignore-glob node_modules --ignore-glob .git'
alias ls="exa"
alias n="nvim -c \"Neotree\""
alias dc="docker-compose"
alias brewski="brew update && brew upgrade && brew doctor && brew cleanup"
alias bat="bat --paging=never"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"

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

# bun completions
[ -s "/Users/waffles/.bun/_bun" ] && source "/Users/waffles/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/waffles/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
