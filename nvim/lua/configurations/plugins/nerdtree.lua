return {
  "preservim/nerdtree",
  lazy = false,
  init = function()
    vim.g.NERDTreeShowHidden = 1
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        local argc = vim.fn.argc()
        local stdin_exists = vim.fn.exists("s:std_in")
        if argc == 0 and stdin_exists == 0 then
          vim.cmd("NERDTree")
        end
      end,
    })
  end,
}

