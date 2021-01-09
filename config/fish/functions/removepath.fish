# Defined in /tmp/fish.bWTGpS/removepath.fish @ line 2
function removepath --description 'Remove a variable from fish_user_paths' --argument rmpath
    # https://superuser.com/questions/776008/how-to-remove-a-path-from-path-variable-in-fish/1091983
    if set -l index (contains -i $rmpath $PATH)
        set --erase --universal fish_user_paths[$index]
        echo "Updated fish_user_paths: $fish_user_paths"
    else
        echo "$rmpath not found in fish_user_paths: $fish_user_paths"
    end
end
