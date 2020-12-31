n = io.read("*number", "*l")
local stairs = function(n)
    output = ''
    for i=1,n,1 do
        output = output..string.rep(' ',n - i)..string.rep('#',i).."\n"
    end
    return output
end
print (stairs(n))