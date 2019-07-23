--[[
    Sources:
        https://www.robloxdev.com/api-reference/lua-docs/Roblox-Globals
        https://developer.roblox.com/en-us/api-reference/lua-docs/Lua-Globals
        https://www.robloxdev.com/api-reference/data-types
--]]

-- ==============================
-- =====     FUNCTIONS      =====
-- ==============================

---
---Schedules a function to be executed after delayTime seconds have passed, without yielding the current thread. This function allows multiple Lua threads to be executed in parallel from the same stack.
---@param delayTime number
---@param callback function
---
function delay (delayTime, callback)
end

---
---Returns the DebuggerManager class, which acts as an interface for Roblox’s Lua debugger feature.
---@return DebuggerManager
---
function DebuggerManager()
end

---
---Returns how much time has elapsed since the current instance of Roblox was started.
---In Roblox Studio, this begins counting up from the moment Roblox Studio starts running, not just when opening a place.
---@return number
---
function elapsedTime ()
end

---
---Returns a built-in Roblox library, based on the libraryName specified.
---There are currently 3 available libraries:
---
---RbxGui
---RbxUtility
---RbxStamper
---@param libraryName string
---@return RbxLibrary
---
function LoadLibrary (libraryName)
end

---
---Returns the PluginManager which is a deprecated singleton that was previously required to create plugins. It still has applicable uses, such as if you need to create a Plugin object from Roblox Studio’s command bar.
---@return PluginManager
---
function PluginManager ()
end

---
---Prints Current identity is [ID] to the output, where [ID] corresponds to the current thread’s security context level.
---@overload fun()
---@param prefix string
---
function printidentity (prefix)
end

---
---Runs the supplied ModuleScript if it has not been run already, and returns what the ModuleScript returned (in both cases).
---If the ModuleScript the user wants to use has been uploaded to Roblox (with the instance’s name being ‘MainModule’), it can be loaded by using the require function on the asset ID of the ModuleScript, though only on the server.
---@param module ModuleScript
---@return Variant
---
function require (module)
end

---
---Returns the GlobalSettings object, which can be used to access the settings objects that are used in Roblox Studio’s settings menu.
---@return GlobalSettings
---
function settings ()
end

---
---Runs the specified callback function in a separate thread, without yielding the current thread.
---The function will be executed the next time Roblox’s Task Scheduler runs an update cycle. This delay can take up to 1/30th of a second.
---@param callback function
---
function spawn (callback)
end

---
---Returns the Stats service.
---It is preferred that developers use ServiceProvider:GetService to retrieve it instead.
---@return Stats
---
function stats ()
end

---
---Returns how much time has elapsed since the UNIX epoch, on the current local session’s computer.
---The UNIX epoch is represented by the date January 1st, 1970.
---@return number
---
function tick ()
end

---
---Returns the amount of time that has elapsed since the current game instance started running.
---If the current game instance is not running, this will be 0.
---@return number
---
function time ()
end

---
---Returns the type of the object specified, as a string.
---This function is more accurate than Lua’s native type function, as it does not denote Roblox-specific types as userdata.
---@param object Variant
---@return string
---
function typeof (object)
end

---
---Returns the UserSettings object, which is used to read information from the current user’s game menu settings.
---@return UserSettings
---
function UserSettings ()
end

---
---Returns the current version of Roblox as a string. The integers in the version string are separated by periods, and each integers represent the following, in order:
---
---Generation - The current generation of the application shell that is hosting the client.
---Version - The current release version of Roblox.
---Patch - The current patch number for this version of Roblox.
---Commit - The ID of the last internal commit that was accepted into this version of the client.
---@return string
---
function version ()
end

---
---Yields the current thread until the specified amount of seconds have elapsed.
---If the seconds parameter is not specified, then it yields for a very short period of time (usually close to 1/30th of a second).
---@overload fun():number|number
---@param seconds number
---@return number|number
---
function wait (seconds)
end

