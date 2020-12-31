function diagonalAbsDifference(n,a)
    sumA, sumB = 0,0
    
    for i=1,n,1 do
        for j=1,n,1 do
            if (i == j) then 
                sumA = sumA + a[i][j]
            end
            if (j == n - i + 1) then
                sumB = sumB + a[i][j]
            end
        end
    end
    return math.floor(math.abs(sumA - sumB))
end
n = io.read("*number", "*l")
a = {}
for a_i = 1,n do
   a_temp = io.read()
   a_j = 1
   a[a_i] = {}
   for token in string.gmatch(a_temp, "[^%s]+") do
      a[a_i][a_j] = token
      a_j = a_j + 1
   end
end
print (diagonalAbsDifference(n, a))