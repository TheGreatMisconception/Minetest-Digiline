-- Split a string at a separator
function split(str, sep)
    res = {}

    while string.find(str, sep, 1, true) do
        start, stop = string.find(str, sep, 1, true)
        nstr = string.sub(str, 1, start-1)
        table.insert(res, nstr)
        str = string.sub(str, stop+1)
    end
    
    table.insert(res, str)
    return res
end