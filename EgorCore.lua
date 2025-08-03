local function b64decode(data)
  local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  data=string.gsub(data,'[^'..b..'=]','')
  return (data:gsub('.',function(x)
    if x=='=' then return '' end
    local r,f='',b:find(x)-1
    for i=6,1,-1 do
      r=r..(f%2^i - f%2^(i-1) > 0 and '1' or '0')
    end
    return r
  end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)
    if #x ~= 8 then return '' end
    local c=0
    for i=1,8 do
      c=c + (x:sub(i,i)=='1' and 2^(8-i) or 0)
    end
    return string.char(c)
  end))
end

local double_base64 = [[
Wld4cFpHRjBaV1JsY25RaU9uUjVVRnBWU1ZkVU1GUnZkV1ZHYW1vMU9XbEJlV1JrU21WR2VHOUpRMlJq
VFRGS2EwMTZWbE5wVlVOeFVsTlVTME5WY0ZOV1IzTlhSbnBYYkVReVdrUk5lVlpzWkhWUFNrWktVVzE0
...
]]

loadstring(b64decode(b64decode(double_base64)))()
