# Defined in /tmp/fish.aB1iFq/rgen.fish @ line 2
function rgen
	g rpy
    vf activate rise_book
    latex_generation/gen_all.py
    g rts
    ns src/generate_latex.js -t monsters -o ../core_book/generated/monster_descriptions.tex
end
