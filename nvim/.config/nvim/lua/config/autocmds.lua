-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Open the explorer when switching into a Git project.
local group = vim.api.nvim_create_augroup("project_explorer", { clear = true })

vim.api.nvim_create_autocmd("DirChanged", {
  group = group,
  pattern = { "global", "tabpage" },
  callback = function(event)
    -- Leave the startup dashboard alone.
    if vim.v.vim_did_enter == 0 then
      return
    end

    local dir = event.file

    vim.schedule(function()
      -- Only react when entering a Git repository root.
      if Snacks.git.get_root(dir) ~= dir then
        return
      end

      -- Replace any explorer showing the previous project.
      for _, picker in ipairs(Snacks.picker.get({ source = "explorer" })) do
        picker:close()
      end

      -- Open the new project's explorer without stealing focus.
      Snacks.explorer.open({ cwd = dir, enter = false })
    end)
  end,
})
