function solve(a0, a1, a2, b0, b1, b2)
    -- Complete this function
	aScore = 0
	bScore = 0
	if (a0 > b0) then
		aScore = aScore + 1;
	elseif (b0 > a0) then
		bScore = bScore + 1;
	end;
	if (a1 > b1) then
		aScore = aScore + 1;
	elseif (b1 > a1) then
		bScore = bScore + 1;
	end;
	if (a2 > b2) then
		aScore = aScore + 1;
	elseif (b2 > a2) then
		bScore = bScore + 1;
	end;
	return (aScore.." "..bScore)
end
a0,a1,a2 = io.read("*number", "*number", "*number", "*l")
b0,b1,b2 = io.read("*number", "*number", "*number", "*l")
print(solve(a0,a1,a2,b0,b1,b2))