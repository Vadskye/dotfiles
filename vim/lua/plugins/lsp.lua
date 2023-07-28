return {
    -- Collection of common configurations for the Nvim LSP client
    "neovim/nvim-lspconfig",
    -- Autocompletion framework
    {
        "hrsh7th/nvim-cmp",
        -- these dependencies will only be loaded when cmp loads
        -- dependencies are always lazy-loaded unless specified otherwise
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            -- cmp Snippet completion
            "hrsh7th/cmp-vsnip",
            -- cmp Path completion
            "hrsh7th/cmp-path",
        },
    },
    -- See hrsh7th other plugins for more great completion sources!
    -- Snippet engine
    'hrsh7th/vim-vsnip',
    -- Adds extra functionality for rust analyzer
    "simrat39/rust-tools.nvim",

    -- Optional
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
}
