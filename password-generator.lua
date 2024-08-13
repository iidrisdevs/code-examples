--[[use this for passwords, codes and shit
heres a example of what it prints:
e�4G$R`b9'fj^p�zDi�0Jh��-�
]]--

math.randomseed(os.time())

local chars = {}
for i = 48, 57 do table.insert(chars, string.char(i)) end 
for i = 65, 90 do table.insert(chars, string.char(i)) end
for i = 97, 122 do table.insert(chars, string.char(i)) end
for i = 33, 47 do table.insert(chars, string.char(i)) end
for i = 58, 64 do table.insert(chars, string.char(i)) end
for i = 91, 96 do table.insert(chars, string.char(i)) end
for i = 123, 126 do table.insert(chars, string.char(i)) end 
for i = 127, 159 do table.insert(chars, string.char(i)) end

local result = {}
local used = {}

while #result < 26 do
    local char
    repeat
        char = chars[math.random(#chars)]
    until not used[char]
    
    table.insert(result, char)
    used[char] = true
end

print(table.concat(result))
