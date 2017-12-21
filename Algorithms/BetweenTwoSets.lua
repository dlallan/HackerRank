function getTotalX(a, b)
    -- Complete this function
    count = 0
    i = a[#a]
    repeat
        failed = false
        for j=1,#a,1 do
            if (i % a[j] ~= 0) then
                failed = true
                break
            end
        end
        for k=1,#b,1 do
            if (b[k] % i ~= 0) then
                failed = true
                break
            end
        end
        if (not failed) then
            count = count + 1
        end
        i = i + 1
    until (i > tonumber(b[1]))
    return count
end
n,m = io.read("*number", "*number", "*l")
a = {}
a_temp = io.read()
a_i = 1
for token in string.gmatch(a_temp, "[^%s]+") do
   a[a_i] = token
   a_i = a_i + 1
end
b = {}
b_temp = io.read()
b_i = 1
for token in string.gmatch(b_temp, "[^%s]+") do
   b[b_i] = token
   b_i = b_i + 1
end
print(getTotalX(a,b))