function fruit(houseLeft, houseRight, appleTree, orangeTree, apples, oranges)
	applesCaught = 0
	orangesCaught = 0
	for i=1,#apples,1 do
		pos = apples[i] + appleTree
		if ((pos >= houseLeft) and (pos <= houseRight)) then
			applesCaught = applesCaught + 1
		end
	end
	for i=1,#oranges,1 do
		pos = oranges[i] + orangeTree
		if ((pos >= houseLeft) and (pos <= houseRight)) then
			orangesCaught = orangesCaught + 1
		end
	end
	print (applesCaught)
    print (orangesCaught)
end

s,t = io.read("*number", "*number", "*l")
a,b = io.read("*number", "*number", "*l")
m,n = io.read("*number", "*number", "*l")
apple = {}
apple_temp = io.read()
apple_i = 1;
for token in string.gmatch(apple_temp, "[^%s]+") do
   apple[apple_i] = token
   apple_i = apple_i + 1
end
orange = {}
orange_temp = io.read()
orange_i = 1;
for token in string.gmatch(orange_temp, "[^%s]+") do
   orange[orange_i] = token
   orange_i = orange_i + 1
end
fruit(s,t,a,b,apple,orange)