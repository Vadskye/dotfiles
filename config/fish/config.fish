. ~/.fishmarks/marks.fish
# This is the wrong place for this config, but it works
# see https://askubuntu.com/questions/250336/disable-mouse-movement-in-tap-zones-on-synaptics-trackpad
synclient AreaLeftEdge=2574
synclient AreaRightEdge=4368

set -x PYTHONPATH "/home/kevin/github/rise-gen:/home/kevin/github/Rise/python"

eval (python3 -m virtualfish)

set -x NODE_ENV 'development'

bind \{ backward-word
bind \} forward-word

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
