-- Enter your code here. Read input from STDIN. Print output to STDOUT
function MeanMedianMode(n, arr)
    mean,median,mode = 0,0,nil
    sum = 0
    matches = {}

    for i=1,n,1 do
        sum = sum + arr[i]
        if (matches[tostring(arr[i])] == nil) then
			matches[tostring(arr[i])] = 1
        else
            matches[tostring(arr[i])] = matches[tostring(arr[i])] + 1
        end
    end

    mean = sum / n
    table.sort(arr, function(a,b) return tonumber(a) < tonumber(b) end)
    if (n % 2 == 0) then
        median = (arr[n/2] + arr[n/2+1]) / 2
    else
        median = arr[n/2]
    end

	freqs = {}
	for _,f in pairs(matches) do
		table.insert(freqs,f)
	end
	max_freq = math.max(table.unpack(freqs))
	-- check if freq occurs more than once
	for k,freq in pairs(matches) do
		if (freq == max_freq) then
			if (mode == nil) then
				mode = k
			elseif (tonumber(k) < tonumber(mode)) then
				mode = k
			end
		end
	end

	print (mean)
    print (median)
    print (mode)
end
n = io.read()
arr_temp = io.read()
arr = {}
arr_i = 1
for token in string.gmatch(arr_temp, "[^%s]+") do
    arr[arr_i] = token
    arr_i = arr_i + 1
end
MeanMedianMode(n,arr)