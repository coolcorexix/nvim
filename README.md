# Neovim Configuration

A custom Neovim configuration using lazy.nvim for plugin management.

## Structure

```
lua/
├── config/
│   ├── autocmds.lua  # Autocmds configuration
│   ├── keymaps.lua   # Key mappings
│   ├── lazy.lua      # Lazy.nvim setup
│   └── options.lua   # Neovim options
└── plugins/          # Plugin configurations
```

## Installation

1. Make sure you have Neovim installed (0.9+)
2. Clone or copy this configuration to `~/.config/nvim/`
3. Open Neovim and plugins will be automatically installed via lazy.nvim

## Customization

Add your plugin configurations in `lua/plugins/` directory.
Each file in this directory will be automatically loaded by lazy.nvim.
