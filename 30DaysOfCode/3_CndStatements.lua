function TestWeird(N)
    isOdd = (N % 2 ~= 0) 
    if ( isOdd or (N >= 6 and N <= 20)) then
        return "Weird"
    end
    return "Not Weird"
end
N = io.read("*number", "*l")
print (TestWeird(N))