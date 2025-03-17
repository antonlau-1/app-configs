return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,
            },
            indent = {
                enable = true,
                disable = { "yaml" },
            },
            autotag = {
                enable = true
            },
            ensure_installed = {
                "go",
                "yaml",
                "json",
                "dockerfile",
                "javascript",
                "typescript",
                "lua",
                "vim",
                "vimdoc",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-g>",
                    node_incremental = "<C-g>",
                    scope_incremental = false,
                    node_decremental = "<C-t>",
                },
            },
        })
    end,
}
