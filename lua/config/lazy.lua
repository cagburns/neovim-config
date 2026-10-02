-- Lightweight lazy-loading helpers for use with vim.pack.
--
-- vim.pack has no built-in equivalent of lazy.nvim's `event`/`cmd`/`ft`/`keys`
-- loading specs: once init.lua finishes sourcing, Neovim immediately loads
-- every plugin added via vim.pack.add. These helpers defer requiring a
-- plugin's config module (and therefore its vim.pack.add call) until it's
-- actually needed, which keeps that work off the startup path entirely.
--
-- Only use the keymap/command helpers for plugins that register their own
-- keymaps/commands inside their own plugins/*.lua file. Plugins whose
-- keymaps live in config/keymaps.lua (e.g. leap, persistence) should be
-- deferred with on_event instead, so the real mapping is never clobbered by
-- a stub.

local M = {}

--- Defer requiring `module` until one of `events` fires.
--- @param events string|string[]
--- @param module string
--- @param pattern string|string[]|nil restrict to e.g. a list of filetypes
function M.on_event(events, module, pattern)
  vim.api.nvim_create_autocmd(events, {
    pattern = pattern,
    once = true,
    callback = function()
      require(module)
    end,
  })
end

--- Defer requiring `module` until one of `filetypes` is opened.
--- @param filetypes string|string[]
--- @param module string
function M.on_ft(filetypes, module)
  M.on_event("FileType", module, filetypes)
end

--- Defer requiring `module` until shortly after startup finishes, off the
--- critical startup path.
--- @param module string
--- @param delay number|nil ms, default 0
function M.on_startup(module, delay)
  vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
      vim.defer_fn(function()
        require(module)
      end, delay or 0)
    end,
  })
end

--- Defer requiring `module` until one of the user commands in `cmds` is run.
--- The real plugin must define the same command itself; the original
--- invocation (args/bang) is replayed once the plugin is loaded.
--- @param cmds string[]
--- @param module string
function M.on_cmd(cmds, module)
  for _, name in ipairs(cmds) do
    vim.api.nvim_create_user_command(name, function(opts)
      pcall(vim.api.nvim_del_user_command, name)
      require(module)
      local cmd = name .. (opts.bang and "!" or "") .. " " .. (opts.args or "")
      vim.cmd(cmd)
    end, { nargs = "*", bang = true, desc = "Lazy-load " .. module })
  end
end

--- Defer requiring `module` until one of `keys` is pressed.
--- Each entry is { lhs, mode = "n" }. The real plugin must set its own
--- keymap for the same lhs/mode; the key press is replayed once loaded.
--- @param keys table[]
--- @param module string
function M.on_keys(keys, module)
  for _, k in ipairs(keys) do
    local lhs = k[1]
    local mode = k.mode or "n"
    vim.keymap.set(mode, lhs, function()
      pcall(vim.keymap.del, mode, lhs)
      require(module)
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(lhs, true, false, true), mode, false)
    end, { desc = "Lazy-load " .. module })
  end
end

return M
