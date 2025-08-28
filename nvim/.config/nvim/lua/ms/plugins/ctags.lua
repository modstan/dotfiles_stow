return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = { "folke/which-key.nvim" },
  config = function()
    require("cscope_maps").setup({
      skip_input_prompt = false, -- Ask before searching
      prefix = "<leader>c", -- prefix to trigger maps
      cscope = {
        db_file = "./cscope.out", -- Default cscope database file
        search_mode = "prompt",   -- Choose search mode ('prompt' or 'normal')
        silent = false,           -- Show messages
        picker = "telescope",
        skip_picker_for_single_result = false,
      }
    })
  end
}
