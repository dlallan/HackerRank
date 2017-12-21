function birthdayCakeCandles(n, ar)
    -- Complete this function
    tallestHeight = math.max(table.unpack(ar))
    tallCount = 0
    for i=1,n,1 do
        if (tonumber(ar[i]) == tonumber(tallestHeight)) then
            tallCount = tallCount + 1
        elseif (tonumber(ar[i]) > tonumber(tallestHeight)) then
            tallestHeight = ar[i]
            tallCount = 1
        end
    end
    return tallCount
end
n = io.read("*number", "*l")
ar = {}
ar_temp = io.read()
ar_i = 1
for token in string.gmatch(ar_temp, "[^%s]+") do
   ar[ar_i] = token
   ar_i = ar_i + 1
end
print (math.floor(birthdayCakeCandles(n, ar)))
