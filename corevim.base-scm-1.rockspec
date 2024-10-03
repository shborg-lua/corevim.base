---@diagnostic disable:lowercase-global

rockspec_format = "3.0"
package = "corevim.base"
version = "scm-1"
source = {
  url = "https://github.com/shborg-lua/corevim.base/archive/vscm.zip",
}
description = {
  summary = "CoreVim Base Package",
  homepage = "http://github.com/shborg-lua/corevim.base",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {},
  copy_directories = {},
  platforms = {},
}
test_dependencies = {
  "busted",
  "busted-htest",
  "nlua",
  "luacov",
  "luacov-html",
  "luacov-multiple",
  "luacov-console",
  "luafilesystem",
}
test = {
  type = "busted",
}
