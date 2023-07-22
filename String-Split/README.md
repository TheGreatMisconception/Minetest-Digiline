# String-Split

The string-Split function is used to break a delimited string into substrings. It returns the result in form of a table.

Note: As of June 18, the lua_controller has a built-in helper function named string.split().

# How to use

The function takes two parameters:

 1. Text \<string>
 2. Seperator \<string>

**Example:**
```lua
-- I/O
dpc  = "monitor"
inpc = "keyboard"


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


-- Output
for k,v in pairs(split("I-Walk-Home", "-")) do
    digiline_send(dpc, v)
end

```
**Output:**
```lua
{"I", "Walk", "Home"}
```


