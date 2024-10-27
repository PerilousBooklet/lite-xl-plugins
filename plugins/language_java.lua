-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "Java",
  files = { "%.java$" },
  comment = "//",
  patterns = {
    { pattern = "//.*",                                                         type = "comment"  },
    { pattern = { "/%*", "%*/" },                                               type = "comment"  },
    { pattern = { '"', '"', '\\' },                                             type = "string"   },
    { pattern = { "'", "'", '\\' },                                             type = "string"   },
    { pattern = "'\\x%x?%x?%x?%x'",                                             type = "string"   }, -- character hexadecimal escape sequence
    { pattern = "'\\u%x%x%x%x'",                                                type = "string"   }, -- character unicode escape sequence
    { pattern = "'\\?.'",                                                       type = "string"   }, -- character literal
    { pattern = "-?0x%x+",                                                      type = "number"   },
    { pattern = "-?%d+[%d%.eE]*f?",                                             type = "number"   },
    { pattern = "-?%.?%d+f?",                                                   type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",                                         type = "operator" },
    { pattern = "[%a_][%w_]*%f[(]",                                             type = "function" },
    { regex   = "(?:\\w+\\.?)+(?=\\s+\\w++\\s*\\=\\s*)",                        type = "function" }, -- Class name when creating an object
    { regex   = "[A-Z](?:A-Z_\\d?)+(?=\\s*[)]|[\\;]|[\\,]|[\\s\\=]|[\\.])",     type = "keyword2" }, -- Constants
    { pattern = "[%a_][%w_]*",                                                  type = "symbol"   },
  },
  symbols = {
    ["abstract"]      = "keyword",
    ["assert"]        = "keyword",
    ["break"]         = "keyword",
    ["case"]          = "keyword",
    ["catch"]         = "keyword",
    ["class"]         = "keyword",
    ["const"]         = "keyword",
    ["continue"]      = "keyword",
    ["default"]       = "keyword",
    ["do"]            = "keyword",
    ["else"]          = "keyword",
    ["enum"]          = "keyword",
    ["extends"]       = "keyword",
    ["final"]         = "keyword",
    ["finally"]       = "keyword",
    ["for"]           = "keyword",
    ["if"]            = "keyword",
    ["goto"]          = "keyword",
    ["implements"]    = "keyword",
    ["import"]        = "keyword",
    ["instanceof"]    = "keyword",
    ["interface"]     = "keyword",
    ["native"]        = "keyword",
    ["new"]           = "keyword",
    ["package"]       = "keyword",
    ["permits"]       = "keyword",
    ["private"]       = "keyword",
    ["protected"]     = "keyword",
    ["public"]        = "keyword",
    ["record"]        = "keyword",
    ["return"]        = "keyword",
    ["sealed"]        = "keyword",
    ["static"]        = "keyword",
    ["strictfp"]      = "keyword",
    ["super"]         = "keyword",
    ["switch"]        = "keyword",
    ["synchronized"]  = "keyword",
    ["this"]          = "keyword",
    ["throw"]         = "keyword",
    ["throws"]        = "keyword",
    ["transient"]     = "keyword",
    ["try"]           = "keyword",
    ["var"]           = "keyword",
    ["void"]          = "keyword",
    ["volatile"]      = "keyword",
    ["while"]         = "keyword",
    ["yield"]         = "keyword",

    ["boolean"]       = "keyword2",
    ["byte"]          = "keyword2",
    ["char"]          = "keyword2",
    ["double"]        = "keyword2",
    ["float"]         = "keyword2",
    ["int"]           = "keyword2",
    ["long"]          = "keyword2",
    ["short"]         = "keyword2",

    ["true"]     = "literal",
    ["false"]    = "literal",
    ["null"]     = "literal"
  }
}