---
---Behaves identically to Lua’s print function, except the output is styled as a warning, with yellow text and a timestamp.
---This function accepts any number of arguments, and will attempt to convert them into strings which will then be joined together with spaces between them.
---@param params Tuple|string
function warn (params)
end

---
---Returns the elements from the given table. By default, i is 1 and j is the length of list, as defined by the length operator.
---@overload fun(list:int):Variant
---@overload fun(list:int, i:int):Variant
---@param list table
---@param i int
---@param j int
---@return Variant
---
function unpack (list, i, j)
end

---
---Creates a blank userdata, with the option for it to have a metatable.
---@param addMetatable boolean
---@return userdata
---
function newproxy(addMetatable)
end


-- ==============================
-- =====     VARIABLES      =====
-- ==============================

---
--- A reference to the DataModel, which is the root Instance of Roblox's parent/child hierarchy.
---@type DataModel
---
game = nil

---
---A reference to the Plugin object that represents the plugin being ran from this Script.
---This reference only exists in the context where a script is executed as a plugin.
---@type Plugin
---
plugin = nil

---
---A table that is shared across all scripts that share the same execution context level.
---This serves the exact same purpose as _G.
---@type array
---
shared = nil

---
---A reference to the script object that is executing the code you are writing.
---It can be either a Script, a LocalScript, or a ModuleScript (and sometimes a CoreScript)
---This variable is not available when executing code from Roblox Studio’s command bar.
---@type LuaSourceContainer
---
script = nil

---
---A reference to the Workspace service, which contains all of the physical components of a Roblox world.
---@type Workspace
---
workspace = nil


-- ==============================
-- =====     DataTypes      =====
-- ==============================

---
---Axes is a data type that is used with ArcHandles to determine which axes on the brick have handles.
---@type Axes
---
Axes = nil

---
---BrickColor is a datatype that provides a predefined list of colors.
---@type BrickColor
---
BrickColor = nil

---
---CFrame, is a data type that represents a position and orientation in 3D space.
---@type CFrame
---
CFrame = nil

---
---Color3 is a data type that contains RGB color values. The numbers can range from 0 to 1.
---@type Color3
---
Color3 = nil

---
---https://www.robloxdev.com/api-reference/datatype/ColorSequence
---@type ColorSequence
---
ColorSequence = nil

---
---A ColorSequenceKeypoint represents an individual keypoint in a ColorSequence.
---@type ColorSequenceKeypoint
---
ColorSequenceKeypoint = nil

---
---DockWidgetPluginGuiInfo is a datatype used to describe details for a newly created Dock Widget PluginGui.
---This datatype is used when constructing a PluginGui via the Plugin's CreateDockWidgetPluginGui function.
---@type DockWidgetPluginGuiInfo
---
DockWidgetPluginGuiInfo = nil

---
---A reference to the Enums datatype, which stores all of the available enums that can be used on Roblox.
---@type Enums
---
Enum = nil

---
---EnumItem is a datatype that represents an individual item in a Roblox enum.
---@type EnumItem
---
EnumItem = nil

---
---A reference to the Enums datatype, which stores all of the available enums that can be used on Roblox.
---@type Enums
---
Enums = nil

---
---Enum that represents the faces of a part. Values can be Top, Bottom, Left, Right, Back, and Front.
---@type Faces
---
Faces = nil

---
---In Roblox, an Instance is an object in a Roblox game. It is best known for the Instance.new() function.
---@type Instance
---
Instance = nil

---
---Represents a minimum and maximum number range. Contains Min and Max fields.
---@type NumberRange
---
NumberRange = nil

---
---https://www.robloxdev.com/api-reference/datatype/NumberSequence
---@type NumberSequence
---
NumberSequence = nil

---
---A NumberSequenceKeypoint represents an individual keypoint in a NumberSequence.
---@type NumberSequenceKeypoint
---
NumberSequenceKeypoint = nil

---
---PathWaypoint is a datatype that contains information about the points that make up a Path.
---@type PathWaypoint
---
PathWaypoint = nil

