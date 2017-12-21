-- Enter your code here. Read input from STDIN. Print output to STDOUT
function setPhoneBook(n)
    local dict = {}
    for i=1,n,1 do
        rawKV = io.read('*line')
        key,value = '',''
        for k in rawKV:gmatch("%a+") do
            key = k        
        end
        for v in rawKV:gmatch("%d+") do
            value = v
        end
        dict[key] = value
    end
    return dict
end
n = io.read('*line')
--phoneBook = {}
phoneBook = setPhoneBook(n)

query = io.read('*line')
while (query ~= null) do
    if (phoneBook[query] ~= null) then
        print(query..'='..phoneBook[query])
    else
        print('Not found')
    end
    query = io.read('*line')
end