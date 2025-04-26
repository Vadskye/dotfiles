return {
    {
         "junegunn/fzf.vim",
         dependencies = "junegunn/fzf",
    },
    {
        'mileszs/ack.vim',
        lazy = true,
        cmd = "Ack",
    },
    'vadskye/vim-checkpoint',
    -- {
        -- 'vim-airline/vim-airline',
        -- dependencies = 'vim-airline/vim-airline-themes',
    -- },
     'tpope/vim-commentary',
    {
        'coot/EnchantedVim',
        dependencies = 'coot/CRDispatcher',
    },
    'junegunn/vim-easy-align',
    "tpope/vim-fugitive",
    'michaeljsmith/vim-indent-object',
    'vadskye/vim-meta',
    'vim-scripts/mru.vim',
    {
        'scrooloose/nerdtree',
        lazy = true,
        cmd = "NERDTree",
    },
    'tpope/vim-repeat',
    -- 'ervandew/supertab',
    'tpope/vim-surround',
    'SirVer/ultisnips',
    {
        'Shougo/vimproc',
        build = 'make',
    },
    'jose-elias-alvarez/null-ls.nvim'
}
