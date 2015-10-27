export DOTFILES=/c/Github/dotfiles

source "$DOTFILES/bash/env"
source "$DOTFILES/bash/rc"
source "$DOTFILES/bash/aliases"
source "$DOTFILES/bash/local"

if [ -f $DOTFILES/go ]; then
    unset go_bookmarks
    source "$DOTFILES/go"
    declare -A go_bookmarks=$($DOTFILES/go_bookmarks)
fi
