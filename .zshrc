########
# Path #
########

export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

###################
# Custom settings #
###################

alias l="ls -h"
alias ll="ls -alh"
alias zshedit="vim $HOME/.zshrc"
alias zshreload="source $HOME/.zshrc"

source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="/home/tedm/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

function release() {
	git checkout master;
	git pull origin master;
	git fetch --tags;
	LATEST=$(git describe --tags --abbrev=0);
	git log --pretty=format:"%s" --no-merges $LATEST..master;
}

function hotfix() {
    echo "Fetching tags..."
	git fetch --tags;
    if [ $? -ne 0 ]; then # Don't proceed if git fetch fails
        echo "Failed to fetch tags";
        return 1;
    fi
    latest_tag=$(git describe --tags $(git rev-list --tags --max-count=1));
    hotfix_branch="hotfix/$1"
    echo "Creating branch $hotfix_branch from $latest_tag...";
	git branch $hotfix_branch $latest_tag;
    echo "Successfully created branch hotfix/$1"
    git checkout $hotfix_branch
}

export JAVA_HOME=/usr/lib/jvm/java-17-oracle
export PATH=/opt/apache-maven-3.8.6/bin:$PATH

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# Add Go
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
