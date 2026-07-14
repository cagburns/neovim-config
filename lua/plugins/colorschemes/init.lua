local colorscheme_dir = vim.fs.joinpath(vim.fn.stdpath("config"), "lua", "plugins", "colorschemes")
local colorscheme_modules = {}

for name, kind in vim.fs.dir(colorscheme_dir) do
  if kind == "file" and name:sub(-4) == ".lua" and name ~= "init.lua" then
    table.insert(colorscheme_modules, "plugins.colorschemes." .. name:sub(1, -5))
  end
end

table.sort(colorscheme_modules)

for _, module_name in ipairs(colorscheme_modules) do
  require(module_name)
end
