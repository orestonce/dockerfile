local json = require("json")   -- 加载json模块
local ops = require("redisOps") --加载redis操作模块

-- https://stackoverflow.com/a/65477617/4264448
local function hexEncode(str)
   return (str:gsub(".", function(char) return string.format("%02x", char:byte()) end))
end

-- https://stackoverflow.com/a/35303321/4264448
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' -- You will need this for encoding/decoding
-- encoding
function base64Encode(data)
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

local row = ops.rawRow()  --数据库当前变更的一行数据,table类型，key为列名称
local action = ops.rawAction()  --当前数据库事件,包括：insert、updare、delete

local newTable = {}
local tmpRow = {}

tmpRow["Id"] = row["id"]
tmpRow["Name"] = base64Encode(row["name"])	--name是二进制数据，不能使用json/string类型正确传递, 此处转换为base64或者hex都行
newTable["row"] = tmpRow
newTable["action"] = action
local val = json.encode(newTable) -- 将newTable转为json
ops.RPUSH("t_user",val)

