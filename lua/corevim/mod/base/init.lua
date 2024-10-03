---@class corevim.Base
local M = {}

---@module "corevim.mod.base.setup"
local _setup
require("corevim.mod.base.setup")

M.config = _setup.config

M.package = {
  name = "corevim.base",
  version = "0.1.0-1",
}

return M
