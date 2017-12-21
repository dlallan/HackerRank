function solve(grades)
    roundedGrades = {}
    for i=1,#grades,1 do
        diff = 0
        result = grades[i]
        if (tonumber(grades[i]) >= 38) then
            diff = 5 - (grades[i] % 5)
		end
        if (tonumber(diff) < 3) then
            result = grades[i] + diff
        end
        print(math.floor(tonumber(result)))
    end
end
n = io.read("*number", "*l")
grades = {}
for grades_i = 1,n do
   grades[grades_i] = io.read()
end
solve(grades)