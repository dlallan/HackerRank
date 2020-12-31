function timeConversion(s)
    hour = string.sub(s,1,2)
    mins = string.sub(s,4,5)
    secs = string.sub(s,7,8)
    AMPM = string.sub(s,9,10)
    if (AMPM == "PM") then
        if (tonumber(hour) ~= 12) then
            hour = math.floor(hour + 12)
        end
    else
        if (tonumber(hour) == 12) then
            hour = "00"
        end
    end
    return (hour..":"..mins..":"..secs)
end
s = io.read()
print(timeConversion(s))