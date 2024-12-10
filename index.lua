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

function fib(n)
    if n < 2 then return 1 end
    return fib(n - 2) + fib(n - 1)
end

fib10 = fib(10)
print(fib10)

-- Closures and anonymous functions are ok
function adder(x)
    --[[ The returned function is created when adder
    called, and remembers the value of x ]]
    return function (y) return x + y end
end

a1 = adder(22)
a2 = adder(12)
print(a1(22))
print(a2(4))

--[[ Returns, func calls, and assignments all work
with lists that may be mismatched in length
unmatched receivers are nil
unmatched senders are discarded]]

x, y, z = 1, 2, 3, 4
-- Now x = 1, y = 2, z = 3, and 4 is thrown away

function bar(a, b, c)
    print(a, b, c)
    return 4, 8, 12, 16, 20, 24
end

x, y = bar('perceval')
-- Now x = 4, y = 8, values 12...24 are discarded

-- Functions are first-class, may be local/global
-- These are the same
function f(x) return x * x end
f = function (x) return x * x end

-- And so are these
local function g(x) return math.sin(x) end
local g; g = function (x) return math.cos(x) end
-- the 'local g' declaration makes g-self-references ok

-- Trigonometric functions work in radians, by the way

-- Calls with one string param don't need parenthesis
print 'Hello' -- Works fine


