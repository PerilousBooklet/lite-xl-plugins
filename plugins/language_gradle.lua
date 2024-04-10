-- mod-version:3
local syntax = require "core.syntax"

-- https://docs.gradle.org/current/userguide/writing_build_scripts.html

syntax.add {
  name = "Gradle",
  files = { "%.gradle$" },
  comment = "//",
  block_comment = { "/*", "*/" },
  patterns = {
    { pattern = "//.*",                          type = "comment"  },
    { pattern = { "/%*", "%*/" },                type = "comment"  },
    { pattern = { '"', '"', '\\' },              type = "string"   },
    { pattern = { "'", "'", '\\' },              type = "string"   },
    { pattern = "[%-%+!~@%?:&|%^<>%*/=%%]",      type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",              type = "function" },
    { pattern = "[%a_][%w_]*%f[<]",              type = "function" },
    { regex   = "[a-zA-Z]+(?=\\s\\=?\\s)",       type = "keyword"  },
    { regex   = "[a-zA-Z]+(?=\\s?\\')",          type = "keyword2" },
  },
  symbols = {
    ["id"]         = "keyword",
    ["version"]    = "keyword",
    ["from"]       = "keyword",
    ["include"]    = "keyword",
  }
}
