Normally, fish config is located on a local machine at `~/.config/fish`. The `functions` folder contains a mixture of custom user functions and automatically installed fish functions from programs like `fisher` and `bass`, so it's tricky to copy them back and forth. In theory, you should be able to install fish functions with `cp $DOTFILES/config/fish/functions/* ~/.config/fish/functions`.

The fish config can be installed with `cp $DOTFILES/config/fish/config.fish ~/.config/fish`.
