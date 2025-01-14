-- mod-version:3
local syntax = require "core.syntax"

-- Language Syntax Reference
-- https://plantuml.com/

syntax.add {
  name = "Plantuml",
  files = "%.puml$",
  comment = "//",
  block_comment = {"/*", "*/"},
  patterns = {
    { pattern = "^%@%w+", type = "keyword" }, -- ?
    --{ pattern = "", type = "" }, -- ?
    { pattern = "[%+%-=/%*%^%%<>!~|&%?%:]",      type = "operator" }, -- Operators
    { pattern = "[%a_][%w_]*",                 type = "symbol"   } -- Everything else
  },
  symbols = {
    ["true"] = "literal",
  }
}
