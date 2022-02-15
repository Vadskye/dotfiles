# Defined in /tmp/fish.rBhna7/fish_prompt.fish @ line 2
function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    # This used to be `terlar_git_prompt_custom`, but that broke for some reason?
    __terlar_git_prompt

    if not test $last_status -eq 0
        set_color $fish_color_error
    end
    echo

    if set -q VIRTUAL_ENV
        echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
    end

    echo -n '$ '
    set_color normal
end
