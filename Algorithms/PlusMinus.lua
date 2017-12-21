local fractions = function(n,arr)
    pos,neg,zer = 0,0,0
    for i=1,n,1 do
        if (tonumber(arr[i]) > 0) then
            pos = pos + 1
        elseif (tonumber(arr[i]) < 0) then
            neg = neg + 1
        else
            zer = zer + 1
        end
    end
    return {pos / n, neg / n, zer / n}
end
n = io.read("*number", "*l")
arr = {}
arr_temp = io.read()
arr_i = 1;
for token in string.gmatch(arr_temp, "[^%s]+") do
   arr[arr_i] = token
   arr_i = arr_i + 1
end
result = fractions(n,arr)
for i=1,3,1 do
    print(result[i])
end