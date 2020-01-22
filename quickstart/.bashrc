export DOTFILES=~/github/dotfiles

source "$DOTFILES/bash/env"
source "$DOTFILES/bash/rc"
source "$DOTFILES/bash/aliases"

if [ -f $DOTFILES/bash/goto ]; then
    unset go_bookmarks
    source "$DOTFILES/bash/goto"
    declare -A go_bookmarks=$(~/.go_bookmarks)
fi

export PATH="$PATH:/home/kevin/bin"

# Bash stuff
[ -f ~/.config/bash/git-completion.bash ] && source ~/.config/bash/git-completion.bash

# NPM/JS stuff
export NVM_DIR="/home/kevin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="$PATH:$HOME/.npm-packages/bin"

# make history unlimited
export HISTSIZE=-1
export HISTFILESIZE=-1
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE="$HOME/.bash_eternal_history"

# FZF stuff
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# ag stuff
alias ag='ag --context=2'

# fish
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn stuff
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
