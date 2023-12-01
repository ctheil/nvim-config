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

## Development with GOLANG

### Using NODEMON for `rungo` hot reloading

1. Make sure `nodemon` is installed globally
   `npm i -g nodemon`
2. create a `sytstem_tools` dir
   touch `rungo.sh`

```bash
#!/bin/bash
rungo () {
        if [ $# -eq 0 ]
                then nodemon --exec go run main.go --signal SIGTERM
        elif [ $# -eq 1 ]
                then nodemon --exec go run $1 --signal SIGTERM
        fi
}
rungo $1
```

3. Add rungo alias to `.zshrc`

```zsh
alias rungo="~/.config/system_tools/rungo.sh"
```

4. source .zshrc

```bash
source ~/.zshrc
```

---

This setup enables the alias `rungo` to attempt to run a `main.go` file in the working dir, or `rungo <filename>.go` if the target file is not main.go

## Related Configurations

For a seamless development experience, check out my [Tmux configuration](https://github.com/ctheil/tmux-config) which complements this NeoVim setup.---
