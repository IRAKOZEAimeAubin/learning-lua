local M = {}

local function sayName()
    print('Splinter!')
end

function M.greeting()
    print('Hello, Master')
    sayName()
end

return M
