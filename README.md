# NeoVim Configuration

This repository contains my custom NeoVim configuration, built from scratch to tailor my development environment. Setting up a NeoVim configuration can be complex, but the flexibility and power it offers are unparalleled.
## Installation & Setup
### Location:

Place the configuration in the following directory:

```javascript

~/.config/nvim
```


### Initialization: 
1. Navigate to `/lua/theil/packer.lua` and execute `:PackerSync`. 
2. Navigate to each file in `/after/` and execute `:so`. 
3. Repeat steps 1-2 until no errors are encountered.
> Note: While this iterative process may seem unconventional, it ensures all plugins and configurations are loaded correctly.
### Additional Setup:

To set NeoVim as the default editor: 
1. Add the following aliases to your `~/.zshrc`:

```bash

alias vim="nvim"
alias v="nvim"
``` 
2. Reload your zsh configuration:

```bash

$ source ~/.zshrc
```
## Related Configurations

For a seamless development experience, check out my [Tmux configuration](https://github.com/ctheil/tmux-config)  which complements this NeoVim setup.---
