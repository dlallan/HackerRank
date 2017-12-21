function simpleArraySum(n, ar)
    -- Complete this function
    local sum = 0
    for i=1,n,1 do
        sum = sum + ar[i]
    end
    return sum
end
n = io.read("*number", "*l")
ar = {}
ar_temp = io.read()
ar_i = 1
for token in string.gmatch(ar_temp, "[^%s]+") do
   ar[ar_i] = token
   ar_i = ar_i + 1
end
print(math.floor(simpleArraySum(n, ar)))