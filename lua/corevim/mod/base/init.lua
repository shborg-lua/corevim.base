---@class corevim.Base
local M = {}

---@module "corevim.mod.base.config"
local _config = require("corevim.mod.base.config")

M.config = _config.config

M.package = {
  name = "corevim.base",
  version = "0.1.0-1",
}

return M
