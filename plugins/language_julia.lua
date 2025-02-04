-- mod-version:3
-- Support for the Julia programming language:
-- Covers the most used keywords up to Julia version 1.6.4

local syntax = require "core.syntax"

syntax.add {
  name = "Julia",
  files = { "%.jl$" },
  comment = "#",
  patterns = {
    { pattern = {"#=", "=#"},              type = "comment" },
    { pattern = "#.*$",                    type = "comment" },
    { pattern = { 'icxx"""', '"""' },      type = "string", syntax = ".cpp" },
    { pattern = { 'cxx"""', '"""' },       type = "string", syntax = ".cpp" },
    { pattern = { 'py"""', '"""' },        type = "string", syntax = ".py" },
    { pattern = { 'js"""', '"""' },        type = "string", syntax = ".js" },
    { pattern = { 'md"""', '"""' },        type = "string", syntax = ".md" },
    { pattern = "%d%w*[%.-+*//]",          type = "number" },
    { pattern = "0[oO_][0-7]+",            type = "number" },
    { pattern = "-?0x[%x_]+",              type = "number" },
    { pattern = "-?0b[%x_]+",              type = "number" },
    { pattern = "-?%d+_%d",                type = "number" },
    { pattern = "-?%d+[%d%.eE]*f?",        type = "number" },
    { pattern = "-?%.?%d+f?",              type = "number" },
    { pattern = "[^%d%g]%:%a*",            type = "function" },
    { pattern = "[%+%-=/%*%^%%<>!~|&%:]",  type = "operator"},
    { pattern = '""".*"""',                type = "string" },
    { pattern = '".*"',                    type = "string" },
    { pattern = '[bv]".*"',                type = "string" },
    { pattern = 'r".*$',                   type = "string" },
    { pattern = "'\\.*'",                  type = "string" },
    { pattern = "'.'",                     type = "string" },
    { pattern = "[%a_][%w_]*%f[(]",        type = "function" },
    { pattern = "%g*!",                    type = "function"},
    { pattern = "[%a_][%w_]*",             type = "symbol" },
  },
  symbols = {
    -- keywords
    ["baremodule"]        = "keyword",
    ["begin"]             = "keyword",
    ["break"]             = "keyword",
    ["catch"]             = "keyword",
    ["const"]             = "keyword",
    ["continue"]          = "keyword",
    ["do"]                = "keyword",
    ["Dict"]              = "keyword",
    ["Set"]               = "keyword",
    ["Union"]             = "keyword",
    ["else"]              = "keyword",
    ["elseif"]            = "keyword",
    ["end"]               = "keyword",
    ["export"]            = "keyword",
    ["finally"]           = "keyword",
    ["for"]               = "keyword",
    ["function"]          = "keyword",
    ["global"]            = "keyword",
    ["if"]                = "keyword",
    ["in"]                = "keyword",
    ["import"]            = "keyword",
    ["let"]               = "keyword",
    ["local"]             = "keyword",
    ["macro"]             = "keyword",
    ["type"]              = "keyword",
    ["module"]            = "keyword",
    ["mutable"]           = "keyword",
    ["quote"]             = "keyword",
    ["return"]            = "keyword",
    ["try"]               = "keyword",
    ["typeof"]            = "keyword",
    ["using"]             = "keyword",
    ["while"]             = "keyword",
    ["where"]             = "keyword",

    -- types
    ["struct"]            = "keyword2",
    ["abstract"]          = "keyword2",
    ["primitive"]         = "keyword2",
    ["mutable"]           = "keyword2",
    ["Char"]              = "keyword2",
    ["Bool"]              = "keyword2",
    ["Int"]               = "keyword2",
    ["Integer"]           = "keyword2",
    ["Int8"]              = "keyword2",
    ["UInt8"]             = "keyword2",
    ["Int16"]             = "keyword2",
    ["UInt16"]            = "keyword2",
    ["Int32"]             = "keyword2",
    ["UInt32"]            = "keyword2",
    ["Int64"]             = "keyword2",
    ["UInt64"]            = "keyword2",
    ["Int128"]            = "keyword2",
    ["UInt128"]           = "keyword2",
    ["Float16"]           = "keyword2",
    ["Float32"]           = "keyword2",
    ["Float64"]           = "keyword2",
    ["Vector"]            = "keyword2",
    ["Matrix"]            = "keyword2",
    ["Ref"]               = "keyword2",
    ["String"]            = "keyword2",
    ["Function"]          = "keyword2",
    ["Number"]            = "keyword2",

    -- literals
    ["missing"]          = "literal",
    ["true"]             = "literal",
    ["false"]            = "literal",
    ["nothing"]          = "literal",
    ["Inf"]              = "literal",
    ["NaN"]              = "literal",
  }
}
