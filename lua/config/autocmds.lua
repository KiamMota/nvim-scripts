local corrections = {
  ["include"] = {"INcluide", "incldue", "inclide", "Include"},
  ["length"] = {"lenght", "lengh"},
  ["namespace"] = {"namesapce", "namespce"},
  ["width"] = {"witdht", "widht"},
  ["return"] = {"retun", "retrn"},
  ["function"] = {"fucntion", "functoin"},
  ["const"] = {"constr", "cosnt"},
  ["class"] = {"calss", "lcass"}
}

for correct, wrongs in pairs(corrections) do
  for _, wrong in ipairs(wrongs) do
    vim.cmd(string.format("iabbrev %s %s", wrong, correct))
  end
end

