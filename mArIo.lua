if not lsnes_features then
  print "Your emulator isn't supported :("
  return
end

local scripts_folder = "src"
local lua_script_filename = "@@LUA_SCRIPT_FILENAME@@"
local project_root = lua_script_filename:match("..(.+)[/\\][^/\\+]") .. "/"
local scripts_path = project_root .. scripts_folder .. "/?.lua"
package.path = package.path .. ";" .. scripts_path

require("entrypoint")
