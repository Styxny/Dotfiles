return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    opts = {
        defaults = {

            -- Path Display
            dynamic_preview_title = true,
            path_display = { "smart" },

            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    width = { padding = 0 },
                    height = { padding = 0 },
                    preview_width = 0.5,
                },
            },
        },
    },
}
