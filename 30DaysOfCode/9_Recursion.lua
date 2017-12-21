function factorial(n)
    -- Complete this function
    if (tonumber(n) <= 1) then
        return 1
    else
        return n * factorial(n - 1)
    end
end
n = io.read("*number", "*l")
print(factorial(n))