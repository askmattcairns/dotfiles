# Path to your oh-my-zsh installation.
export ZSH="/Users/matt/.oh-my-zsh"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z node tmux)

source $ZSH/oh-my-zsh.sh

# User configuration




# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias top="htop"
alias ls="exa"

# fnm
eval "$(fnm env --multi)"

# Starship init
 eval "$(starship init zsh)"