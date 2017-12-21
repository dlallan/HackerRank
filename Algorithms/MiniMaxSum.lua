arr = {}
arr_temp = io.read()
arr_i = 1;
for token in string.gmatch(arr_temp, "[^%s]+") do
   arr[arr_i] = token
   arr_i = arr_i + 1
end

local minMax = function(a)
    sum,results = 0,{}
    for i=1,#arr,1 do
        sum = 0
        for j=1,#arr,1 do
            if (i ~= j) then 
                sum = sum + a[j]
            end
        end
        table.insert(results,1,sum)
    end
    return math.floor(math.min(table.unpack(results)))..' '..math.floor(math.max(table.unpack(results)))
end

print (minMax(arr))