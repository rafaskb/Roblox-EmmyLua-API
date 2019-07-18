--[[
    Sources:
        https://www.robloxdev.com/api-reference/lua-docs/Roblox-Globals
        https://www.robloxdev.com/api-reference/data-types
--]]

-- ==============================
-- =====     FUNCTIONS      =====
-- ==============================

---Schedules a function to be executed after delayTime seconds have passed, without yielding the current thread. This function allows multiple Lua threads to be executed in parallel from the same stack.
---@param delayTime number
---@param callback function
function delay (delayTime, callback)
end

---Returns the DebuggerManager class, which acts as an interface for Roblox’s Lua debugger feature.
---@return DebuggerManager
function DebuggerManager()
end

---Returns how much time has elapsed since the current instance of Roblox was started.
---In Roblox Studio, this begins counting up from the moment Roblox Studio starts running, not just when opening a place.
---@return number
function elapsedTime ()
end

---Returns a built-in Roblox library, based on the libraryName specified.
---There are currently 3 available libraries:
---
---RbxGui
---RbxUtility
---RbxStamper
---@param libraryName string
---@return RbxLibrary
function LoadLibrary (libraryName)
end

---Returns the PluginManager which is a deprecated singleton that was previously required to create plugins. It still has applicable uses, such as if you need to create a Plugin object from Roblox Studio’s command bar.
---@return PluginManager
function PluginManager ()
end

---Prints Current identity is [ID] to the output, where [ID] corresponds to the current thread’s security context level.
---@overload fun()
---@param prefix string
function printidentity (prefix)
end

---Runs the supplied ModuleScript if it has not been run already, and returns what the ModuleScript returned (in both cases).
---If the ModuleScript the user wants to use has been uploaded to Roblox (with the instance’s name being ‘MainModule’), it can be loaded by using the require function on the asset ID of the ModuleScript, though only on the server.
---@param module Module
---@return Variant
function require (module)
end

---Returns the GlobalSettings object, which can be used to access the settings objects that are used in Roblox Studio’s settings menu.
---@return GlobalSettings
function settings ()
end

---Runs the specified callback function in a separate thread, without yielding the current thread.
---The function will be executed the next time Roblox’s Task Scheduler runs an update cycle. This delay can take up to 1/30th of a second.
---@param callback function
function spawn (callback)
end

---Returns the Stats service.
---It is preferred that developers use ServiceProvider:GetService to retrieve it instead.
---@return Stats
function stats ()
end

---Returns how much time has elapsed since the UNIX epoch, on the current local session’s computer.
---The UNIX epoch is represented by the date January 1st, 1970.
---@return number
function tick ()
end

---Returns the amount of time that has elapsed since the current game instance started running.
---If the current game instance is not running, this will be 0.
---@return number
function time ()
end

---Returns the type of the object specified, as a string.
---This function is more accurate than Lua’s native type function, as it does not denote Roblox-specific types as userdata.
---@param object Variant
---@return string
function typeof (object)
end

---Returns the UserSettings object, which is used to read information from the current user’s game menu settings.
---@return UserSettings
function UserSettings ()
end

---Returns the current version of Roblox as a string. The integers in the version string are separated by periods, and each integers represent the following, in order:
---
---Generation - The current generation of the application shell that is hosting the client.
---Version - The current release version of Roblox.
---Patch - The current patch number for this version of Roblox.
---Commit - The ID of the last internal commit that was accepted into this version of the client.
---@return string
function version ()
end

---Yields the current thread until the specified amount of seconds have elapsed.
---If the seconds parameter is not specified, then it yields for a very short period of time (usually close to 1/30th of a second).
---@overload fun():number|number
---@param seconds number
---@return number|number
function wait (seconds)
end

---Behaves identically to Lua’s print function, except the output is styled as a warning, with yellow text and a timestamp.
---This function accepts any number of arguments, and will attempt to convert them into strings which will then be joined together with spaces between them.
---@param params Tuple|string
function warn (params)
end

---Returns the elements from the given table. By default, i is 1 and j is the length of list, as defined by the length operator.
---@overload fun(list:int):Variant
---@overload fun(list:int, i:int):Variant
---@param list table
---@param i int
---@param j int
---@return Variant
function unpack (list, i, j)
end

-- ==============================
-- =====     VARIABLES      =====
-- ==============================

--- A reference to the DataModel, which is the root Instance of Roblox's parent/child hierarchy.
---@type DataModel
game = nil

---A reference to the Plugin object that represents the plugin being ran from this Script.
---This reference only exists in the context where a script is executed as a plugin.
---@type Plugin
plugin = nil

