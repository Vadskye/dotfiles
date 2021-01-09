# Defined in /tmp/fish.Bik65K/rchar.fish @ line 2
function rchar
    g rise
    cd character_sheet
    vf activate rise_book
    ./sheet.py
    ./sheet.py -d roll20
end
