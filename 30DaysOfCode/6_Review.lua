-- Enter your code here. Read input from STDIN. Print output to STDOUT
T = tonumber(io.read('*l'))
output = ''
for i=1,T,1 do
    line = io.read('*l')
    odds,evens = '',''
    for j=1,#line,1 do
        if (j % 2 ~= 0) then
			if (odds == nil) then
				odds = string.sub(line,j,j)
			else
				odds = odds..string.sub(line,j,j)
			end
		else
			if (evens == nil) then
				evens = string.sub(line,j,j)
			else
				evens = evens..string.sub(line,j,j)
			end
        end
    end
    if (output == '') then
		output = odds..' '..evens
	else
		output = output..'\n'..odds..' '..evens
	end
end
print (output)
