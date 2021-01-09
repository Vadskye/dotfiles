# Defined in /tmp/fish.Zv90dv/fixchanged.fish @ line 2
function fixchanged --description 'Fix locally changed files'
	git diff --name-only src/**/*.ts* | xargs node_modules/.bin/tslint -c tslint.json --fix
	git diff --name-only src/**/*.ts* | xargs node_modules/.bin/prettier --write
end
