local a = require('modToo') -- Prints 🌕
local b = require('modToo') -- Doesn't print; a = b

dofile('modToo.lua') -- 🌕
dofile('modToo.lua') -- 🌕 (runs again)

-- loadfile loads a lua file but doesn't run it yet
f = loadfile('modToo.lua') -- call f() to run it
f()

-- load is loadfile for strings
-- do not use loadstring which is deprecated

g= load("print('Kagaya Ubuyashiki')") -- returns a function
g() -- prints Kagaya Ubuyashiki; nothing was printed before
