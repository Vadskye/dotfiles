export DOTFILES=/c/Github/dotfiles

source "$DOTFILES/bash/env"
source "$DOTFILES/bash/rc"
source "$DOTFILES/bash/aliases"
[[ -f $DOTFILES/bash/local ]] && source "$DOTFILES/bash/local"

if [ -f $DOTFILES/bash/go ]; then
    unset go_bookmarks
    source "$DOTFILES/bash/go"
    declare -A go_bookmarks=$($DOTFILES/bash/go_bookmarks)
fi
