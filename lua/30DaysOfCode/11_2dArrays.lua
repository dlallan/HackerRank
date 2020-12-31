arr = {}
for arr_i = 1,6 do
   arr_temp = io.read()
   arr_j = 1
   arr[arr_i] = {}
   for token in string.gmatch(arr_temp, "[^%s]+") do
      arr[arr_i][arr_j] = token
      arr_j = arr_j + 1
   end
end

function Get_Array_Sum(arr)
    sum = 0
    for i=1,#arr do
        sum = sum + arr[i]
    end
    return sum
end

function Get_Hourglasses(arr)
    hourglasses = {}
	curr = {}
    for i=1,#arr-1 do

        for j=1,#arr[i]-1 do
            if (i + 2 <= #arr and j + 2 <= #arr[i]) then
                table.insert(curr,arr[i][j])
                table.insert(curr,arr[i][j + 1])
                table.insert(curr,arr[i][j + 2])
                table.insert(curr,arr[i + 1][j + 1])
                table.insert(curr,arr[i + 2][j])
                table.insert(curr,arr[i + 2][j + 1])
                table.insert(curr,arr[i + 2][j + 2])
				table.insert(hourglasses,curr)
				curr = {}
            end
        end

    end
    return hourglasses
end

function maxHourglass(n)
    hgs = Get_Hourglasses(n)
    sums = {}
    for i=1,#hgs do
        table.insert(sums,Get_Array_Sum(hgs[i]))
    end
    return math.max(table.unpack(sums))
end

print (math.floor(maxHourglass(arr)))