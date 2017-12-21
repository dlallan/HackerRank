function kangaroo(x1, v1, x2, v2)
    result = "NO"
    -- make sure not impossible
    if ((x1 ~= x2) and (v1 - v2 ~= 0)) then
        hops = (x2 - x1)/(v1 - v2)
        if (hops > 0 and hops == math.floor(hops)) then
            result = "YES"
        end
    end
    return result
end    
x1,v1,x2,v2 = io.read("*number", "*number", "*number", "*l")
print (kangaroo(x1,v1,x2,v2))