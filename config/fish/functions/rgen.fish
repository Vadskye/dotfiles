# Defined in /tmp/fish.yJpPnU/rgen.fish @ line 2
function rgen
    g rise
    mkdir -p core_book/generated
	g rpy
    vf activate rise_book
    latex_generation/gen_all.py
    g rts
    npx tsc --incremental
    npm run script -- src/generate_latex.js -t monsters -o ../core_book/generated/monster_descriptions.tex
    vf deactivate
end
