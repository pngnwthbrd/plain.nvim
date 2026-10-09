# plain.nvim

A minimal Neovim colorscheme that intentionally removes syntax highlighting.

`plain.nvim` is based on the idea that code should be read as text, not colors.  

## Philosophy

- Minimal visual distraction

## Features

- Fully monochrome design
- Optional `dim_comments` mode
- Selectable `fg` color variant (`default`, `nerdy`, `sunny`)

## Installation (Lazy.nvim)

```lua
{
  "pngnwthbrd/plain.nvim",
  priority = 1000,
  config = function()
    require("plain").setup({
      dim_comments = false,
      fg = "default", -- "default" | "nerdy" | "sunny"
    })

    vim.cmd.colorscheme("plain")
  end,
}
