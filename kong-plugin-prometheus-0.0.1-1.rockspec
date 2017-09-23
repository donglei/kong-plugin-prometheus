package = "kong-plugin-prometheus"
version = "0.0.1-1"

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/Mashape/kong_plugin",
  tag = "0.1.0"
}

description = {
  summary = "Exposes metrics for prometheus on the admin endpoint of Kong.",
  homepage = "https://github.com/yciabaud/kong-plugin-prometheus",
  license = "MIT"
}

dependencies = {
}

local pluginName = "prometheus"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
  }
}