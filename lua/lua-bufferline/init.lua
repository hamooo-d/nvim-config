require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin"
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = "#161925"
        },
        fill = {
            guifg = comment_fg,
            guibg = "#161925"
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = "#303650",
            gui = "bold"
        },
        buffer_visible = {
            guifg = "#434b70",
            guibg = "#161925"
        },
        separator_visible = {
            guifg = "#161925",
            guibg = "#161925"
        },
        separator_selected = {
            guifg = "#161925",
            guibg = "#161925"
        },
        separator = {
            guifg = "#161925",
            guibg = "#161925"
        },
        indicator_selected = {
            guifg = "#161925",
            guibg = "#161925"
        },
        modified_selected = {
            guifg = string_fg,
            guibg = "#353b45"
        }
    }
}
