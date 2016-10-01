export DOTFILES=/c/Github/dotfiles

source "$DOTFILES/bash/env"
source "$DOTFILES/bash/rc"
source "$DOTFILES/bash/aliases"

if [ -f $DOTFILES/bash/goto ]; then
    unset go_bookmarks
    source "$DOTFILES/bash/goto"
    declare -A go_bookmarks=$($DOTFILES/bash/go_bookmarks)
fi
