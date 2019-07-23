-- Constants
local API_DUMP_VERSION = 1
local OUTPUT_FILE_NAME = "../api/Automatic.lua"

-- Dependencies
local http = require("socket.http")
local json = require("json")
local parser = require("parser")
local utils = require("utils")

---
---GET web request.
---@param url string URL to GET.
---@return boolean, string
---
local function request(url)
    local body, statusCode = http.request(url)
    if statusCode == 200 then
        return true, body
    end
    return false, statusCode
end

---
---Fetches the Roblox version from the Roblox web API.
---@return string
---
local function fetchRobloxVersion()
    utils:info("Getting Roblox version...")
    local success, response = request("http://setup.roblox.com/versionQTStudio")
    if not success then
        utils:error("Failed to obtain Roblox version. (" .. tostring(response) .. ")")
        return
    end
    utils:info("Roblox version: %s", response)
    return response
end

---
---Fetches the API Dump from the Roblox web API.
---@return string
---
local function fetchApiDump(robloxVersion)
    utils:info("Getting API Dump...")
    local success, response = request("http://setup.roblox.com/" .. tostring(robloxVersion) .. "-API-Dump.json")
    if not success then
        utils:error("Failed to obtain API Dump. (" .. tostring(response) .. ")")
        return
    end
    utils:info("Received API Dump.")
    return response
end

---
---Decodes the API Dump from a string to a JSON format.
---@param str string
---@return table
---
local function decodeJson(str)
    utils:info("Decoding JSON...")
    local jsonRoot = json.decode(str)
    if not jsonRoot or type(jsonRoot) ~= "table" then
        return utils:error("Failed to decode JSON.")
    end
    utils:info("Decoded JSON successfully.")
    return jsonRoot
end

---
---Main application function
---
local function main()
    -- Get version
    local robloxVersion = fetchRobloxVersion()

    -- Get API dump
    local apiDump = fetchApiDump(robloxVersion)

    -- Decode JSON
    local jsonRoot = decodeJson(apiDump)

    -- Make sure API Dump matches expected version
    local apiDumpVersion = jsonRoot.Version
    if apiDumpVersion ~= API_DUMP_VERSION then
        return utils:error("Mismatching API Dump version. Expected %d, but received %d", API_DUMP_VERSION, apiDumpVersion)
    end

    -- Print some numbers
    utils:info("Classes found: %d", #jsonRoot.Classes)
    utils:info("Enums found: %d", #jsonRoot.Enums)
    utils:info("API Dump version: %d", apiDumpVersion)

    -- Open file
    utils:info("Opening output file...")
    utils:openFile(OUTPUT_FILE_NAME)

    -- Write header
    utils:write("--")
    utils:write(os.date("--File generated in %b/%d/%Y at %X"))
    utils:write("--Roblox version: %s", robloxVersion)
    utils:write("--API Dump version: %s", apiDumpVersion)
    utils:write("--")
    utils:write()

    -- Read classes
    utils:info("Reading classes...")
    for _, classData in pairs(jsonRoot.Classes) do
        parser:parseClass(classData)
    end
    utils:write()

    -- Read enums and collect their names
    utils:info("Reading enums...")
    local enumNames = {}
    for _, enumData in pairs(jsonRoot.Enums) do
        parser:parseEnum(enumData)
        table.insert(enumNames, enumData.Name)
    end

    -- Inject Enum class manually
    utils:write("---")
    utils:write("---@class Enums")
    for _, enumName in pairs(enumNames) do
        utils:write("---@field %s Enums.%s", enumName, enumName)
    end
    utils:write("---")
    utils:write()

    -- Closure
    utils:info("API Dump written to %s successfully!", OUTPUT_FILE_NAME)
end

main()