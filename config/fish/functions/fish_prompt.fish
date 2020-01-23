function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    terlar_git_prompt_custom

    if not test $last_status -eq 0
        set_color $fish_color_error
    end
    echo

    echo -n '$ '
    set_color normal
end
