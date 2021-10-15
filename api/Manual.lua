-- DATA TYPES
-- https://developer.roblox.com/en-us/api-reference/data-types

---
---@class Axes Axes is a datatype used for the ArcHandles class to control what rotation axes are currently enabled.
---@field new fun(axes:Tuple):Axes Creates a new Axes using list of axes and/or faces. NormalIds (faces) are converted to the corresponding axes.
---@field X boolean Whether the X axis is enabled
---@field Y boolean Whether the Y axis is enabled
---@field Z boolean Whether the Z axis is enabled
---@field Top boolean Whether the top face is included
---@field Bottom boolean Whether the bottom face is included
---@field Left boolean Whether the left face is included
---@field Right boolean Whether the right face is included
---@field Back boolean Whether the back face is included
---@field Front boolean Whether the front face is included
---

---
---@class BrickColor BrickColor is a datatype that provides a predefined list of colors, although any color imaginable is supported through a part’s BasePart.Color property. To view a full list of available brick colors, see the BrickColor Codes reference.
---
---@field new fun(val:number):BrickColor Constructs a BrickColor from its numerical index.
---@field new fun(r:number, g:number, b:number):BrickColor Constructs the closest BrickColor that can be matched to the specified RGB components.
---@field new fun(val:string):BrickColor Constructs a BrickColor from its name.
---@field new fun(color:Color3):BrickColor Constructs the closest BrickColor that can be matched to the specified Color3.
---@field palette fun(paletteValue:number):BrickColor Constructs a BrickColor from its palette index.
---@field random fun():BrickColor Returns a random BrickColor.
---@field White fun():BrickColor Returns the BrickColor White
---@field Gray fun():BrickColor Returns the BrickColor Medium stone grey
---@field DarkGray fun():BrickColor Returns the BrickColor Dark stone grey
---@field Black fun():BrickColor Returns the BrickColor Black
---@field Red fun():BrickColor Returns the BrickColor Bright Red
---@field Yellow fun():BrickColor Returns the BrickColor Bright Yellow
---@field Green fun():BrickColor Returns the BrickColor Dark Green
---@field Blue fun():BrickColor Returns the BrickColor Bright Blue
---
---@field Number number The unique number that identifies the BrickColor
---@field r number The red component (between 0 and 1)
---@field g number The green component (between 0 and 1)
---@field b number The blue component (between 0 and 1)
---@field Name string The name associated with the BrickColor
---@field Color Color3 The Color3 associated with the BrickColor
---

