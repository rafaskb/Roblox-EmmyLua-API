---
---Module that parses classes and enums and prints to a file.
---
local parser = {}

local utils = require("utils")

---
---Reads a value type from a data table and returns it in a formatted string.
---@param baseData table
---@return string
---
local function readType(baseData)
    local name = baseData.Name
    local category = baseData.Category

    if category == "Enum" then
        return "Enums." .. name
    end

    if category == "Group" then
        if name == "Dictionary" then
            return "table<string,any>"
        end

        if name == "Array" then
            return "any[]"
        end

        if name ~= "Tuple" then
            return "table"
        end
    end

    if category == "Primitive" then
        if name == "bool" then
            return "boolean"
        end

        if name == "int" or name == "double" or name == "float" or name == "int64" then
            return "number"
        end
    end

    return name
end

---
---Reads parameters from a data table and returns them in a formatted string.
---@param baseData table
---@param selfType string
---@return string
---
local function readParameters(baseData, selfType)
    -- Table
    local parametersTable = {}

    -- Self parameter
    if selfType then
        table.insert(parametersTable, "self:" .. selfType)
    end

    -- Data parameters
    for _, paramData in pairs(baseData) do
        local paramName = paramData.Name
        local paramType = readType(paramData.Type)
        table.insert(parametersTable, paramName .. ":" .. paramType)
    end

    -- Return formatted string
    return table.concat(parametersTable, ", ")
end

---
---Parses an entire class data table, including all its fields, functions, events, and callbacks.
---@param baseData table
---
function parser:parseClass(baseData)
    -- Write class
    local class = baseData.Name
    local super = baseData.Superclass
    utils:write("---")
    utils:write("---@class %s : %s", class, super)

    -- Write fields
    for _, memberData in pairs(baseData.Members) do
        local name = memberData.Name
        local memberType = memberData.MemberType

        -- Parse property
        if "Property" == memberType then
            local valueType = readType(memberData.ValueType)
            utils:write("---@field %s %s", name, valueType)
        end

        -- Parse function
        if "Function" == memberType then
            local parameters = readParameters(memberData.Parameters, class)
            local returnType = readType(memberData.ReturnType)
            utils:write("---@field %s fun(%s):%s", name, parameters, returnType)
        end

        -- Parse event
        if "Event" == memberType then
            local parameters = readParameters(memberData.Parameters)
            utils:write("---@field %s RBXScriptSignal @function(%s)", name, parameters)
        end

        -- Parse callback
        if "Callback" == memberType then
            local parameters = readParameters(memberData.Parameters)
            local returnType = readType(memberData.ReturnType)
            utils:write("---@field %s fun(%s):%s @Callback", name, parameters, returnType)
        end
    end

    -- Write empty line
    utils:write("---")
    utils:write()
end

---
---Parses an entire enum data table, including all its values.
---@param baseData table
---
function parser:parseEnum(baseData)
    -- Write class
    local class = "Enums." .. baseData.Name
    utils:write("---")
    utils:write("---@class %s", class)

    -- Write items
    if baseData.Items then
        for _, item in pairs(baseData.Items) do
            local itemName = item.Name
            local itemValue = item.Value
            utils:write("---@field %s EnumItem @%s", itemName, itemValue)
        end
    end

    -- Write empty line
    utils:write("---")
    utils:write()
end

return parser
