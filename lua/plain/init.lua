local palette = require("plain.palette")

local M = {
    options = {
        dim_comments = false,
        fg = "default",
    }
}

function M.setup(opts)
    M.options = vim.tbl_deep_extend("force", M.options, opts or {})
end

function M.load()
    local fg = palette.fg_variants[M.options.fg] or palette.fg
    local comment_fg = fg
    local set = vim.api.nvim_set_hl

    if M.options.dim_comments then
        comment_fg = palette.comment
    end

    set(0, "Normal", {
        fg = fg,
        bg = palette.bg,
    })

    set(0, "Comment", {
        fg = comment_fg,
        italic = true,
    })

    set(0, "Constant", { fg = fg })
    set(0, "String", { fg = fg })
    set(0, "Character", { fg = fg })
    set(0, "Number", { fg = fg })
    set(0, "Boolean", { fg = fg })
    set(0, "Float", { fg = fg })

    set(0, "Identifier", { fg = fg })
    set(0, "Function", { fg = fg })

    set(0, "Statement", { fg = fg })
    set(0, "Conditional", { fg = fg })
    set(0, "Repeat", { fg = fg })
    set(0, "Operator", { fg = fg })
    set(0, "Keyword", { fg = fg })

    set(0, "Type", { fg = fg })
    set(0, "PreProc", { fg = fg })
    set(0, "Special", { fg = fg })

    set(0, "Directory", { fg = fg })

    set(0, "Delimiter", { fg = fg })

    -- UI
    set(0, "LineNr", { fg = palette.linenr })
    set(0, "CursorLineNr", { fg = palette.cursorlinenr})

    set(0, "Visual", { bg = palette.visual })
    set(0, "Search", { bg = palette.search })

    -- Treesitter
    set(0, "@variable", { fg = fg })
    set(0, "@function", { fg = fg })
    set(0, "@keyword", { fg = fg })
    set(0, "@string", { fg = fg })
    set(0, "@punctuation.bracket", { fg = fg })
    set(0, "@punctuation.delimiter", { fg = fg })
end

return M
