return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function(_, opts)
    -- LazyVim already includes branch by default in lualine_b
    -- But if you want to ensure it's there or customize it, you can do it here.
    -- This configuration ensures 'branch' is in the lualine_b section.
    opts.sections = opts.sections or {}
    opts.sections.lualine_b = opts.sections.lualine_b or {}
    
    -- Check if branch is already in lualine_b, if not add it
    local has_branch = false
    for _, section in ipairs(opts.sections.lualine_b) do
      if type(section) == "table" and section[1] == "branch" or section == "branch" then
        has_branch = true
        break
      end
    end
    
    if not has_branch then
      table.insert(opts.sections.lualine_b, "branch")
    end
  end,
}

