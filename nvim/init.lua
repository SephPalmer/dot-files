-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("user.options")
require("config.lazy")
require("user.colorscheme")


-- telescope setup --
require('telescope').setup({
  defaults = {
    -- Disable treesitter for previews to fix the ft_to_lang error
    preview = {
      treesitter = false
    },
  },
})


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    search_dirs = {
      "~/Dev", 
      "~/Documentation",
      "~/PersonalProjects",
      "~/.config",
      "~/RustroverProjects",
      "~/Tools"
      -- Add other specific directories you want to search
    }
  })
end)

-- Telescope key remaps
vim.keymap.set('n', '<leader>fl', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- General key remaps --
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

