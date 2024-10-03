---@class corevim.base.setup
---@field _setup_done boolean
local M = {}

---@class corevim.base.SetupOptions

---@param _ table
---@param opts corevim.base.SetupOptions
function M.config(_, opts)
  M._setup_done = true
end

return M
