# Defined in /tmp/fish.LG4VCk/rcheck.fish @ line 2
function rcheck
	g rpy
    vf activate rise_book
    latex_generation/gen_spell_descriptions.py -c -o
    latex_generation/gen_spell_lists.py -o
    vf deactivate
end
