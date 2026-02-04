return {
  url = "https://codeberg.org/andyg/leap.nvim",
  config = function()
    local leap = require("leap")
    leap.opts.preview = function(ch0, ch1, ch2)
      return not (
        ch1:match("%s")                                              -- ignore whitespace
        or (ch0:match('%a') and ch1:match('%a') and ch2:match('%a')) -- ignore inside words
      )
    end
    leap.opts.equivalence_classes = {
      ' \t\r\n', '([{', ')]}', '\'"`'
    }
    require("leap.user").set_repeat_keys('<enter>', '<backspace>')
  end,
}