---
---@class CFrame
---
---@field new fun():CFrame Creates a blank identity CFrame.
---@field new fun(pos:Vector3):CFrame Creates a CFrame from a Vector3
---@field new fun(pos:Vector3, lookAt:Vector3):CFrame This constructor has been deprecated in favor of using `CFrame.fromMatrix(), to create a lookVector. Itt creates a CFrame located at pos with it’s lookVector pointing towards the lookAt position.
---@field new fun(x:number, y:number, z:number):CFrame Creates a CFrame from position (x, y, z).
---@field new fun(x:number, y:number, z:number, qX:number, qY:number, qZ:number, qW:number):CFrame Creates a CFrame from position (x, y, z) and quaternion (qX, qY, qZ, qW)
---@field new fun(x:number, y:number, z:number, R00:number, R01:number, R02:number, R10:number, R11:number, R12:number, R20:number, R21:number, R22:number):CFrame Creates a CFrame from position (x, y, z) with an orientation specified by the rotation matrix [[R00 R01 R02] [R10 R11 R12] [R20 R21 R22]]
---@field fromEulerAnglesXYZ fun(rx:number, ry:number, rz:number):CFrame Creates a rotated CFrame using angles (rx, ry, rz) in radians. Rotations are applied in Z, Y, X order.
---@field fromEulerAnglesYXZ fun(rx:number, ry:number, rz:number):CFrame Creates a rotated CFrame using angles (rx, ry, rz) in radians. Rotations are applied in Z, X, Y order.
---@field Angles fun(rx:number, ry:number, rz:number):CFrame Equivalent to fromEulerAnglesXYZ
---@field fromOrientation fun(rx:number, ry:number, rz:number):CFrame Equivalent to fromEulerAnglesYXZ
---@field fromAxisAngle fun(v:Vector3, r:number):CFrame Creates a rotated CFrame from a Unit Vector3 and a rotation in radians
---@field fromMatrix fun(pos:Vector3, vX:Vector3, vY:Vector3, vZ:Vector3):CFrame Creates a CFrame from a translation and the columns of a rotation matrix. If vz is excluded, the third column is calculated as [vx:Cross(vy).Unit].
---
---@field X number The x-coordinate of the position
---@field Y number The y-coordinate of the position
---@field Z number The z-coordinate of the position
---@field LookVector Vector3 The forward-direction component of the CFrame’s orientation.
---@field RightVector Vector3 The right-direction component of the CFrame’s orientation.
---@field UpVector Vector3 The up-direction component of the CFrame’s orientation.
---@field Position Vector3 The 3D position of the CFrame
---
---@field Inverse fun(self:CFrame):CFrame Returns the inverse of this CFrame
---@field Lerp fun(self:CFrame, goal:CFrame, alpha:number):CFrame Returns a CFrame interpolated between this CFrame and the goal by the fraction alpha
---@field ToWorldSpace fun(self:CFrame, cf:CFrame):CFrame Returns a CFrame transformed from Object to World space. Equivalent to [CFrame * cf]
---@field ToObjectSpace fun(self:CFrame, cf:CFrame):CFrame Returns a CFrame transformed from World to Object space. Equivalent to [CFrame:inverse() * cf]
---@field PointToWorldSpace fun(self:CFrame, v3:Vector3):Vector3 Returns a Vector3 transformed from Object to World space. Equivalent to [CFrame * v3]
---@field PointToObjectSpace fun(self:CFrame, v3:Vector3):Vector3 Returns a Vector3 transformed from World to Object space. Equivalent to [CFrame:inverse() * v3]
---@field VectorToWorldSpace fun(self:CFrame, v3:Vector3):Vector3 Returns a Vector3 rotated from Object to World space. Equivalent to [(CFrame - CFrame.p) *v3]
---@field VectorToObjectSpace fun(self:CFrame, v3:Vector3):Vector3 Returns a Vector3 rotated from World to Object space. Equivalent to [(CFrame:inverse() - CFrame:inverse().p) * v3]
---@field GetComponents fun(self:CFrame):Tuple Returns the values: x, y, z, R00, R01, R02, R10, R11, R12, R20, R21, R22, where R00-R22 represent the 3x3 rotation matrix of the CFrame, and xyz represent the position of the CFrame.
---@field ToEulerAnglesXYZ fun(self:CFrame):number,number,number Returns approximate angles that could be used to generate CFrame, if angles were applied in Z, Y, X order
---@field ToEulerAnglesYXZ fun(self:CFrame):number,number,number Returns approximate angles that could be used to generate CFrame, if angles were applied in Z, X, Y order
---@field ToOrientation fun(self:CFrame):number,number,number Returns approximate angles that could be used to generate CFrame, if angles were applied in Z, X, Y order (Equivalent to toEulerAnglesYXZ)
---@field ToAxisAngle fun(self:CFrame):Vector3,number Returns a tuple of a Vector3 and a number which represent the rotation of the CFrame in the axis-angle representation
---

---
---@class Color3
---@field new fun():Color3 Creates a Color3 whose values are (0,0,0) [black]
---@field new fun(r:number,g:number,b:number):Color3 Returns a Color3 with the given red, green, and blue values. The numbers can range from 0 to 1.
---@field fromRGB fun(r:number,g:number,b:number):Color3 Creates a Color3 with the given red, green, and blue. The numbers can range from 0 to 255.
---@field fromHSV fun(h:number,s:number,v:number):Color3 Creates a Color3 with the given hue, saturation, and value. The numbers can range from 0 to 1.
---@field r number The red value of the color
---@field g number The green value of the color
---@field b number The blue value of the color
---@field lerp fun(self:Color3, color:Color3, alpha:number):Color3 Returns a Color3 interpolated between two Color3 objects. Alpha is a number from 0 to 1.
---@field ToHSV fun(color:Color3):number,number,number Returns the hue, saturation, and value of a Color3.
---

---
---@class ColorSequence
---@field new fun(c:Color3):ColorSequence Creates a sequence of two keypoints with c for each value
---@field new fun(c0:Color3, c1:Color3) Creates a sequence of two keypoints with c0 and c1 as the value
---@field new fun(keypoints:ColorSequenceKeypoint[]):ColorSequence Creates a sequence of ColorSequenceKeypoints.
---@field Keypoints ColorSequenceKeypoint[] An array containing ColorSequenceKeypoint values for the ColorSequence.
---

---
---@class ColorSequenceKeypoint
---@field new fun(time:number, color:Color3) Creates a keypoint with a specified time and color.
---@field Time number The relative time at which the keypoint is located.
---@field Value Color3 The Color3 value at the keypoint.
---

---
---@class DateTime A DateTime represents a moment in time using a Unix timestamp. It can be used to easily format dates and times in specific locales.
---
---@field new fun():DateTime Creates a new DateTime representing the current moment in time.
---@field fromUnixTimestamp fun(unixTimestamp:number):DateTime Creates a new DateTime object from the given Unix timestamp, or the number of seconds since January 1st, 1970 at 00:00 (UTC).
---@field fromUnixTimestampMillis fun(unixTimestampMillis:number):DateTime Create a new DateTime object from the given Unix timestamp, or the number of milliseconds since January 1st, 1970 at 00:00 (UTC).
---@field fromUniversalTime fun(year:number, month:number, day:number, hour:number, minute:number, second:number, millisecond:number):DateTime Creates a new DateTime using the given units from a UTC time. The values accepted are similar to those found in the time value table returned by ToUniversalTime.
---@field fromLocalTime fun(year:number, month:number, day:number, hour:number, minute:number, second:number, millisecond:number):DateTime Creates a new DateTime using the given units from a local time. The values accepted are similar to those found in the time value table returned by ToLocalTime.
---@field fromIsoDate fun():DateTime Creates a DateTime from an ISO 8601 date-time string in UTC time, such as those returned by ToIsoDate. If the string parsing fails, the function returns nil.
---
---@field ToUniversalTime fun(self:DateTime):table<string,number> @Converts the value of this DateTime object to Universal Coordinated Time (UTC). The returned table contains the following keys: Year, Month, Day, Hour, Minute, Second, Millisecond. For more details, see the table in the DateTime description. The values within this table could be passed to fromUniversalTime to produce the original DateTime object.
---@field ToLocalTime fun(self:DateTime):table<string,number> @Converts the value of this DateTime object to local time. The returned table contains the following keys: Year, Month, Day, Hour, Minute, Second, Millisecond. For more details, see the table in the DateTime description. The values within this table could be passed to fromLocalTime to produce the original DateTime object.
---@field ToIsoDate fun(self:DateTime):string @Formats a date as a ISO 8601 date-time string. The value returned by this function could be passed to fromIsoDate to produce the original DateTime object. An example ISO 8601 date-time string would be 2020-01-02T10:30:45Z, which represents January 2nd 2020 at 10:30 AM, 45 seconds.
---@field FormatUniversalTime fun(self:DateTime, format:string, locale:string):string @Generates a string from the DateTime value interpreted as Universal Coordinated Time (UTC) and a format string. The format string should contain tokens, which will replace to certain date/time values described by the DateTime object. For details on all the available tokens, see DateTime Format Strings.
---@field FormatLocalTime fun(self:DateTime, format:string, locale:string):string @Generates a string from the DateTime value interpreted as local time and a format string. The format string should contain tokens, which will replace to certain date/time values described by the DateTime object. For details on all the available tokens, see DateTime Format Strings.
---

---
---@class DockWidgetPluginGuiInfo DockWidgetPluginGuiInfo is a datatype used to describe details for a DockWidgetPluginGui. This datatype is used when constructing a PluginGui via the plugin’s CreateDockWidgetPluginGui() method.
---@field new fun(initDockState:Enum.InitialDockState, initEnabled:boolean, overrideEnabledRestore:boolean, floatXSize:number, floatYSize:number, minWidth:number, minHeight:number):DockWidgetPluginGuiInfo The main constructor function for the DockWidgetPluginGuiInfo.
---@field InitialEnabled boolean The initial enabled state of a PluginGui created using this DockWidgetPluginGuiInfo. If a PluginGui with the same ‘‘pluginGuiId’’ has previously been created in an earlier session of Roblox Studio, then it will reload that saved enabled state (unless InitialEnabledShouldOverrideRestore is true).
---@field InitialEnabledShouldOverrideRestore boolean If true, the value of InitialEnabled will override the previously saved enabled state of a PluginGui being created with this DockWidgetPluginGuiInfo. The previously saved enabled state is loaded based on the pluginGuiId argument of Plugin:CreateDockWidgetPluginGui.
---@field FloatingXSize number The initial pixel width of a PluginGui created using this DockWidgetPluginGuiInfo, when the InitialDockState is set to Float.
---@field FloatingYSize number The initial pixel height of a PluginGui created using this DockWidgetPluginGuiInfo, when the InitialDockState is set to Float.
---@field MinWidth number The minimum width of a PluginGui created using this DockWidgetPluginGuiInfo, in pixels.
---@field MinHeight number The minimum height of a PluginGui created using this DockWidgetPluginGuiInfo, in pixels.
---

---
---@class EnumItem
---@field Name string The name of this EnumItem.
---@field Value number The integral value assigned to this enum.
---@field EnumType EnumItem A reference to the parent Enum of this EnumItem.
---

---
---@class Faces
---@field new fun(normalIds:Tuple):Faces Creates a new Faces using list of faces
---@field Top boolean Whether the top face is included
---@field Bottom boolean Whether the bottom face is included
---@field Left boolean Whether the left face is included
---@field Right boolean Whether the right face is included
---@field Back boolean Whether the back face is included
---@field Front boolean Whether the front face is included
---

---
---@class NumberRange
---@field new fun(value:number):NumberRange Creates a new NumberRange with the minimum and maximum set to value.
---@field new fun(minimum:number, maximum:number) Creates a new NumberRange with the provided minimum and maximum. minimum must be less than or equal to maximum.
---@field Min number Minimum value. Will always be less than or equal to the maximum.
---@field Max number Maximum value. Will always be greater than or equal to the minimum.
---

---
---@class NumberSequence
---@field new fun(n:number):NumberSequence Creates a sequence of two keypoints with n for each value
---@field new fun(n0:number, n1:number) Creates a sequence of two keypoints with n0 and n1 as the value
---@field new fun(Keypoints:NumberSequenceKeypoint[]):NumberSequence Creates a new Vector2int16 using ordinates x and y. Similar to Vector2, but uses integral coordinates
---@field Keypoints NumberSequenceKeypoint[] An array containing keypoint values for the NumberSequence.
---

---
---@class NumberSequenceKeypoint
---@field new fun(time:number, value:number) Creates a keypoint with a specified time and value.
---@field new fun(time:number, value:number, envelop:number) Creates a keypoint with a specified time, value, and envelope.
---@field new fun(Keypoints:NumberSequenceKeypoint[]):NumberSequenceKeypoint Creates a new Vector2int16 using ordinates x and y. Similar to Vector2, but uses integral coordinates
---@field Envelope number Indicates the amount of variance allowed from the Value. A computed value.
---@field Time number The relative time at which the keypoint is positioned.
---@field Value number The base value of this keypoint.
---

---
---@class OverlapParams
---

---
---@class PathWaypoint A datatype constructed by a PathWaypointAction action and Vector3 position which is used by the PathService to create points along a generated path.
---@field new fun(position:Vector3, action:Enum.PathWaypointAction):PathWaypoint Creates a new PathWaypoint object
---@field Action Enum.PathWaypointAction The action to be performed at this waypoint.
---@field Position Vector3 The 3D position of the waypoint
---

---
---@class PhysicalProperties PhysicalProperties is an object that describes several physical properties of a part: Density, Elasticity and Friction. It is used in the similarly-named BasePart.CustomPhysicalProperties property.
---@field new fun(material:Enum.Material):PhysicalProperties Creates a PhysicalProperties container, with the density, friction, and elasticity specified for this Material.
---@field new fun(density:number, friction:number, elasticity:number):PhysicalProperties Creates a PhysicalProperties container, with the specified density, friction, and elasticity.
---@field new fun(density:number, friction:number, elasticity:number, frictionWeight:number, elasticityWeight:number):PhysicalProperties Creates a PhysicalProperties container, with the specified density, friction, and elasticity, as well as the weight of the friction and elasticity.
---
---@field Density number The density set for the custom physical properties. Density is defined as the amount of mass per unit volume. The more dense a part is, the more force it takes to accelerate it.
---@field Friction number The friction set for the custom physical properties. Friction is defined as the force that opposes the relative lateral motion of two solid surfaces in contact. The greater the friction on a part, the quicker it will decelerate when it rubs against another part with friction.
---@field Elasticity number The elasticity set for the custom physical properties. On Roblox, Elasticity refers to a part’s tendency to retain energy when colliding with another part. An Elasticity of 1 indicates that the part bounces with the same energy it had before a collision.
---@field FrictionWeight number The friction weight set for the custom physical properties. The FrictionWeight of two parts rubbing together creates a ratio used to calculate the actual friction between the two parts: the higher a part’s FrictionWeight is, the more its Friction will be used.
---@field ElasticityWeight number The elasticity weight set for the custom physical properties. The ElasticityWeight of two parts colliding creates a ratio used to calculate the actual elasticity between the two parts: the higher a part’s ElasticityWeight is, the more its Elasticity will be used.
---

---
---@class Random
---@field new fun(seed:number):Random Creates a new Random object. If the seed parameter is not specified, it will use a seed pulled from an internal entropy source.
---@field NextInteger fun(min:number, max:number):number Returns a pseudorandom integer uniformly distributed over [min, max].
---@field NextNumber fun():number Returns a pseudorandom number uniformly distributed over [0, 1).
---@field NextNumber fun(min:number, max:number):number Returns a pseudorandom number uniformly distributed over [min, max).
---@field Clone fun():Random Returns a new Random object with the same state as the original.
---

---
---@class Ray
---@field new fun(Origin:Vector3, Direction:Vector3):Ray Creates a new Ray with given Origin and Direction.
---@field Unit Ray The Ray with a normalized direction
---@field Origin Vector3 The position of the origin
---@field Direction Vector3 The direction vector of the ray
---@field ClosestPoint fun(self:Ray, point:Vector3):Vector3 Returns a Vector3 projected onto the ray so that it is within the Ray’s line of sight.
---@field Distance fun(self:Ray, point:Vector3):number Returns the distance between the Ray’s origin and Ray:ClosestPoint(point)
---

---
---@class RaycastParams Stores parameters for WorldRoot:Raycast() operations. The FilterDescendantsInstances property stores an array of objects to use as either a whitelist or blacklist based on the FilterType enum. If desired, the IgnoreWater property can be used to ignore Terrain water and the CollisionGroup property can specify a collision group for the raycasting operation.
---
---@field new fun():RaycastParams Creates a blank RaycastParams object. Unlike other datatype constructors, this constructor does not have any parameters, so you should set its properties appropriately.
---
---@field FilterDescendantsInstances Instance[] @An array of objects whose descendants will be used in filtering raycasting candidates.
---@field FilterType Enum.RaycastFilterType @Determines how the FilterDescendantsInstances list will be used, depending on the RaycastFilterType provided.
---@field IgnoreWater boolean @Determines whether the water material is considered when raycasting against Terrain.
---@field CollisionGroup string @Specifies a collision group for the raycasting operation. Parts in collision groups that are set to not collide with this group will be ignored. If this property is omitted, the raycast will assume the Default collision group.
---

---
---@class RaycastResult RaycastResult stores the result of a successful raycasting operation performed by WorldRoot:Raycast(). It contains the properties listed below.
---
---@field Instance Instance @The BasePart or Terrain cell that the ray intersected.
---@field Position Vector3 @The world space point at which the intersection occurred, usually a point directly on the surface of the instance.
---@field Material Enum.Material @The Material at the intersection point. For normal parts this is the BasePart.Material; for Terrain this can vary depending on terrain data.
---@field Normal Vector3 @The normal vector of the intersected face.
---

---
---@class RBXScriptConnection RBXScriptConnection, also known as a Connection, is a special object returned by the Connect method of an Event (RBXScriptSignal). This is used primarily to disconnect a listener from an Event.
---@field Connected boolean Describes whether or not the connection is still alive. This will become false if connection:Disconnect() is called.
---@field Disconnect fun(self:RBXScriptConnection):void Disconnects the connection from the event.
---

---
---@class RBXScriptSignal
---@field Connect fun(self:RBXScriptSignal, func:function):RBXScriptConnection Establishes a function to be called whenever the event is raised.
---@field Wait fun(self:RBXScriptSignal):any Yields the current thread until this signal is fired. Returns what was fired to the signal.
---

---
---@class Rect
---@field new fun(min:Vector2, max:Vector2):Rect Constructs a new Rect with min as top left corner and max as bottom right corner.
---@field new fun(minX:number, minY:number, maxX:number, maxY:number):Rect Constructs a new Rect using minX and minY as coordinates for the top left corner, and maxX and maxY as coordinates for the bottom right corner.
---@field Width number The width of the Rect in pixels.
---@field Height number The height of the Rect in pixels.
---@field Min number The top-left corner.
---@field Max number The bottom-right corner.
---

---
---@class Region3
---@field new fun(min:Vector3, max:Vector3):Region3 Creates a new Region3 out of two Vector3 values.
---@field CFrame CFrame The center location and rotation of the Region3
---@field Size Vector3 The 3D size of the Region3
---@field ExpandToGrid fun(self:Ray, Region:number):Region3 Expands the Region3 so that it is aligned with a voxel grid based on the provided resolution and returns the expanded Region3.
---

---
---@class Region3int16
---@field new fun(min:Vector3int16, max:Vector3int16):Region3int16 Creates a new Region3int16 out of two Vector3int16 structs
---

---
---@class TweenInfo
---@field new fun(time:number, easingStyle:Enum.EasingStyle, easingDirection:Enum.EasingDirection, repeatCount:number, reverses:boolean, delayTime:number):TweenInfo Creates a new Tweeninfo.
---@field EasingDirection Enum.EasingDirection The direction in which the EasingStyle executes.
---@field Time number The amount of time the tween takes in seconds.
---@field DelayTime number The amount of time that elapses before tween starts in seconds.
---@field RepeatCount number The number of times the tween repeats after tweening once.
---@field EasingStyle Enum.EasingStyle The style in which the tween executes.
---@field Reverses boolean Whether or not the tween does the reverse tween once the inital tween completes.
---

---
---@class UDim
---@field new fun(Scale:number, Offset:number):UDim Creates a new UDim from components
---@field Scale number The scale component of the UDim. The value this represents is scaled relative to the axis that this UDim is representing in a UDim2.
---@field Offset number The pixel unit component of the UDim.
---

---
---@class UDim2
---@field new fun(xScale:number, xOffset:number, yScale:number, yOffset:number):UDim2
---@field new fun(x:UDim, y:UDim):UDim2
---@field FromNormalId fun(normal:Enum.NormalId):UDim2 Constructs a new UDim2 in a particular direction.
---@field FromAxis fun(axis:Enum.Axis):UDim2 Constructs a new UDim2 for a particular axis.
---@field X UDim The x dimension scale and offset
---@field Y UDim The y dimension scale and offset
---@field Width UDim The x dimension scale and offset
---@field Height UDim The x dimension scale and offset
---@field Lerp fun(self:UDim2, goal:UDim2, alpha:number):UDim2 Returns a UDim2 interpolated between this UDim2 and the provided goal. The alpha should be a number between 0 and 1.
---

---
---@class Vector2
---@field new fun(x:number, y:number):Vector2 Creates a new Vector2 using ordinates x and y
---@field X number The x-coordinate
---@field Y number The y-coordinate
---@field Magnitude number The length of the vector
---@field Unit Vector2 A normalized copy of the vector
---@field Lerp fun(self:Vector2, v:Vector2, alpha:number):Vector2 Returns a Vector2 linearly interpolated between this Vector2 and v by the fraction alpha
---@field Dot fun(self:Vector2, v:Vector2):number Returns a scalar dot product of the two vectors
---@field Cross fun(self:Vector2, other:Vector2):Vector2 Returns the cross product of the two vectors
---

---
---@class Vector2int16
---@field new fun(x:number, y:number):Vector2int16 Creates a new Vector2int16 using ordinates x and y. Similar to Vector2, but uses integral coordinates
---@field X number The x-coordinate
---@field Y number The y-coordinate
---

---
---@class Vector3
---@field new fun(x:number, y:number, z:number):Vector3 Creates a new Vector3 using ordinates x and y
---@field FromNormalId fun(normal:Enum.NormalId):Vector3 Constructs a new Vector3 in a particular direction.
---@field FromAxis fun(axis:Enum.Axis):Vector3 Constructs a new Vector3 for a particular axis.
---@field X number The x-coordinate
---@field Y number The y-coordinate
---@field Z number The z-coordinate
---@field Magnitude number The length of the vector
---@field Unit Vector3 A normalized copy of the vector
---@field Lerp fun(self:Vector3, v:Vector3, alpha:number):Vector3 Returns a Vector3 linearly interpolated between this Vector3 and v by the fraction alpha
---@field Dot fun(self:Vector3, v:Vector3):number Returns a scalar dot product of the two vectors
---@field Cross fun(self:Vector3, other:Vector3):Vector3 Returns the cross product of the two vectors
---@field IsClose fun(self:Vector3, other:Vector3, epsilon:number):boolean Returns true if the other Vector3 falls within the epsilon radius of this Vector3.
---

---
---@class Vector3int16
---@field new fun(x:number, y:number, z:number):Vector3int16 Creates a new Vector3int16 using coordinate x, y, z.
---@field X number The x-coordinate
---@field Y number The y-coordinate
---@field Z number The z-coordinate
---



-- OTHERS

---
---@class RobloxDebug
---@field traceback fun():string
---@field profilebegin fun(label:string):void
---@field profileend fun():void
---

---
---@class RobloxOs
---@field time fun():number
---@field difftime fun(t2:number, t2:number):number
---@field date fun(formatString:string, time:number):table<string, any>
---

---
---@class RobloxUtf8
---@field char fun(vararg string):string
---@field codes fun(str:string):function,string,number
---@field codepoint fun(str:string, i:number, j:number):Tuple
---@field len fun(str:string, i:number, j:number):number
---@field offset fun(str:string, n:number, i:number):number
---@field graphmes fun(str:string, i:number, j:number):function
---@field nfcnormalize fun(str:string):string
---@field nfdnormalize fun(str:string):string
---@field charpattern string @"[%z-\x7F\xC2-\xF4][\x80-\xBF]"
---

---
---@class RobloxBit32
---@field arshift fun(x:number, disp:number):number Returns the number x shifted disp bits to the right. The number disp may be any representable integer. Negative displacements shift to the left. This shift operation is what is called arithmetic shift. Vacant bits on the left are filled with copies of the higher bit of x; vacant bits on the right are filled with zeros. In particular, displacements with absolute values higher than 31 result in zero or 0xFFFFFFFF (all original bits are shifted out).
---@field band fun(numbers:Tuple):number Returns the bitwise and of its operands.
---@field bnot fun(x:number):number Returns the bitwise negation of x. For any integer x, the following identity holds: assert(bit32.bnot(x) == (-1 - x) % 2^32)
---@field bor fun(numbers:Tuple):number Returns the bitwise or of its operands.
---@field btest fun(numbers:Tuple):boolean Returns a boolean signalling whether the bitwise and of its operands is different from zero.
---@field bxor fun(numbers:Tuple):number Returns the bitwise exclusive or of its operands.
---@field extract fun(n:number, field:number, width:number):number Returns the unsigned number formed by the bits field to field + width - 1 from n. Bits are numbered from 0 (least significant) to 31 (most significant). All accessed bits must be in the range [0, 31]. The default for width is 1.
---@field replace fun(n:number, field:number, width:number):number Returns a copy of n with the bits field to field + width - 1 replaced by the value v. See bit32.extract for details about field and width.
---@field lrotate fun(x:number, disp:number):number Returns the number x rotated disp bits to the left. The number disp may be any representable integer. For any valid displacement, the following identity holds: assert(bit32.lrotate(x, disp) == bit32.lrotate(x, disp % 32)). In particular, negative displacements rotate to the right.
---@field lshift fun(x:number, disp:number):number Returns the number x shifted disp bits to the left. The number disp may be any representable integer. Negative displacements shift to the right. In any direction, vacant bits are filled with zeros. In particular, displacements with absolute values higher than 31 result in zero (all bits are shifted out). For positive displacements, the following equality holds: assert(bit32.lshift(b, disp) == (b * 2^disp) % 2^32)
---@field rrotate fun(x:number, disp:number):number Returns the number x rotated disp bits to the right. The number disp may be any representable integer. For any valid displacement, the following identity holds: assert(bit32.rrotate(x, disp) == bit32.rrotate(x , disp % 32)). In particular, negative displacements rotate to the left.
---@field rshift fun(x:number, disp:number):number Returns the number x shifted disp bits to the right. The number disp may be any representable integer. Negative displacements shift to the left. In any direction, vacant bits are filled with zeros. In particular, displacements with absolute values higher than 31 result in zero (all bits are shifted out). For positive displacements, the following equality holds: assert(bit32.rshift(b, disp) == math.floor(b % 2^32 / 2^disp)). This shift operation is what is called logical shift.
---

---
---@class RobloxTask The task library offers alternatives to various global functions (wait, spawn and delay) that allow better coordination with the Task Scheduler.
---
---@field spawn fun(functionOrThread:function, vararg any):void Accepts a function or a thread (as returned by coroutine.create) and calls/resumes it immediately through the engine’s scheduler. Arguments after the first are sent to the function/thread. This function does not return any value, even if the provided function returns one immediately.
---@field defer fun(functionOrThread:function, vararg any):void Accepts a function or a thread (as returned by coroutine.create) and defers it until the next resumption cycle, at which point it is resumed with the engine’s scheduler like with task.spawn. Arguments after the first are sent to the function/thread. This function does not return any value, even if the provided function returns one immediately.
---@field delay fun(duration:number, functionOrThread:function, vararg any):void Accepts a function or a thread (as returned by coroutine.create) and schedules it to be called/resumed on the next Heartbeat after the given amount of time in seconds has elapsed. Arguments after the second are sent to the function/thread.
---@field wait fun(duration:number):number Yields the current thread until the given duration (in seconds) has elapsed, then resumes the thread on the next Heartbeat step. The actual amount of time elapsed is returned. If no duration is given, it will default to zero (0). This means the thread resumes on the very next step, which is equivalent in behavior to RunService.Heartbeat:Wait()
---

---
---@class RbxLibrary
---

---
---@class Content:string Content ID representing an animation, texture, sound, or asset in general.
---

---
---@class ProtectedString:string
---

---
---@class BinaryString:string
---
