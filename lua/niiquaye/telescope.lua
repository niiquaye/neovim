local telescope = require('telescope')

telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<C-f>"] = "find_files"
            }
        }
        
        
    }

}

telescope.load_extension('fzf')

