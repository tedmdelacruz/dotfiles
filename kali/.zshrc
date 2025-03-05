# Preferred editor for local and remote sessions
#
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshedit="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Enable vim
bindkey -v

# Reverse search
bindkey '^R' history-incremental-search-backward

# Enable .profile
source ~/.profile

# gf completion
source ~/tools/gf/gf-completion.zsh

# Gron
alias norg="gron --ungron"
alias ungron="gron --ungron"

# Recon framework
export RECON="$HOME/recon"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PYPPETEER_CHROMIUM_REVISION=147394