---A table that is shared across all scripts that share the same execution context level.
---This serves the exact same purpose as _G.
---@type array
shared = nil

---A reference to the script object that is executing the code you are writing.
---It can be either a Script, a LocalScript, or a ModuleScript (and sometimes a CoreScript)
---This variable is not available when executing code from Roblox Studio’s command bar.
---@type LuaSourceContainer
script = nil

---A reference to the Workspace service, which contains all of the physical components of a Roblox world.
---@type Workspace
workspace = nil


-- ============================
-- =====     OBJECTS      =====
-- ============================

---Axes is a data type that is used with ArcHandles to determine which axes on the brick have handles. The only constructor Axes has is new, to define a new Axes type.
---
---While this data type is not used for them directly, the word axes also refers to the three directions used in the Vector3 and CFrame values (X, Y and Z axes).
---@type Axes
Axes = nil

---BrickColor is a datatype that provides a predefined list of colors. In the past, you could only set the color of a Part to a BrickColor, but this has since been expanded to support Color3. BrickColor now just serves as a handy palette of common Roblox part colors.
---
---Each BrickColor has a numeric id, that represents the color. For example, 1 is white, and 45 is a light blue. There are many different colors available, and you can see the list here:
---https://www.robloxdev.com/articles/BrickColor-Codes
---@type BrickColor
BrickColor = nil

---CFrame, is a data type that represents a position and orientation in 3D space.
---
---All objects inherited from BasePart have a property named CFrame of this type. This property defines where the object is (its position), and how it is rotated (its orientation). The position information is also shown in the Position property, and the rotation information is shown in the Rotation property.
---@type CFrame
CFrame = nil

---Color3 is a data type that contains RGB color values. The numbers can range from 0 to 1.
---@type Color3
Color3 = nil

---https://www.robloxdev.com/api-reference/datatype/ColorSequence
---@type ColorSequence
ColorSequence = nil

---A ColorSequenceKeypoint represents an individual keypoint in a ColorSequence.
---@type ColorSequenceKeypoint
ColorSequenceKeypoint = nil

---DockWidgetPluginGuiInfo is a datatype used to describe details for a newly created Dock Widget PluginGui.
---This datatype is used when constructing a PluginGui via the Plugin's CreateDockWidgetPluginGui function.
---@type DockWidgetPluginGuiInfo
DockWidgetPluginGuiInfo = nil

