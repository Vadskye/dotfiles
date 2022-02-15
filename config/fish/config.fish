set -gx ENV dev
set -gx NODE_ENV 'development'

# bind \{ backward-word
# bind \} forward-word

set -g fish_color_git_clean green
set -g fish_color_git_staged yellow
set -g fish_color_git_dirty red

set -g fish_color_git_added green
set -g fish_color_git_modified blue
set -g fish_color_git_renamed magenta
set -g fish_color_git_copied magenta
set -g fish_color_git_deleted red
set -g fish_color_git_untracked yellow
set -g fish_color_git_unmerged red

set -g fish_prompt_git_status_added '✚'
set -g fish_prompt_git_status_modified '*'
set -g fish_prompt_git_status_renamed '➜'
set -g fish_prompt_git_status_copied '⇒'
set -g fish_prompt_git_status_deleted '✖'
set -g fish_prompt_git_status_untracked '?'
set -g fish_prompt_git_status_unmerged '!'

set -g fish_prompt_git_status_order added modified renamed copied deleted untracked unmerged

alias sqlite sqlite3
alias o xdg-open

# This breaks colors inside neovim terminals; see
# https://github.com/fish-shell/fish-shell/issues/2600
set fish_term24bit 0

# Load fishmarks (http://github.com/techwizrd/fishmarks)
. $HOME/.fishmarks/marks.fish

set -x FZF_DEFAULT_COMMAND 'fd --type f'
set -x DOTFILES "$HOME/github/dotfiles"
set -x CMAKE_ROOT /home/vadskye/bin/cmake
