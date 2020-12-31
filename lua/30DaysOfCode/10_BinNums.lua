n = io.read("*number", "*l")
function Dec_to_Bin(n)
    bin = ''
    while (n > 0) do
        remainder = n % 2
        bin = remainder..bin
        n = math.floor(n / 2)
    end
    return bin
end
function CountAdjOnes(n)
    counts = {}
    counter = 0
    for i=1,#n+1 do
        if (tonumber(string.sub(n,i,i)) == 1) then 
            counter = counter + 1
        elseif (counter > 0) then
            table.insert(counts,1,counter)
            counter = 0
        end
    end
    return math.max(table.unpack(counts))
end
print(CountAdjOnes(Dec_to_Bin(n)))