---A reference to the Enums datatype, which stores all of the available enums that can be used on Roblox.
---@class Enums
---@type Enums
---@field AASamples Enum.AASamples
---@field AccessType Enum.AccessType
---@field ActionType Enum.ActionType
---@field ActuatorType Enum.ActuatorType
---@field AnimationPriority Enum.AnimationPriority
---@field Antialiasing Enum.Antialiasing
---@field Axis Enum.Axis
---@field BinType Enum.BinType
---@field BodyPart Enum.BodyPart
---@field Button Enum.Button
---@field ButtonStyle Enum.ButtonStyle
---@field CameraMode Enum.CameraMode
---@field CameraPanMode Enum.CameraPanMode
---@field CameraType Enum.CameraType
---@field CellBlock Enum.CellBlock
---@field CellMaterial Enum.CellMaterial
---@field CellOrientation Enum.CellOrientation
---@field CenterDialogType Enum.CenterDialogType
---@field ChatColor Enum.ChatColor
---@field ChatMode Enum.ChatMode
---@field ChatStyle Enum.ChatStyle
---@field CollisionFidelity Enum.CollisionFidelity
---@field ComputerCameraMovementMode Enum.ComputerCameraMovementMode
---@field ComputerMovementMode Enum.ComputerMovementMode
---@field ConcurrencyModel Enum.ConcurrencyModel
---@field ControlMode Enum.ControlMode
---@field CoreGuiType Enum.CoreGuiType
---@field CreatorType Enum.CreatorType
---@field CurrencyType Enum.CurrencyType
---@field CustomCameraMode Enum.CustomCameraMode
---@field DevCameraOcclusionMode Enum.DevCameraOcclusionMode
---@field DevComputerCameraMovementMode Enum.DevComputerCameraMovementMode
---@field DevComputerMovementMode Enum.DevComputerMovementMode
---@field DevTouchCameraMovementMode Enum.DevTouchCameraMovementMode
---@field DevTouchMovementMode Enum.DevTouchMovementMode
---@field DialogPurpose Enum.DialogPurpose
---@field DialogTone Enum.DialogTone
---@field EasingDirection Enum.EasingDirection
---@field EasingStyle Enum.EasingStyle
---@field EnviromentalPhysicsThrottle Enum.EnviromentalPhysicsThrottle
---@field ErrorReporting Enum.ErrorReporting
---@field ExplosionType Enum.ExplosionType
---@field FilterResult Enum.FilterResult
---@field Font Enum.Font
---@field FontSize Enum.FontSize
---@field FormFactor Enum.FormFactor
---@field FrameStyle Enum.FrameStyle
---@field FramerateManagerMode Enum.FramerateManagerMode
---@field FriendRequestEvent Enum.FriendRequestEvent
---@field FriendStatus Enum.FriendStatus
---@field FunctionalTestResult Enum.FunctionalTestResult
---@field GameAvatarType Enum.GameAvatarType
---@field GearGenreSetting Enum.GearGenreSetting
---@field GearType Enum.GearType
---@field Genre Enum.Genre
---@field GraphicsMode Enum.GraphicsMode
---@field HandlesStyle Enum.HandlesStyle
---@field HttpContentType Enum.HttpContentType
---@field HumanoidDisplayDistanceType Enum.HumanoidDisplayDistanceType
---@field HumanoidRigType Enum.HumanoidRigType
---@field HumanoidStateType Enum.HumanoidStateType
---@field InOut Enum.InOut
---@field InfoType Enum.InfoType
---@field InputType Enum.InputType
---@field JointCreationMode Enum.JointCreationMode
---@field JointType Enum.JointType
---@field KeyCode Enum.KeyCode
---@field KeywordFilterType Enum.KeywordFilterType
---@field LeftRight Enum.LeftRight
---@field LevelOfDetailSetting Enum.LevelOfDetailSetting
---@field ListenerType Enum.ListenerType
---@field Material Enum.Material
---@field MembershipType Enum.MembershipType
---@field MeshType Enum.MeshType
---@field MessageType Enum.MessageType
---@field MouseBehavior Enum.MouseBehavior
---@field MoveState Enum.MoveState
---@field NameOcclusion Enum.NameOcclusion
---@field NetworkOwnership Enum.NetworkOwnership
---@field NormalId Enum.NormalId
---@field OverrideMouseIconBehavior Enum.OverrideMouseIconBehavior
---@field PacketPriority Enum.PacketPriority
---@field PacketReliability Enum.PacketReliability
---@field PartType Enum.PartType
---@field PathStatus Enum.PathStatus
---@field PhysicsReceiveMethod Enum.PhysicsReceiveMethod
---@field PhysicsSendMethod Enum.PhysicsSendMethod
---@field Platform Enum.Platform
---@field PlayerActions Enum.PlayerActions
---@field PlayerChatType Enum.PlayerChatType
---@field PoseEasingDirection Enum.PoseEasingDirection
---@field PoseEasingStyle Enum.PoseEasingStyle
---@field PriorityMethod Enum.PriorityMethod
---@field PrismSides Enum.PrismSides
---@field PrivilegeType Enum.PrivilegeType
---@field ProductPurchaseDecision Enum.ProductPurchaseDecision
---@field PyramidSides Enum.PyramidSides
---@field QualityLevel Enum.QualityLevel
---@field RenderPriority Enum.RenderPriority
---@field Resolution Enum.Resolution
---@field ReverbType Enum.ReverbType
---@field RollOffMode Enum.RollOffMode
---@field RotationType Enum.RotationType
---@field RuntimeUndoBehavior Enum.RuntimeUndoBehavior
---@field SaveFilter Enum.SaveFilter
---@field SavedQualitySetting Enum.SavedQualitySetting
---@field ScaleType Enum.ScaleType
---@field SizeConstraint Enum.SizeConstraint
---@field SleepAdjustMethod Enum.SleepAdjustMethod
---@field SoundType Enum.SoundType
---@field SpecialKey Enum.SpecialKey
---@field Status Enum.Status
---@field Stuff Enum.Stuff
---@field Style Enum.Style
---@field SurfaceConstraint Enum.SurfaceConstraint
---@field SurfaceType Enum.SurfaceType
---@field SwipeDirection Enum.SwipeDirection
---@field TeleportState Enum.TeleportState
---@field TeleportType Enum.TeleportType
---@field TextXAlignment Enum.TextXAlignment
---@field TextYAlignment Enum.TextYAlignment
---@field ThreadPoolConfig Enum.ThreadPoolConfig
---@field ThrottlingPriority Enum.ThrottlingPriority
---@field TickCountSampleMethod Enum.TickCountSampleMethod
---@field TopBottom Enum.TopBottom
---@field TouchCameraMovementMode Enum.TouchCameraMovementMode
---@field TouchMovementMode Enum.TouchMovementMode
---@field TweenStatus Enum.TweenStatus
---@field UiMessageType Enum.UiMessageType
---@field UploadSetting Enum.UploadSetting
---@field UserCFrame Enum.UserCFrame
---@field UserInputState Enum.UserInputState
---@field UserInputType Enum.UserInputType
---@field VibrationMotor Enum.VibrationMotor
---@field VideoQualitySettings Enum.VideoQualitySettings
---@field WaterDirection Enum.WaterDirection
---@field WaterForce Enum.WaterForce
Enum = nil

