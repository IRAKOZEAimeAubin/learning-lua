-- 1. Comments

-- Single Line Comment
--[[
Multiline Comment 
]]

-- 2. Variables and Flow Control

num = 42
singleQuoteString = 'Hello' -- Immutable strings
doubleQuoteString = "World!" -- Also fine and immutable
multilineString = [[Hello Lua,
Get in!
]]

doubleQuoteString = nil -- Undefines doubleQuoteString

-- Blocks are denoted with keywords like do/end
while num < 50 do
    num = num + 1
    print(num)
end

-- If clauses
if num < 40 then
    print('over 40')
elseif singleQuoteString ~= 'Hello' then -- ~= means is not equals
    -- Equality check is == like Python; also valid for strings
    io.write('not over 40\n') -- Defaults to stdout
else
    -- Variables are global by default
    globalVariable = 5 -- Camel case is common

    -- How to make a variable local
    local line = io.read() -- Reads next stdin line

    -- String concatenation uses the .. operator:
    print('Winter is coming, ' .. line)
end

-- Undefined variables return nil
-- This is not an error
foo = anUnknownVariable -- Now foo = nil

aBooleanValue = false

-- Only nil and false are falsy; 0 and '' are truthy
if not aBooleanValue then print('It was not true!') end

-- 'or' and 'and' are short-circuited
-- This is similar to the ternary(a ? b : c) operator in C/JS
ans = aBooleanValue and 'yes' or 'no'

karlSum = 0

for i = 1, 100 do
    karlSum = karlSum + i
end
print(karlSum)

-- Use '100, 1, -1' as the range to countdown
fredSum = 0
for j = 100, 1, -1 do fredSum = fredSum + j end
print(fredSum)

-- Generally, the approach is begin, end[, step]
-- Another way to construct a loop
someNum = 4
repeat
    print('Luke, I am your father')
    someNum = someNum - 1
until someNum == 0

-- 3. Functions