---
---PhysicalProperties container, with values such as density, friction, and elasticity for a certain Material.
---@type PhysicalProperties
---
PhysicalProperties = nil

---
---Random is a datatype used to generate pseudorandom numbers using an dedicated internal state.
---@type Random
---
Random = nil

---
---A Ray is a half-line, that is finite in one direction, but infinite in the other.
---@type Ray
---
Ray = nil

---
---RBXScriptConnection, also known as a Connection, is a special object returned by the Connect method of an Event (RBXScriptSignal).
---@type RBXScriptConnection
---
RBXScriptConnection = nil

---
---RBXScriptSignal, more commonly known as an Event, is a special kind of Roblox object.
---@type RBXScriptConnection
---
RBXScriptSignal = nil

---
---2D rectangle object with min and max values.
---@type Rect
---
Rect = nil

---
---Represents a 3D region.
---@type Region3
---
Region3 = nil

---
---Region3int16 is a variant of the Region3 datatype.
---@type Region3int16
---
Region3int16 = nil

---
---TweenInfo is a data type that describes how an interpolation will be carried out.
---@type TweenInfo
---
TweenInfo = nil

---
---UDim stands for Universal Dimension, and uses 2 coordinates. A UDim consists of a Scale and an Offset. These are used to figure out where exactly the UDim's position is.
---@type UDim
---
UDim = nil

---
---A UDim2 is a Data Type composed of two UDims, one for the X coordinate and one for the Y coordinate, used to position and size GUIs.
---@type UDim2
---
UDim2 = nil

---
---A Vector2 is a data-type that represents an X/Y coordinate system.
---@type Vector2
---
Vector2 = nil

---
---Vector2int16 is a variant of the Vector2 datatype that uses integers.
---@type Vector2int16
---
Vector2int16 = nil

---
---A Vector3 is a data-type that represents an X/Y/Z coordinate system.
---@type Vector3
---
Vector3 = nil

---
---Vector3int16 is a variant of the Vector3 datatype that uses integers.
---@type Vector3int16
---
Vector3int16 = nil


-- ==============================
-- =====     Libraries      =====
-- ==============================

---
---The debug library provides a few basic functions for debugging code in Roblox. Unlike the debug library found in Lua natively, this version has been heavily sandboxed. Roblox does however, have debugging functionality similar to Lua’s native debugging functionality.
---@type RobloxDebug
---
debug = nil

---
---Returns a number between min and max, inclusive.
---@type fun(x:number, min:number, max:number)
---@return number
---
math.clamp = nil

---
---Returns m*2^e (e should be an integer).
---@type fun(x:number, e:number)
---@return number
---
math.ldexp = nil

---
---Returns a perlin noise value between -0.5 and 0.5.
---@type fun(x:number, y:number, z:number)
---@return number
---
math.noise = nil

---
---Returns -1 if x < 0, 0 if x == 0, or 1 if x > 0.
---@type fun(x:number)
---@return number
---
math.sign = nil

---
---The os library currently serves the purpose of providing information about the system time, under the UTC format.
--- It has been heavily sandboxed from the standard Lua os library, and does not allow you to perform any system altering operations.
---@type RobloxOs
---
os = nil

---
---Splits a string into parts based on the defined separator character(s), returning a table of ordered results.
---@type fun(s:string, separator:string):table<number,string>
---
string.split = nil

---
---Iterates over the provided table, passing the key and value of each iteration over to the provided function.
---@type fun(t:any[], f:function):void
---
table.foreach = nil

---
---This is similar to table.foreach() except that index-value pairs are passed, not key-value pairs.
---@type fun(t:any[], f:function):void
---
table.foreachi = nil

---
---Returns the number of elements in the table passed.
---@type fun(t:any[]):number
---
table.getn = nil

---
---The utf8 library provides basic support for UTF-8 encoding.
---@type RobloxUtf8
---
utf8 = nil