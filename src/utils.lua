---
---Utility module to help the usage of the library.
---
local utils = {}

---@type File
utils.file = nil

---
---Opens a file stream.
---@param filename string
---
function utils:openFile(filename)
    utils.file = io.open(filename, "w+")
    if not utils.file then
        utils:error("Failed to open file stream: %s", filename)
    end
end

---
---Closes the internal file stream.
---
function utils:closeFile()
    if utils.file then
        utils.file:close()
    end
end

---
---Logs an information line to the console
---@param format string
---@vararg any
---
function utils:info(format, ...)
    print("INFO:", string.format(format or "", ...))
end

---
---Logs an error line to the console
---@param format string
---@vararg any
---
function utils:error(format, ...)
    print("ERROR:", string.format(format or "", ...))
end

---
---Writes a line to the internal file stream.
---@param format string
---@vararg any
---
function utils:write(format, ...)
    if utils.file then
        local line = string.format(format or "", ...) .. "\n"
        utils.file:write(line)
    end
end

return utils