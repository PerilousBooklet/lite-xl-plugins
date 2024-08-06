-- mod-version:3
local syntax = require "core.syntax"

syntax.add {
  name = "PLC Structured Text IEC 61131-3",
  files = { "%.stx?$", "%.iecst$" },
  comment = "//",
  block_comment = { "%(%*", "%*%)" },
  patterns = {
    { pattern = "//.*",                                     type = "comment"  }, -- Single-line comment
    { pattern = { "%(%*", "%*%)" },                         type = "comment"  }, -- Multi-line comment
    { pattern = { '"', '"', '\\' },                         type = "string"   }, -- String, quotation marks
    { pattern = { "'", "'", '\\' },                         type = "string"   }, -- String, apices
    { regex   = "\\w+\\#[0-9]+m?s?",                        type = "number"   }, -- Time/Date formats
    { regex   = "\\w+\\s?(?=[(])",                          type = "function" }, -- Function
    { regex   = "^\\s*[A-Z]+_[A-Z]*\\s?\\;?\\s?",           type = "keyword"  }, -- Keyword
    { regex   = "\\:\\s*\\w+",                              type = "keyword2" }, -- Variable/Method type
    { pattern = "[%+%-=/%*%^%%<>!~|&:]",                    type = "operator" }, -- Operators
    { regex   = "(\\-|\\+)\\d+\\.{2}(\\-|\\+)\\d+",         type = "number"   }, -- WIP: Number Range
    { pattern = "-?0x%x+",                                  type = "number"   }, -- Number
    { pattern = "-?%d+[%deE]*f?",                           type = "number"   }, -- Number
    { pattern = "-?%.?%d+f?",                               type = "number"   }, -- Number
    { regex   = "^\\w+()\\s(?:[A-Z]+[a-z]*\\_?)+(?=\\w*)",  type = { "normal", "function" } }, -- Function implementation
    -- TODO: symbols pattern
    -- https://pdhonline.com/courses/e334/e334content.pdf
  },
  symbols = {
    ["PROGRAM_INIT"] = "keyword",
    ["PROGRAM_CYCLIC"] = "keyword",
    
    ["PROGRAM_CLOSE"] = "keyword",
    ["END_PROGRAM"] = "keyword",
    ["FUNCTION_BLOCK"] = "keyword",
    ["END_FUNCTION_BLOCK"] = "keyword",
    ["FUNCTION"] = "keyword",
    ["END_FUNCTION"] = "keyword",
    ["METHOD"] = "keyword",
    ["END_METHOD"] = "keyword",
    
    ["IF"] = "keyword",
    ["THEN"] = "keyword",
    ["ELSE"] = "keyword",
    ["ELSIF"] = "keyword",
    ["END_IF"] = "keyword",
    ["CASE"] = "keyword",
    ["END_CASE"] = "keyword",
    ["OF"] = "keyword",

    ["MOD"] = "operator",
    
    ["AND"] = "keyword",
    ["NOT"] = "keyword",
    
    ["NAMESPACE"] = "keyword",
    ["END_NAMESPACE"] = "keyword",
    
    ["VAR"] = "keyword",
    ["END_VAR"] = "keyword",
    ["CONST"] = "keyword",
    ["END_CONST"] = "keyword",
    
    ["TYPE"] = "keyword",
    ["END_TYPE"] = "keyword",
    ["STRUCT"] = "keyword",
    ["END_STRUCT"] = "keyword",
    
    ["ORGANIZATION_BLOCK"] = "keyword",
    ["END_ORGANIZATION_BLOCK"] = "keyword",
    
    ["TRUE"] = "literal",
    ["FALSE"] = "literal",
    ["true"] = "literal",
    ["false"] = "literal",
    
    ["SINT"] = "keyword2",
    ["INT"] = "keyword2",
    ["DINT"] = "keyword2",
    ["LINT"] = "keyword2",
    ["USINT"] = "keyword2",
    ["UINT"] = "keyword2",
    ["UDINT"] = "keyword2",
    ["ULINT"] = "keyword2",
    ["LDINT"] = "keyword2",
    ["REAL"] = "keyword2",
    ["LREAL"] = "keyword2",
    ["TIME"] = "keyword2",
    ["DATE"] = "keyword2",
    ["TIME_OF_DAY"] = "keyword2",
    ["DATE_AND_TIME"] = "keyword2",
    ["STRING"] = "keyword2",
    ["BOOL"] = "keyword2",
    ["BYTE"] = "keyword2",
    ["WORD"] = "keyword2",
    ["DWORD"] = "keyword2",
    ["LWORD"] = "keyword2",
  }
}
