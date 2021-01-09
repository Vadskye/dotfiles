# Defined in /tmp/fish.UBwoNM/addpath.fish @ line 2
function addpath --description 'Add a path to fish_user_paths' --argument newpath
    # https://superuser.com/questions/776008/how-to-remove-a-path-from-path-variable-in-fish/1091983
    contains -- $newpath $fish_user_paths
       or set -U fish_user_paths $fish_user_paths $newpath
    echo "Updated fish_user_paths: $fish_user_paths"
end
