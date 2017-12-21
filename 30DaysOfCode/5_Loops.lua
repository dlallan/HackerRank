function PrintMultiples(n)
    for i = 1,10 do
        print (n.." x "..i.." = "..n*i)
    end
end
n = io.read("*number", "*l")
PrintMultiples(n)