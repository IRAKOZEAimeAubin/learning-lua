local mod = require('mod') -- Run the file mod.lua

-- require is the standard way to include modules.
--[[ require acts like:     (if not cached; see below)
local mod = (function ()
  <contents of mod.lua>
end)()
-- It's like mod.lua is a function body, so that
-- locals inside mod.lua are invisible outside it.
]]

-- This works because mod here = M in mod.lua:
mod.greeting() -- Prints: Why hello there Hrunkner

-- This is wrong; sayMyName only exists in mod.lua:
mod.sayName()  -- error

-- require's return values are cached so a file is
-- run at most once, even when require'd many times.

print '🌕'
