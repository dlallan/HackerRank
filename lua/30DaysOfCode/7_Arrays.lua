n = io.read("*number", "*l")
arr = {}
arr_temp = io.read()
arr_i = 1;
for token in string.gmatch(arr_temp, "[^%s]+") do
   arr[arr_i] = token
   arr_i = arr_i + 1
end
output = ''
for i=#arr,1,-1 do
    output = output..arr[i]..' '
end
print (output)