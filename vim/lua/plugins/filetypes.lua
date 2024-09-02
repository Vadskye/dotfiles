return {
    {
        'chrisbra/csv.vim',
        lazy = true,
        ft = "csv",
    },
    {
        "dag/vim-fish",
        lazy = true,
        ft = "fish",
    },
    {
	    'pangloss/vim-javascript',
        lazy = true,
	    ft = {'javascript', 'javascript.jsx'},
    },
    'mxw/vim-jsx', -- ft: javascript doesn't work here
    'udalov/kotlin-vim', -- ft=kotlin only loads this after a reload for some reason
    {
        'lervag/vimtex',
        lazy = true,
        ft = "tex",
    },
    {
        'moll/vim-node',
        lazy = true,
        ft = "javascript",
    },
    'jvirtanen/vim-hcl',
    {
        'vim-perl/vim-perl',
        lazy = true,
        ft = "perl",
    },
    {
        "digitaltoad/vim-pug",
        lazy = true,
        ft = {"jade", "pug"},
    },
    {
        'hynek/vim-python-pep8-indent',
        lazy = true,
        ft = 'python',
    },
    {
        'vim-python/python-syntax',
        lazy = true,
        ft = 'python',
    },
    {
        'rust-lang/rust.vim',
        lazy = true,
        ft = "rust",
    },
    {
        'keith/swift.vim',
        lazy = true,
        ft = "swift",
    },
    {
        'HerringtonDarkholme/yats.vim',
        lazy = true,
        ft = 'typescript',
    },
    {
        'MunifTanjim/prettier.nvim',
        lazy = true,
        ft = 'typescript',
    },
    {
        'mustache/vim-mustache-handlebars',
        lazy = true,
        ft ='mustache',
    },
    {
        'amadeus/vim-mjml',
        lazy = true,
        ft ='mjml',
    },
}