---Enum that represents the faces of a part. Values can be Top, Bottom, Left, Right, Back, and Front.
---@type Faces
Faces = nil

---In Roblox, an Instance is an object in a Roblox game. Roblox's namespace has a data-type called Instance for changing how objects in the game behave. The Instance table offers several functions in order to create/manipulate Roblox created objects. It is best known for the Instance.new() function.
---@type Instance
Instance = nil

---Represents a minimum and maximum number range. Contains Min and Max fields.
---@type NumberRange
NumberRange = nil

---https://www.robloxdev.com/api-reference/datatype/NumberSequence
---@type NumberSequence
NumberSequence = nil

---A NumberSequenceKeypoint represents an individual keypoint in a NumberSequence.
---@type NumberSequenceKeypoint
NumberSequenceKeypoint = nil

---PathWaypoint is a datatype that contains information about the points that make up a Path. This includes both the Position of the point as well as the Action.
---
---The action shows what action a character would need to do in order to reach the next waypoint in the path. For most waypoints the action will be Walk, meaning the character can simply walk to the next waypoint. In some cases however, the action can be Jump, which means that the character has reached a ledge or a gap and will need to jump to reach the next point.
---
---By default, PathWaypoints are created in the array returned by the GetWaypoints function of Paths.
---@type PathWaypoint
PathWaypoint = nil

---PhysicalProperties container, with values such as density, friction, and elasticity for a certain Material.
---@type PhysicalProperties
PhysicalProperties = nil

---Random is a datatype used to generate pseudorandom numbers using an dedicated internal state.
---@type Random
Random = nil

---A Ray is a half-line, that is finite in one direction, but infinite in the other. It can be defined by a 3D point, where the line originates from, and a direction vector, which is the direction it goes in. The direction is similar to the lookVector of CFrame.
---
---https://wiki.roblox.com/index.php?title=Ray
---@type Ray
Ray = nil

---2D rectangle object with min and max values.
---@type Rect
Rect = nil

---Represents a 3D region.
---@type Region3
Region3 = nil

---Region3int16 is a variant of the Region3 datatype. It is exclusively used for some of the terrain object's methods such as SetCells and AutowedgeCells. As with Region3, the constructor creates a bounding box with the two arguments used as corners of the box. Additionally, the X, Y, Z coordinates of the second argument should be larger than the first one.
---@type Region3int16
Region3int16 = nil

---TweenInfo is a data type that describes how an interpolation will be carried out.
---@type TweenInfo
TweenInfo = nil

---UDim stands for Universal Dimension, and uses 2 coordinates. A UDim consists of a Scale and an Offset. These are used to figure out where exactly the UDim's position is.
---
---Scale is a number between 0.0 and 1.0 that is a percentage of the parent object's size. For example, if the parent object is 50 pixels wide, a UDim scale of 0.5 would be 25 pixels wide. 0.5 makes the size cover 50% of it's parent, same as 0.38 is going to cover 38%, 0.85 is going to cover 85%, and so on.
---
---Offset is a specified Integer. This is a non changing value that is factored into the UDim calculation.
---
---The final result is a combination of Scale and Offset. Scale * Parent's Size + Offset.
---@type UDim
UDim = nil

---A UDim2 is a Data Type composed of two UDims, one for the X coordinate and one for the Y coordinate, used to position and size GUIs.
---@type UDim2
UDim2 = nil

---A Vector2 is a data-type that represents an X/Y coordinate system.
---@type Vector2
Vector2 = nil

---A Vector3 is a data-type that represents an X/Y/Z coordinate system.
---@type Vector3
Vector3 = nil

---Vector3int16 is a variant of the Vector3 datatype. Vector3int16, as its name implies, is a type whose coordinates are stored as 16 bit signed integers, which means that the coordinates of a Vector3int16 must be in the range of -32767 to 32767. Additionally, the Vector3int16 datatype is stripped down in terms of functionality. It is exclusively used for creating a Region3int16, which is used in some of the terrain object's methods.
---@type Vector3int16
Vector3int16 = nil
