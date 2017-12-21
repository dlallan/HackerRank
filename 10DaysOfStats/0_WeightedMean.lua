function WeightedAverage(n,x,w)
    sumProducts, sumWeights = 0,0
    for i=1,n,1 do
        sumProducts = sumProducts + x[i]*w[i]
        sumWeights = sumWeights + w[i]
    end
    return math.floor(sumProducts / sumWeights * 10 + 0.5) / 10
end
n = io.read()
x = {}
w = {}
x_temp = io.read("*line")
w_temp = io.read("*line")
x_i,w_i = 1,1
for token in string.gmatch(x_temp, "[^%s]+") do
    x[x_i] = token
    x_i = x_i + 1
end
--print (table.unpack(x))
for token in string.gmatch(w_temp, "[^%s]+") do
    w[w_i] = token
    w_i = w_i + 1
end
--print (table.unpack(w))
print (WeightedAverage(n,x,w))