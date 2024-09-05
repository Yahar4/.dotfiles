local options = {
    formatters_by_ft = {
        lua = { "stylua" },
    },
    format_on_save = {
    -- These options will be passed to conform.format()
       timeout_ms = 500,
       lsp_fallback = true,
    },

    go = { "gofumpt", "goimports-reviser", "golines" },
    formatters = {
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=80" },
        },
    },

    python = { "isort", "black" },
    formatters = {
        -- Python
        black = {
            prepend_args = {
                "--fast",
                "--line-length",
                "80",
            },
        },
        isort = {
            prepend_args = {
                "--profile",
                "black",
            },
        },
    },
}

require("conform").setup(options)
