local palette = require("plain.palette")

local M = {
    options = {
        dim_comments = false,
    }
}

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

function M.load()
    local comment_fg = palette.fg
    local set = vim.api.nvim_set_hl

    if M.options.dim_comments then
        comment_fg = palette.comment
    end

    set(0, "Normal", {
        fg = palette.fg,
        bg = palette.bg,
    })

    set(0, "Comment", {
        fg = comment_fg,
        italic = true,
    })

    set(0, "Constant", { fg = palette.fg })
    set(0, "String", { fg = palette.fg })
    set(0, "Character", { fg = palette.fg })
    set(0, "Number", { fg = palette.fg })
    set(0, "Boolean", { fg = palette.fg })
    set(0, "Float", { fg = palette.fg })

    set(0, "Identifier", { fg = palette.fg })
    set(0, "Function", { fg = palette.fg })

    set(0, "Statement", { fg = palette.fg })
    set(0, "Conditional", { fg = palette.fg })
    set(0, "Repeat", { fg = palette.fg })
    set(0, "Operator", { fg = palette.fg })
    set(0, "Keyword", { fg = palette.fg })

    set(0, "Type", { fg = palette.fg })
    set(0, "PreProc", { fg = palette.fg })
    set(0, "Special", { fg = palette.fg })

    set(0, "Directory", { fg = palette.fg })

    -- UI
    set(0, "LineNr", { fg = palette.linenr })
    set(0, "CursorLineNr", { fg = palette.cursorlinenr})

    set(0, "Visual", { bg = palette.visual })
    set(0, "Search", { bg = palette.search })

    -- Treesitter
    set(0, "@variable", { fg = "#d0d0d0" })
    set(0, "@function", { fg = "#d0d0d0" })
    set(0, "@keyword", { fg = "#d0d0d0" })
    set(0, "@string", { fg = "#d0d0d0" })
end

return M
