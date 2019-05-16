---
---@class Instance
---@field Archivable bool
---@field ClassName string
---@field DataCost int
---@field Name string
---@field Parent Object
---@field RobloxLocked bool
---@field archivable bool
---@field className string
---@field ClearAllChildren fun(self:Instance):void
---@field Clone fun(self:Instance):Instance
---@field Destroy fun(self:Instance):void
---@field FindFirstChild fun(self:Instance, name:string, recursive:bool):Instance
---@field GetChildren fun(self:Instance):Objects
---@field GetDebugId fun(self:Instance, scopeLength:int):string
---@field GetFullName fun(self:Instance):string
---@field IsA fun(self:Instance, className:string):bool
---@field IsAncestorOf fun(self:Instance, descendant:Instance):bool
---@field IsDescendantOf fun(self:Instance, ancestor:Instance):bool
---@field Remove fun(self:Instance):void
---@field WaitForChild fun(self:Instance, childName:string, timeOut:double):Instance
---@field children fun(self:Instance):Objects
---@field clone fun(self:Instance):Instance
---@field destroy fun(self:Instance):void
---@field findFirstChild fun(self:Instance, name:string, recursive:bool):Instance
---@field getChildren fun(self:Instance):Objects
---@field isA fun(self:Instance, className:string):bool
---@field isDescendantOf fun(self:Instance, ancestor:Instance):bool
---@field remove fun(self:Instance):void
---@field AncestryChanged fun(child:Instance, parent:Instance):Event
---@field Changed fun(property:Property):Event
---@field ChildAdded fun(child:Instance):Event
---@field ChildRemoved fun(child:Instance):Event
---@field DescendantAdded fun(descendant:Instance):Event
---@field DescendantRemoving fun(descendant:Instance):Event
---@field childAdded fun(child:Instance):Event

---
---@class Accoutrement : Instance
---@field AttachmentForward Vector3
---@field AttachmentPoint CoordinateFrame
---@field AttachmentPos Vector3
---@field AttachmentRight Vector3
---@field AttachmentUp Vector3

---
---@class Accessory : Accoutrement

---
---@class Hat : Accoutrement

---
---@class AdService : Instance
---@field ShowVideoAd fun(self:AdService):void
---@field VideoAdClosed fun(adShown:bool):Event

---
---@class AdvancedDragger : Instance

---
---@class Animation : Instance
---@field AnimationId Content

---
---@class AnimationController : Instance
---@field GetPlayingAnimationTracks fun(self:AnimationController):Array
---@field LoadAnimation fun(self:AnimationController, animation:Instance):Instance
---@field AnimationPlayed fun(animationTrack:Instance):Event

---
---@class AnimationTrack : Instance
---@field Animation Object
---@field IsPlaying bool
---@field Length float
---@field Priority AnimationPriority
---@field TimePosition float
---@field AdjustSpeed fun(self:AnimationTrack, speed:float):void
---@field AdjustWeight fun(self:AnimationTrack, weight:float, fadeTime:float):void
---@field GetTimeOfKeyframe fun(self:AnimationTrack, keyframeName:string):double
---@field Play fun(self:AnimationTrack, fadeTime:float, weight:float, speed:float):void
---@field Stop fun(self:AnimationTrack, fadeTime:float):void
---@field KeyframeReached fun(keyframeName:string):Event
---@field Stopped fun():Event

---
---@class Animator : Instance
---@field LoadAnimation fun(self:Animator, animation:Instance):Instance

---
---@class AssetService : Instance
---@field SetAssetRevertUrl fun(self:AssetService, revertUrl:string):void
---@field SetAssetVersionsUrl fun(self:AssetService, versionsUrl:string):void
---@field SetPlaceAccessUrl fun(self:AssetService, accessUrl:string):void
---@field CreatePlaceAsync fun(self:AssetService, placeName:string, templatePlaceID:int, description:string):int
---@field CreatePlaceInPlayerInventoryAsync fun(self:AssetService, player:Instance, placeName:string, templatePlaceID:int, description:string):int
---@field GetAssetVersions fun(self:AssetService, placeId:int, pageNum:int):Dictionary
---@field GetCreatorAssetID fun(self:AssetService, creationID:int):int
---@field GetGamePlacesAsync fun(self:AssetService):Instance
---@field GetPlacePermissions fun(self:AssetService, placeId:int):Dictionary
---@field RevertAsset fun(self:AssetService, placeId:int, versionNumber:int):bool
---@field SavePlaceAsync fun(self:AssetService):void
---@field SetPlacePermissions fun(self:AssetService, placeId:int, accessType:AccessType, inviteList:Array):bool

---
---@class Attachment : Instance
---@field Axis Vector3
---@field CFrame CoordinateFrame
---@field Position Vector3
---@field Rotation Vector3
---@field SecondaryAxis Vector3
---@field WorldAxis Vector3
---@field WorldPosition Vector3
---@field WorldRotation Vector3
---@field WorldSecondaryAxis Vector3
---@field GetAxis fun(self:Attachment):Vector3
---@field GetSecondaryAxis fun(self:Attachment):Vector3
---@field SetAxis fun(self:Attachment, axis:Vector3):void
---@field SetSecondaryAxis fun(self:Attachment, axis:Vector3):void

---
---@class BadgeService : Instance
---@field SetAwardBadgeUrl fun(self:BadgeService, url:string):void
---@field SetHasBadgeCooldown fun(self:BadgeService, seconds:int):void
---@field SetHasBadgeUrl fun(self:BadgeService, url:string):void
---@field SetIsBadgeDisabledUrl fun(self:BadgeService, url:string):void
---@field SetIsBadgeLegalUrl fun(self:BadgeService, url:string):void
---@field SetPlaceId fun(self:BadgeService, placeId:int):void
---@field AwardBadge fun(self:BadgeService, userId:int, badgeId:int):bool
---@field IsDisabled fun(self:BadgeService, badgeId:int):bool
---@field IsLegal fun(self:BadgeService, badgeId:int):bool
---@field UserHasBadge fun(self:BadgeService, userId:int, badgeId:int):bool
---@field BadgeAwarded fun(message:string, userId:int, badgeId:int):Event

---
---@class BasePlayerGui : Instance

---
---@class CoreGui : BasePlayerGui
---@field SelectionImageObject Object
---@field Version int
---@field SetUserGuiRendering fun(self:CoreGui, enabled:bool, guiAdornee:Instance, faceId:NormalId):void

---
---@class PlayerGui : BasePlayerGui
---@field SelectionImageObject Object
---@field GetTopbarTransparency fun(self:PlayerGui):float
---@field SetTopbarTransparency fun(self:PlayerGui, transparency:float):void
---@field TopbarTransparencyChangedSignal fun(transparency:float):Event

---
---@class StarterGui : BasePlayerGui
---@field ResetPlayerGuiOnSpawn bool
---@field ShowDevelopmentGui bool
---@field GetCoreGuiEnabled fun(self:StarterGui, coreGuiType:CoreGuiType):bool
---@field RegisterGetCore fun(self:StarterGui, parameterName:string, getFunction:Function):void
---@field RegisterSetCore fun(self:StarterGui, parameterName:string, setFunction:Function):void
---@field SetCore fun(self:StarterGui, parameterName:string, value:Variant):void
---@field SetCoreGuiEnabled fun(self:StarterGui, coreGuiType:CoreGuiType, enabled:bool):void
---@field GetCore fun(self:StarterGui, parameterName:string):Variant
---@field CoreGuiChangedSignal fun(coreGuiType:CoreGuiType, enabled:bool):Event

---
---@class BinaryStringValue : Instance

---
---@class BindableEvent : Instance
---@field Fire fun(self:BindableEvent, arguments:Tuple):void
---@field Event fun(arguments:Tuple):Event

---
---@class BindableFunction : Instance
---@field Invoke fun(self:BindableFunction, arguments:Tuple):Tuple
---@field OnInvoke fun(arguments:Tuple):Tuple

---
---@class BodyMover : Instance

---
---@class BodyAngularVelocity : BodyMover
---@field AngularVelocity Vector3
---@field MaxTorque Vector3
---@field P float
---@field angularvelocity Vector3
---@field maxTorque Vector3

---
---@class BodyForce : BodyMover
---@field Force Vector3
---@field force Vector3

---
---@class BodyGyro : BodyMover
---@field CFrame CoordinateFrame
---@field D float
---@field MaxTorque Vector3
---@field P float
---@field cframe CoordinateFrame
---@field maxTorque Vector3

---
---@class BodyPosition : BodyMover
---@field D float
---@field MaxForce Vector3
---@field P float
---@field Position Vector3
---@field maxForce Vector3
---@field position Vector3
---@field GetLastForce fun(self:BodyPosition):Vector3
---@field lastForce fun(self:BodyPosition):Vector3
---@field ReachedTarget fun():Event

---
---@class BodyThrust : BodyMover
---@field Force Vector3
---@field Location Vector3
---@field force Vector3
---@field location Vector3

---
---@class BodyVelocity : BodyMover
---@field MaxForce Vector3
---@field P float
---@field Velocity Vector3
---@field maxForce Vector3
---@field velocity Vector3
---@field GetLastForce fun(self:BodyVelocity):Vector3
---@field lastForce fun(self:BodyVelocity):Vector3

---
---@class RocketPropulsion : BodyMover
---@field CartoonFactor float
---@field MaxSpeed float
---@field MaxThrust float
---@field MaxTorque Vector3
---@field Target Object
---@field TargetOffset Vector3
---@field TargetRadius float
---@field ThrustD float
---@field ThrustP float
---@field TurnD float
---@field TurnP float
---@field Abort fun(self:RocketPropulsion):void
---@field Fire fun(self:RocketPropulsion):void
---@field fire fun(self:RocketPropulsion):void
---@field ReachedTarget fun():Event

---
---@class BoolValue : Instance
---@field Value bool
---@field Changed fun(value:bool):Event
---@field changed fun(value:bool):Event

---
---@class BrickColorValue : Instance
---@field Value BrickColor
---@field Changed fun(value:BrickColor):Event
---@field changed fun(value:BrickColor):Event

---
---@class Button : Instance
---@field SetActive fun(self:Button, active:bool):void
---@field Click fun():Event

---
---@class CFrameValue : Instance
---@field Value CoordinateFrame
---@field Changed fun(value:CoordinateFrame):Event
---@field changed fun(value:CoordinateFrame):Event

---
---@class CacheableContentProvider : Instance

---
---@class MeshContentProvider : CacheableContentProvider

---
---@class SolidModelContentProvider : CacheableContentProvider

---
---@class TextureContentProvider : CacheableContentProvider

---
---@class Camera : Instance
---@field CFrame CoordinateFrame
---@field CameraSubject Object
---@field CameraType CameraType
---@field CoordinateFrame CoordinateFrame
---@field FieldOfView float
---@field Focus CoordinateFrame
---@field HeadLocked bool
---@field HeadScale float
---@field ViewportSize Vector2
---@field focus CoordinateFrame
---@field GetPanSpeed fun(self:Camera):float
---@field GetRenderCFrame fun(self:Camera):CoordinateFrame
---@field GetRoll fun(self:Camera):float
---@field GetTiltSpeed fun(self:Camera):float
---@field Interpolate fun(self:Camera, endPos:CoordinateFrame, endFocus:CoordinateFrame, duration:float):void
---@field PanUnits fun(self:Camera, units:int):void
---@field ScreenPointToRay fun(self:Camera, x:float, y:float, depth:float):Ray
---@field SetCameraPanMode fun(self:Camera, mode:CameraPanMode):void
---@field SetRoll fun(self:Camera, rollAngle:float):void
---@field TiltUnits fun(self:Camera, units:int):bool
---@field ViewportPointToRay fun(self:Camera, x:float, y:float, depth:float):Ray
---@field WorldToScreenPoint fun(self:Camera, worldPoint:Vector3):Tuple
---@field WorldToViewportPoint fun(self:Camera, worldPoint:Vector3):Tuple
---@field Zoom fun(self:Camera, distance:float):bool
---@field FirstPersonTransition fun(entering:bool):Event
---@field InterpolationFinished fun():Event

---
---@class ChangeHistoryService : Instance
---@field GetCanRedo fun(self:ChangeHistoryService):Tuple
---@field GetCanUndo fun(self:ChangeHistoryService):Tuple
---@field Redo fun(self:ChangeHistoryService):void
---@field ResetWaypoints fun(self:ChangeHistoryService):void
---@field SetEnabled fun(self:ChangeHistoryService, state:bool):void
---@field SetWaypoint fun(self:ChangeHistoryService, name:string):void
---@field Undo fun(self:ChangeHistoryService):void
---@field OnRedo fun(waypoint:string):Event
---@field OnUndo fun(waypoint:string):Event

---
---@class CharacterAppearance : Instance

---
---@class BodyColors : CharacterAppearance
---@field HeadColor BrickColor
---@field LeftArmColor BrickColor
---@field LeftLegColor BrickColor
---@field RightArmColor BrickColor
---@field RightLegColor BrickColor
---@field TorsoColor BrickColor

---
---@class CharacterMesh : CharacterAppearance
---@field BaseTextureId int
---@field BodyPart BodyPart
---@field MeshId int
---@field OverlayTextureId int

---
---@class Clothing : CharacterAppearance

---
---@class Pants : Clothing
---@field PantsTemplate Content

---
---@class Shirt : Clothing
---@field ShirtTemplate Content

---
---@class ShirtGraphic : CharacterAppearance
---@field Graphic Content

---
---@class Skin : CharacterAppearance
---@field SkinColor BrickColor

---
---@class Chat : Instance
---@field Chat fun(self:Chat, partOrCharacter:Instance, message:string, color:ChatColor):void
---@field FilterStringAsync fun(self:Chat, stringToFilter:string, playerFrom:Instance, playerTo:Instance):string
---@field FilterStringForBroadcast fun(self:Chat, stringToFilter:string, playerFrom:Instance):string
---@field FilterStringForPlayerAsync fun(self:Chat, stringToFilter:string, playerToFilterFor:Instance):string
---@field Chatted fun(part:Instance, message:string, color:ChatColor):Event

---
---@class ChatFilter : Instance

---
---@class ClickDetector : Instance
---@field MaxActivationDistance float
---@field MouseClick fun(playerWhoClicked:Instance):Event
---@field MouseHoverEnter fun(playerWhoHovered:Instance):Event
---@field MouseHoverLeave fun(playerWhoHovered:Instance):Event
---@field mouseClick fun(playerWhoClicked:Instance):Event

---
---@class ClusterPacketCache : Instance

---
---@class CollectionService : Instance
---@field GetCollection fun(self:CollectionService, class:string):Objects
---@field ItemAdded fun(instance:Instance):Event
---@field ItemRemoved fun(instance:Instance):Event

---
---@class Color3Value : Instance
---@field Value Color3
---@field Changed fun(value:Color3):Event
---@field changed fun(value:Color3):Event

---
---@class Configuration : Instance

---
---@class Constraint : Instance
---@field Attachment0 Object
---@field Attachment1 Object
---@field Enabled bool

---
---@class BallSocketConstraint : Constraint
---@field LimitsEnabled bool
---@field Restitution float
---@field UpperAngle float

---
---@class HingeConstraint : Constraint
---@field ActuatorType ActuatorType
---@field AngularSpeed float
---@field AngularVelocity float
---@field CurrentAngle float
---@field LimitsEnabled bool
---@field LowerAngle float
---@field MotorMaxAcceleration float
---@field MotorMaxTorque float
---@field Restitution float
---@field ServoMaxTorque float
---@field TargetAngle float
---@field UpperAngle float

---
---@class MoveToConstraint : Constraint
---@field MaxForce float
---@field StabilizingDistance float
---@field Velocity float

---
---@class RodConstraint : Constraint
---@field CurrentDistance float
---@field Length float

---
---@class RopeConstraint : Constraint
---@field CurrentDistance float
---@field Length float
---@field Restitution float

---
---@class SlidingBallConstraint : Constraint
---@field ActuatorType ActuatorType
---@field CurrentPosition float
---@field LimitsEnabled bool
---@field LowerLimit float
---@field MotorMaxAcceleration float
---@field MotorMaxForce float
---@field Restitution float
---@field ServoMaxForce float
---@field Speed float
---@field TargetPosition float
---@field UpperLimit float
---@field Velocity float

---
---@class CylindricalConstraint : SlidingBallConstraint
---@field AzimuthalAngle float
---@field InclinationAngle float

---
---@class PrismaticConstraint : SlidingBallConstraint

---
---@class SpringConstraint : Constraint
---@field CurrentLength float
---@field Damping float
---@field FreeLength float
---@field LimitsEnabled bool
---@field MaxForce float
---@field MaxLength float
---@field MinLength float
---@field Stiffness float

---
---@class ContentFilter : Instance
---@field SetFilterLimits fun(self:ContentFilter, outstandingRequests:int, cacheSize:int):void
---@field SetFilterUrl fun(self:ContentFilter, url:string):void

---
---@class ContentProvider : Instance
---@field BaseUrl string
---@field RequestQueueSize int
---@field Preload fun(self:ContentProvider, contentId:Content):void
---@field SetAssetUrl fun(self:ContentProvider, url:string):void
---@field SetBaseUrl fun(self:ContentProvider, url:string):void
---@field SetCacheSize fun(self:ContentProvider, count:int):void
---@field SetThreadPool fun(self:ContentProvider, count:int):void
---@field PreloadAsync fun(self:ContentProvider, contentIdList:Array):void

---
---@class ContextActionService : Instance
---@field BindAction fun(self:ContextActionService, actionName:string, functionToBind:Function, createTouchButton:bool, inputTypes:Tuple):void
---@field BindActionToInputTypes fun(self:ContextActionService, actionName:string, functionToBind:Function, createTouchButton:bool, inputTypes:Tuple):void
---@field BindActivate fun(self:ContextActionService, userInputTypeForActivation:UserInputType, keyCodeForActivation:KeyCode):void
---@field BindCoreAction fun(self:ContextActionService, actionName:string, functionToBind:Function, createTouchButton:bool, inputTypes:Tuple):void
---@field CallFunction fun(self:ContextActionService, actionName:string, state:UserInputState, inputObject:Instance):void
---@field FireActionButtonFoundSignal fun(self:ContextActionService, actionName:string, actionButton:Instance):void
---@field GetAllBoundActionInfo fun(self:ContextActionService):Dictionary
---@field GetBoundActionInfo fun(self:ContextActionService, actionName:string):Dictionary
---@field GetCurrentLocalToolIcon fun(self:ContextActionService):string
---@field SetDescription fun(self:ContextActionService, actionName:string, description:string):void
---@field SetImage fun(self:ContextActionService, actionName:string, image:string):void
---@field SetPosition fun(self:ContextActionService, actionName:string, position:UDim2):void
---@field SetTitle fun(self:ContextActionService, actionName:string, title:string):void
---@field UnbindAction fun(self:ContextActionService, actionName:string):void
---@field UnbindActivate fun(self:ContextActionService, userInputTypeForActivation:UserInputType, keyCodeForActivation:KeyCode):void
---@field UnbindAllActions fun(self:ContextActionService):void
---@field UnbindCoreAction fun(self:ContextActionService, actionName:string):void
---@field GetButton fun(self:ContextActionService, actionName:string):Instance
---@field BoundActionAdded fun(actionAdded:string, createTouchButton:bool, functionInfoTable:Dictionary):Event
---@field BoundActionChanged fun(actionChanged:string, changeName:string, changeTable:Dictionary):Event
---@field BoundActionRemoved fun(actionRemoved:string, functionInfoTable:Dictionary):Event
---@field GetActionButtonEvent fun(actionName:string):Event
---@field LocalToolEquipped fun(toolEquipped:Instance):Event
---@field LocalToolUnequipped fun(toolUnequipped:Instance):Event

---
---@class Controller : Instance
---@field BindButton fun(self:Controller, button:Button, caption:string):void
---@field GetButton fun(self:Controller, button:Button):bool
---@field UnbindButton fun(self:Controller, button:Button):void
---@field bindButton fun(self:Controller, button:Button, caption:string):void
---@field getButton fun(self:Controller, button:Button):bool
---@field ButtonChanged fun(button:Button):Event

---
---@class HumanoidController : Controller

---
---@class SkateboardController : Controller
---@field Steer float
---@field Throttle float
---@field AxisChanged fun(axis:string):Event

---
---@class VehicleController : Controller

---
---@class ControllerService : Instance

---
---@class CookiesService : Instance
---@field DeleteCookieValue fun(self:CookiesService, key:string):void
---@field GetCookieValue fun(self:CookiesService, key:string):string
---@field SetCookieValue fun(self:CookiesService, key:string, value:string):void

---
---@class CustomEvent : Instance
---@field GetAttachedReceivers fun(self:CustomEvent):Objects
---@field SetValue fun(self:CustomEvent, newValue:float):void
---@field ReceiverConnected fun(receiver:Instance):Event
---@field ReceiverDisconnected fun(receiver:Instance):Event

---
---@class CustomEventReceiver : Instance
---@field Source Object
---@field GetCurrentValue fun(self:CustomEventReceiver):float
---@field EventConnected fun(event:Instance):Event
---@field EventDisconnected fun(event:Instance):Event
---@field SourceValueChanged fun(newValue:float):Event

---
---@class DataModelMesh : Instance
---@field Offset Vector3
---@field Scale Vector3
---@field VertexColor Vector3

---
---@class BevelMesh : DataModelMesh

---
---@class BlockMesh : BevelMesh

---
---@class CylinderMesh : BevelMesh

---
---@class FileMesh : DataModelMesh
---@field MeshId Content
---@field TextureId Content

---
---@class SpecialMesh : FileMesh
---@field MeshType MeshType

---
---@class DataStoreService : Instance
---@field LegacyNamingScheme bool
---@field GetDataStore fun(self:DataStoreService, name:string, scope:string):Instance
---@field GetGlobalDataStore fun(self:DataStoreService):Instance
---@field GetOrderedDataStore fun(self:DataStoreService, name:string, scope:string):Instance

---
---@class Debris : Instance
---@field MaxItems int
---@field AddItem fun(self:Debris, item:Instance, lifetime:double):void
---@field SetLegacyMaxItems fun(self:Debris, enabled:bool):void
---@field addItem fun(self:Debris, item:Instance, lifetime:double):void

---
---@class DebugSettings : Instance
---@field AltCdnFailureCount int
---@field AltCdnSuccessCount int
---@field AvailablePhysicalMemory int
---@field BlockMeshSize int
---@field CPU string
---@field CdnFailureCount int
---@field CdnResponceTime double
---@field CdnSuccessCount int
---@field CpuCount int
---@field CpuSpeed int
---@field DataModel int
---@field ElapsedTime double
---@field ErrorReporting ErrorReporting
---@field GfxCard string
---@field InstanceCount int
---@field IsFmodProfilingEnabled bool
---@field IsProfilingEnabled bool
---@field IsScriptStackTracingEnabled bool
---@field JobCount int
---@field LastCdnFailureTimeSpan double
---@field LuaRamLimit int
---@field NameDatabaseBytes int
---@field NameDatabaseSize int
---@field OsIs64Bit bool
---@field OsPlatform string
---@field OsPlatformId int
---@field OsVer string
---@field PageFaultsPerSecond int
---@field PageFileBytes int
---@field PixelShaderModel float
---@field PlayerCount int
---@field PrivateBytes int
---@field PrivateWorkingSetBytes int
---@field ProcessCores double
---@field ProcessorTime int
---@field ProfilingWindow double
---@field RAM int
---@field ReportExtendedMachineConfiguration bool
---@field ReportSoundWarnings bool
---@field Resolution string
---@field RobloxFailureCount int
---@field RobloxProductName string
---@field RobloxRespoceTime double
---@field RobloxSuccessCount int
---@field RobloxVersion string
---@field SIMD string
---@field SystemProductName string
---@field TickCountPreciseOverride TickCountSampleMethod
---@field TotalPhysicalMemory int
---@field TotalProcessorTime int
---@field VertexShaderModel float
---@field VideoMemory int
---@field VirtualBytes int
---@field LegacyScriptMode fun(self:DebugSettings):void
---@field ResetCdnFailureCounts fun(self:DebugSettings):Tuple
---@field SetBlockingRemove fun(self:DebugSettings, value:bool):void

---
---@class DebuggerBreakpoint : Instance
---@field Condition string
---@field IsEnabled bool
---@field Line int

---
---@class DebuggerManager : Instance
---@field DebuggingEnabled bool
---@field AddDebugger fun(self:DebuggerManager, script:Instance):Instance
---@field EnableDebugging fun(self:DebuggerManager):void
---@field GetDebuggers fun(self:DebuggerManager):Objects
---@field Resume fun(self:DebuggerManager):void
---@field StepIn fun(self:DebuggerManager):void
---@field StepOut fun(self:DebuggerManager):void
---@field StepOver fun(self:DebuggerManager):void
---@field DebuggerAdded fun(debugger:Instance):Event
---@field DebuggerRemoved fun(debugger:Instance):Event

---
---@class DebuggerWatch : Instance
---@field Expression string
---@field CheckSyntax fun(self:DebuggerWatch):void

---
---@class Dialog : Instance
---@field ConversationDistance float
---@field GoodbyeDialog string
---@field InUse bool
---@field InitialPrompt string
---@field Purpose DialogPurpose
---@field Tone DialogTone
---@field SignalDialogChoiceSelected fun(self:Dialog, player:Instance, dialogChoice:Instance):void
---@field DialogChoiceSelected fun(player:Instance, dialogChoice:Instance):Event

---
---@class DialogChoice : Instance
---@field GoodbyeDialog string
---@field ResponseDialog string
---@field UserDialog string

---
---@class DoubleConstrainedValue : Instance
---@field ConstrainedValue double
---@field MaxValue double
---@field MinValue double
---@field Value double
---@field Changed fun(value:double):Event
---@field changed fun(value:double):Event

---
---@class Dragger : Instance
---@field AxisRotate fun(self:Dragger, axis:Axis):void
---@field MouseDown fun(self:Dragger, mousePart:Instance, pointOnMousePart:Vector3, parts:Objects):void
---@field MouseMove fun(self:Dragger, mouseRay:Ray):void
---@field MouseUp fun(self:Dragger):void

---
---@class Explosion : Instance
---@field BlastPressure float
---@field BlastRadius float
---@field DestroyJointRadiusPercent float
---@field ExplosionType ExplosionType
---@field Position Vector3
---@field Visible bool
---@field Hit fun(part:Instance, distance:float):Event

---
---@class FaceInstance : Instance
---@field Face NormalId

---
---@class Decal : FaceInstance
---@field LocalTransparencyModifier float
---@field Shiny float
---@field Specular float
---@field Texture Content
---@field Transparency float

---
---@class Texture : Decal
---@field StudsPerTileU float
---@field StudsPerTileV float

---
---@class Feature : Instance
---@field FaceId NormalId
---@field InOut InOut
---@field LeftRight LeftRight
---@field TopBottom TopBottom

---
---@class Hole : Feature

---
---@class MotorFeature : Feature

---
---@class Fire : Instance
---@field Color Color3
---@field Enabled bool
---@field Heat float
---@field SecondaryColor Color3
---@field Size float
---@field size float

---
---@class FlagStandService : Instance

---
---@class FlyweightService : Instance

---
---@class CSGDictionaryService : FlyweightService

---
---@class NonReplicatedCSGDictionaryService : FlyweightService

---
---@class Folder : Instance

---
---@class ForceField : Instance

---
---@class FriendService : Instance
---@field SetBreakFriendUrl fun(self:FriendService, url:string):void
---@field SetCreateFriendRequestUrl fun(self:FriendService, url:string):void
---@field SetDeleteFriendRequestUrl fun(self:FriendService, url:string):void
---@field SetEnabled fun(self:FriendService, enable:bool):void
---@field SetFriendsOnlineUrl fun(self:FriendService, url:string):void
---@field SetGetFriendsUrl fun(self:FriendService, url:string):void
---@field SetMakeFriendUrl fun(self:FriendService, url:string):void

---
---@class FunctionalTest : Instance
---@field Description string
---@field Error fun(self:FunctionalTest, message:string):void
---@field Failed fun(self:FunctionalTest, message:string):void
---@field Pass fun(self:FunctionalTest, message:string):void
---@field Passed fun(self:FunctionalTest, message:string):void
---@field Warn fun(self:FunctionalTest, message:string):void

---
---@class GamePassService : Instance
---@field SetPlayerHasPassUrl fun(self:GamePassService, playerHasPassUrl:string):void
---@field PlayerHasPass fun(self:GamePassService, player:Instance, gamePassId:int):bool

---
---@class GameSettings : Instance
---@field BubbleChatLifetime float
---@field BubbleChatMaxBubbles int
---@field ChatHistory int
---@field ChatScrollLength int
---@field CollisionSoundEnabled bool
---@field CollisionSoundVolume float
---@field HardwareMouse bool
---@field MaxCollisionSounds int
---@field ReportAbuseChatHistory int
---@field SoftwareSound bool
---@field SoundEnabled bool
---@field VideoCaptureEnabled bool
---@field VideoQuality VideoQualitySettings
---@field VideoRecordingChangeRequest fun(recording:bool):Event

---
---@class GamepadService : Instance

---
---@class Geometry : Instance

---
---@class GlobalDataStore : Instance
---@field OnUpdate fun(self:GlobalDataStore, key:string, callback:Function):Connection
---@field GetAsync fun(self:GlobalDataStore, key:string):Variant
---@field IncrementAsync fun(self:GlobalDataStore, key:string, delta:int):Variant
---@field SetAsync fun(self:GlobalDataStore, key:string, value:Variant):void
---@field UpdateAsync fun(self:GlobalDataStore, key:string, transformFunction:Function):Tuple

---
---@class OrderedDataStore : GlobalDataStore
---@field GetSortedAsync fun(self:OrderedDataStore, ascending:bool, pagesize:int, minValue:Variant, maxValue:Variant):Instance

---
---@class GroupService : Instance
---@field GetAlliesAsync fun(self:GroupService, groupId:int):Instance
---@field GetEnemiesAsync fun(self:GroupService, groupId:int):Instance
---@field GetGroupInfoAsync fun(self:GroupService, groupId:int):Variant
---@field GetGroupsAsync fun(self:GroupService, userId:int):Array

---
---@class GuiBase : Instance

---
---@class GuiBase2d : GuiBase
---@field AbsolutePosition Vector2
---@field AbsoluteSize Vector2

---
---@class GuiObject : GuiBase2d
---@field Active bool
---@field BackgroundColor BrickColor
---@field BackgroundColor3 Color3
---@field BackgroundTransparency float
---@field BorderColor BrickColor
---@field BorderColor3 Color3
---@field BorderSizePixel int
---@field ClipsDescendants bool
---@field Draggable bool
---@field NextSelectionDown Object
---@field NextSelectionLeft Object
---@field NextSelectionRight Object
---@field NextSelectionUp Object
---@field Position UDim2
---@field Rotation float
---@field Selectable bool
---@field SelectionImageObject Object
---@field Size UDim2
---@field SizeConstraint SizeConstraint
---@field Transparency float
---@field Visible bool
---@field ZIndex int
---@field TweenPosition fun(self:GuiObject, endPosition:UDim2, easingDirection:EasingDirection, easingStyle:EasingStyle, time:float, override:bool, callback:Function):bool
---@field TweenSize fun(self:GuiObject, endSize:UDim2, easingDirection:EasingDirection, easingStyle:EasingStyle, time:float, override:bool, callback:Function):bool
---@field TweenSizeAndPosition fun(self:GuiObject, endSize:UDim2, endPosition:UDim2, easingDirection:EasingDirection, easingStyle:EasingStyle, time:float, override:bool, callback:Function):bool
---@field DragBegin fun(initialPosition:UDim2):Event
---@field DragStopped fun(x:int, y:int):Event
---@field InputBegan fun(input:Instance):Event
---@field InputChanged fun(input:Instance):Event
---@field InputEnded fun(input:Instance):Event
---@field MouseEnter fun(x:int, y:int):Event
---@field MouseLeave fun(x:int, y:int):Event
---@field MouseMoved fun(x:int, y:int):Event
---@field MouseWheelBackward fun(x:int, y:int):Event
---@field MouseWheelForward fun(x:int, y:int):Event
---@field SelectionGained fun():Event
---@field SelectionLost fun():Event
---@field TouchLongPress fun(touchPositions:Array, state:UserInputState):Event
---@field TouchPan fun(touchPositions:Array, totalTranslation:Vector2, velocity:Vector2, state:UserInputState):Event
---@field TouchPinch fun(touchPositions:Array, scale:float, velocity:float, state:UserInputState):Event
---@field TouchRotate fun(touchPositions:Array, rotation:float, velocity:float, state:UserInputState):Event
---@field TouchSwipe fun(swipeDirection:SwipeDirection, numberOfTouches:int):Event
---@field TouchTap fun(touchPositions:Array):Event

---
---@class Frame : GuiObject
---@field Style FrameStyle

---
---@class GuiButton : GuiObject
---@field AutoButtonColor bool
---@field Modal bool
---@field Selected bool
---@field Style ButtonStyle
---@field SetVerb fun(self:GuiButton, verb:string):void
---@field MouseButton1Click fun():Event
---@field MouseButton1Down fun(x:int, y:int):Event
---@field MouseButton1Up fun(x:int, y:int):Event
---@field MouseButton2Click fun():Event
---@field MouseButton2Down fun(x:int, y:int):Event
---@field MouseButton2Up fun(x:int, y:int):Event

---
---@class ImageButton : GuiButton
---@field Image Content
---@field ImageColor3 Color3
---@field ImageRectOffset Vector2
---@field ImageRectSize Vector2
---@field ImageTransparency float
---@field ScaleType ScaleType
---@field SliceCenter Rect2D

---
---@class TextButton : GuiButton
---@field Font Font
---@field FontSize FontSize
---@field Text string
---@field TextBounds Vector2
---@field TextColor BrickColor
---@field TextColor3 Color3
---@field TextFits bool
---@field TextScaled bool
---@field TextStrokeColor3 Color3
---@field TextStrokeTransparency float
---@field TextTransparency float
---@field TextWrap bool
---@field TextWrapped bool
---@field TextXAlignment TextXAlignment
---@field TextYAlignment TextYAlignment

---
---@class GuiLabel : GuiObject

---
---@class ImageLabel : GuiLabel
---@field Image Content
---@field ImageColor3 Color3
---@field ImageRectOffset Vector2
---@field ImageRectSize Vector2
---@field ImageTransparency float
---@field ScaleType ScaleType
---@field SliceCenter Rect2D

---
---@class TextLabel : GuiLabel
---@field Font Font
---@field FontSize FontSize
---@field Text string
---@field TextBounds Vector2
---@field TextColor BrickColor
---@field TextColor3 Color3
---@field TextFits bool
---@field TextScaled bool
---@field TextStrokeColor3 Color3
---@field TextStrokeTransparency float
---@field TextTransparency float
---@field TextWrap bool
---@field TextWrapped bool
---@field TextXAlignment TextXAlignment
---@field TextYAlignment TextYAlignment

---
---@class Scale9Frame : GuiObject
---@field ScaleEdgeSize Vector2int16
---@field SlicePrefix string

---
---@class ScrollingFrame : GuiObject
---@field AbsoluteWindowSize Vector2
---@field BottomImage Content
---@field CanvasPosition Vector2
---@field CanvasSize UDim2
---@field MidImage Content
---@field ScrollBarThickness int
---@field ScrollingEnabled bool
---@field TopImage Content

---
---@class TextBox : GuiObject
---@field ClearTextOnFocus bool
---@field Font Font
---@field FontSize FontSize
---@field MultiLine bool
---@field Text string
---@field TextBounds Vector2
---@field TextColor BrickColor
---@field TextColor3 Color3
---@field TextFits bool
---@field TextScaled bool
---@field TextStrokeColor3 Color3
---@field TextStrokeTransparency float
---@field TextTransparency float
---@field TextWrap bool
---@field TextWrapped bool
---@field TextXAlignment TextXAlignment
---@field TextYAlignment TextYAlignment
---@field CaptureFocus fun(self:TextBox):void
---@field IsFocused fun(self:TextBox):bool
---@field ReleaseFocus fun(self:TextBox, submitted:bool):void
---@field FocusLost fun(enterPressed:bool, inputThatCausedFocusLoss:Instance):Event
---@field Focused fun():Event

---
---@class LayerCollector : GuiBase2d

---
---@class BillboardGui : LayerCollector
---@field Active bool
---@field Adornee Object
---@field AlwaysOnTop bool
---@field Enabled bool
---@field ExtentsOffset Vector3
---@field PlayerToHideFrom Object
---@field Size UDim2
---@field SizeOffset Vector2
---@field StudsOffset Vector3

---
---@class ScreenGui : LayerCollector

---
---@class GuiMain : ScreenGui

---
---@class SurfaceGui : LayerCollector
---@field Active bool
---@field Adornee Object
---@field AlwaysOnTop bool
---@field CanvasSize Vector2
---@field Enabled bool
---@field Face NormalId
---@field ToolPunchThroughDistance float

---
---@class GuiBase3d : GuiBase
---@field Color BrickColor
---@field Color3 Color3
---@field Transparency float
---@field Visible bool

---
---@class FloorWire : GuiBase3d
---@field CycleOffset float
---@field From Object
---@field StudsBetweenTextures float
---@field Texture Content
---@field TextureSize Vector2
---@field To Object
---@field Velocity float
---@field WireRadius float

---
---@class PVAdornment : GuiBase3d
---@field Adornee Object

---
---@class HandleAdornment : PVAdornment
---@field AlwaysOnTop bool
---@field CFrame CoordinateFrame
---@field SizeRelativeOffset Vector3
---@field ZIndex int
---@field MouseButton1Down fun():Event
---@field MouseButton1Up fun():Event
---@field MouseEnter fun():Event
---@field MouseLeave fun():Event

---
---@class BoxHandleAdornment : HandleAdornment
---@field Size Vector3

---
---@class ConeHandleAdornment : HandleAdornment
---@field Height float
---@field Radius float

---
---@class CylinderHandleAdornment : HandleAdornment
---@field Height float
---@field Radius float

---
---@class ImageHandleAdornment : HandleAdornment
---@field Image Content
---@field Size Vector2

---
---@class LineHandleAdornment : HandleAdornment
---@field Length float
---@field Thickness float

---
---@class SphereHandleAdornment : HandleAdornment
---@field Radius float

---
---@class SelectionBox : PVAdornment
---@field LineThickness float
---@field SurfaceColor BrickColor
---@field SurfaceColor3 Color3
---@field SurfaceTransparency float

---
---@class SelectionSphere : PVAdornment
---@field SurfaceColor BrickColor
---@field SurfaceColor3 Color3
---@field SurfaceTransparency float

---
---@class PartAdornment : GuiBase3d
---@field Adornee Object

---
---@class HandlesBase : PartAdornment

---
---@class ArcHandles : HandlesBase
---@field Axes Axes
---@field MouseButton1Down fun(axis:Axis):Event
---@field MouseButton1Up fun(axis:Axis):Event
---@field MouseDrag fun(axis:Axis, relativeAngle:float, deltaRadius:float):Event
---@field MouseEnter fun(axis:Axis):Event
---@field MouseLeave fun(axis:Axis):Event

---
---@class Handles : HandlesBase
---@field Faces Faces
---@field Style HandlesStyle
---@field MouseButton1Down fun(face:NormalId):Event
---@field MouseButton1Up fun(face:NormalId):Event
---@field MouseDrag fun(face:NormalId, distance:float):Event
---@field MouseEnter fun(face:NormalId):Event
---@field MouseLeave fun(face:NormalId):Event

---
---@class SurfaceSelection : PartAdornment
---@field TargetSurface NormalId

---
---@class SelectionLasso : GuiBase3d
---@field Humanoid Object

---
---@class SelectionPartLasso : SelectionLasso
---@field Part Object

---
---@class SelectionPointLasso : SelectionLasso
---@field Point Vector3

---
---@class TextureTrail : GuiBase3d
---@field CycleOffset float
---@field From Object
---@field StudsBetweenTextures float
---@field Texture Content
---@field TextureSize Vector2
---@field To Object
---@field Velocity float

---
---@class GuiItem : Instance

---
---@class Backpack : GuiItem

---
---@class BackpackItem : GuiItem
---@field TextureId Content

---
---@class HopperBin : BackpackItem
---@field Active bool
---@field BinType BinType
---@field Disable fun(self:HopperBin):void
---@field ToggleSelect fun(self:HopperBin):void
---@field Deselected fun():Event
---@field Selected fun(mouse:Instance):Event

---
---@class Tool : BackpackItem
---@field CanBeDropped bool
---@field Enabled bool
---@field Grip CoordinateFrame
---@field GripForward Vector3
---@field GripPos Vector3
---@field GripRight Vector3
---@field GripUp Vector3
---@field ManualActivationOnly bool
---@field RequiresHandle bool
---@field ToolTip string
---@field Activate fun(self:Tool):void
---@field Activated fun():Event
---@field Deactivated fun():Event
---@field Equipped fun(mouse:Instance):Event
---@field Unequipped fun():Event

---
---@class Flag : Tool
---@field TeamColor BrickColor

---
---@class ButtonBindingWidget : GuiItem

---
---@class GuiRoot : GuiItem

---
---@class Hopper : GuiItem

---
---@class StarterPack : GuiItem

---
---@class GuiService : Instance
---@field AutoSelectGuiEnabled bool
---@field CoreGuiNavigationEnabled bool
---@field GuiNavigationEnabled bool
---@field IsModalDialog bool
---@field IsWindows bool
---@field MenuIsOpen bool
---@field ScreenGuiEnabled bool
---@field SelectedCoreObject Object
---@field SelectedObject Object
---@field AddCenterDialog fun(self:GuiService, dialog:Instance, centerDialogType:CenterDialogType, showFunction:Function, hideFunction:Function):void
---@field AddKey fun(self:GuiService, key:string):void
---@field AddSelectionParent fun(self:GuiService, selectionName:string, selectionParent:Instance):void
---@field AddSelectionTuple fun(self:GuiService, selectionName:string, selections:Tuple):void
---@field AddSpecialKey fun(self:GuiService, key:SpecialKey):void
---@field GetBrickCount fun(self:GuiService):int
---@field GetClosestDialogToPosition fun(self:GuiService, position:Vector3):Instance
---@field GetErrorMessage fun(self:GuiService):string
---@field GetUiMessage fun(self:GuiService):string
---@field IsTenFootInterface fun(self:GuiService):bool
---@field OpenBrowserWindow fun(self:GuiService, url:string):void
---@field RemoveCenterDialog fun(self:GuiService, dialog:Instance):void
---@field RemoveKey fun(self:GuiService, key:string):void
---@field RemoveSelectionGroup fun(self:GuiService, selectionName:string):void
---@field RemoveSpecialKey fun(self:GuiService, key:SpecialKey):void
---@field SetErrorMessage fun(self:GuiService, errorMessage:string):void
---@field SetGlobalGuiInset fun(self:GuiService, x1:int, y1:int, x2:int, y2:int):void
---@field SetMenuIsOpen fun(self:GuiService, open:bool):void
---@field SetUiMessage fun(self:GuiService, msgType:UiMessageType, uiMessage:string):void
---@field ShowStatsBasedOnInputString fun(self:GuiService, input:string):bool
---@field ToggleFullscreen fun(self:GuiService):void
---@field GetScreenResolution fun(self:GuiService):Vector2
---@field BrowserWindowClosed fun():Event
---@field ErrorMessageChanged fun(newErrorMessage:string):Event
---@field EscapeKeyPressed fun():Event
---@field KeyPressed fun(key:string, modifiers:string):Event
---@field MenuClosed fun():Event
---@field MenuOpened fun():Event
---@field ShowLeaveConfirmation fun():Event
---@field SpecialKeyPressed fun(key:SpecialKey, modifiers:string):Event
---@field UiMessageChanged fun(msgType:UiMessageType, newUiMessage:string):Event
---@field SendCoreUiNotification fun(title:string, text:string):void

---
---@class GuidRegistryService : Instance

---
---@class HapticService : Instance
---@field GetMotor fun(self:HapticService, inputType:UserInputType, vibrationMotor:VibrationMotor):Tuple
---@field IsMotorSupported fun(self:HapticService, inputType:UserInputType, vibrationMotor:VibrationMotor):bool
---@field IsVibrationSupported fun(self:HapticService, inputType:UserInputType):bool
---@field SetMotor fun(self:HapticService, inputType:UserInputType, vibrationMotor:VibrationMotor, vibrationValues:Tuple):void

---
---@class HttpRbxApiService : Instance
---@field GetAsync fun(self:HttpRbxApiService, apiUrlPath:string, useHttps:bool, priority:ThrottlingPriority):string
---@field PostAsync fun(self:HttpRbxApiService, apiUrlPath:string, data:string, useHttps:bool, priority:ThrottlingPriority, content_type:HttpContentType):string

---
---@class HttpService : Instance
---@field HttpEnabled bool
---@field GenerateGUID fun(self:HttpService, wrapInCurlyBraces:bool):string
---@field JSONDecode fun(self:HttpService, input:string):Variant
---@field JSONEncode fun(self:HttpService, input:Variant):string
---@field UrlEncode fun(self:HttpService, input:string):string
---@field GetAsync fun(self:HttpService, url:string, nocache:bool, headers:Variant):string
---@field PostAsync fun(self:HttpService, url:string, data:string, content_type:HttpContentType, compress:bool, headers:Variant):string

---
---@class Humanoid : Instance
---@field AutoJumpEnabled bool
---@field AutoRotate bool
---@field CameraOffset Vector3
---@field DisplayDistanceType HumanoidDisplayDistanceType
---@field Health float
---@field HealthDisplayDistance float
---@field HipHeight float
---@field Jump bool
---@field JumpPower float
---@field LeftLeg Object
---@field MaxHealth float
---@field MaxSlopeAngle float
---@field MoveDirection Vector3
---@field NameDisplayDistance float
---@field NameOcclusion NameOcclusion
---@field PlatformStand bool
---@field RigType HumanoidRigType
---@field RightLeg Object
---@field SeatPart Object
---@field Sit bool
---@field TargetPoint Vector3
---@field Torso Object
---@field WalkSpeed float
---@field WalkToPart Object
---@field WalkToPoint Vector3
---@field maxHealth float
---@field AddCustomStatus fun(self:Humanoid, status:string):bool
---@field AddStatus fun(self:Humanoid, status:Status):bool
---@field ChangeState fun(self:Humanoid, state:HumanoidStateType):void
---@field EquipTool fun(self:Humanoid, tool:Instance):void
---@field GetPlayingAnimationTracks fun(self:Humanoid):Array
---@field GetState fun(self:Humanoid):HumanoidStateType
---@field GetStateEnabled fun(self:Humanoid, state:HumanoidStateType):bool
---@field GetStatuses fun(self:Humanoid):Array
---@field HasCustomStatus fun(self:Humanoid, status:string):bool
---@field HasStatus fun(self:Humanoid, status:Status):bool
---@field LoadAnimation fun(self:Humanoid, animation:Instance):Instance
---@field Move fun(self:Humanoid, moveDirection:Vector3, relativeToCamera:bool):void
---@field MoveTo fun(self:Humanoid, location:Vector3, part:Instance):void
---@field RemoveCustomStatus fun(self:Humanoid, status:string):bool
---@field RemoveStatus fun(self:Humanoid, status:Status):bool
---@field SetClickToWalkEnabled fun(self:Humanoid, enabled:bool):void
---@field SetStateEnabled fun(self:Humanoid, state:HumanoidStateType, enabled:bool):void
---@field TakeDamage fun(self:Humanoid, amount:float):void
---@field UnequipTools fun(self:Humanoid):void
---@field loadAnimation fun(self:Humanoid, animation:Instance):Instance
---@field takeDamage fun(self:Humanoid, amount:float):void
---@field AnimationPlayed fun(animationTrack:Instance):Event
---@field Climbing fun(speed:float):Event
---@field CustomStatusAdded fun(status:string):Event
---@field CustomStatusRemoved fun(status:string):Event
---@field Died fun():Event
---@field FallingDown fun(active:bool):Event
---@field FreeFalling fun(active:bool):Event
---@field GettingUp fun(active:bool):Event
---@field HealthChanged fun(health:float):Event
---@field Jumping fun(active:bool):Event
---@field MoveToFinished fun(reached:bool):Event
---@field PlatformStanding fun(active:bool):Event
---@field Ragdoll fun(active:bool):Event
---@field Running fun(speed:float):Event
---@field Seated fun(active:bool, currentSeatPart:Instance):Event
---@field StateChanged fun(old:HumanoidStateType, new:HumanoidStateType):Event
---@field StateEnabledChanged fun(state:HumanoidStateType, isEnabled:bool):Event
---@field StatusAdded fun(status:Status):Event
---@field StatusRemoved fun(status:Status):Event
---@field Strafing fun(active:bool):Event
---@field Swimming fun(speed:float):Event

---
---@class InputObject : Instance
---@field Delta Vector3
---@field KeyCode KeyCode
---@field Position Vector3
---@field UserInputState UserInputState
---@field UserInputType UserInputType

---
---@class InsertService : Instance
---@field AllowInsertFreeModels bool
---@field ApproveAssetId fun(self:InsertService, assetId:int):void
---@field ApproveAssetVersionId fun(self:InsertService, assetVersionId:int):void
---@field Insert fun(self:InsertService, instance:Instance):void
---@field SetAdvancedResults fun(self:InsertService, enable:bool, user:bool):void
---@field SetAssetUrl fun(self:InsertService, assetUrl:string):void
---@field SetAssetVersionUrl fun(self:InsertService, assetVersionUrl:string):void
---@field SetBaseCategoryUrl fun(self:InsertService, baseSetsUrl:string):void
---@field SetBaseSetsUrl fun(self:InsertService, baseSetsUrl:string):void
---@field SetCollectionUrl fun(self:InsertService, collectionUrl:string):void
---@field SetFreeDecalUrl fun(self:InsertService, freeDecalUrl:string):void
---@field SetFreeModelUrl fun(self:InsertService, freeModelUrl:string):void
---@field SetTrustLevel fun(self:InsertService, trustLevel:float):void
---@field SetUserCategoryUrl fun(self:InsertService, userSetsUrl:string):void
---@field SetUserSetsUrl fun(self:InsertService, userSetsUrl:string):void
---@field GetBaseCategories fun(self:InsertService):Array
---@field GetBaseSets fun(self:InsertService):Array
---@field GetCollection fun(self:InsertService, categoryId:int):Array
---@field GetFreeDecals fun(self:InsertService, searchText:string, pageNum:int):Array
---@field GetFreeModels fun(self:InsertService, searchText:string, pageNum:int):Array
---@field GetLatestAssetVersionAsync fun(self:InsertService, assetId:int):int
---@field GetUserCategories fun(self:InsertService, userId:int):Array
---@field GetUserSets fun(self:InsertService, userId:int):Array
---@field LoadAsset fun(self:InsertService, assetId:int):Instance
---@field LoadAssetVersion fun(self:InsertService, assetVersionId:int):Instance
---@field loadAsset fun(self:InsertService, assetId:int):Instance

---
---@class InstancePacketCache : Instance

---
---@class IntConstrainedValue : Instance
---@field ConstrainedValue int
---@field MaxValue int
---@field MinValue int
---@field Value int
---@field Changed fun(value:int):Event
---@field changed fun(value:int):Event

---
---@class IntValue : Instance
---@field Value int
---@field Changed fun(value:int):Event
---@field changed fun(value:int):Event

---
---@class JointInstance : Instance
---@field C0 CoordinateFrame
---@field C1 CoordinateFrame
---@field Part0 Object
---@field Part1 Object
---@field part1 Object

---
---@class DynamicRotate : JointInstance
---@field BaseAngle float

---
---@class RotateP : DynamicRotate

---
---@class RotateV : DynamicRotate

---
---@class Glue : JointInstance
---@field F0 Vector3
---@field F1 Vector3
---@field F2 Vector3
---@field F3 Vector3

---
---@class ManualSurfaceJointInstance : JointInstance

---
---@class ManualGlue : ManualSurfaceJointInstance

---
---@class ManualWeld : ManualSurfaceJointInstance

---
---@class Motor : JointInstance
---@field CurrentAngle float
---@field DesiredAngle float
---@field MaxVelocity float
---@field SetDesiredAngle fun(self:Motor, value:float):void

---
---@class Motor6D : Motor

---
---@class Rotate : JointInstance

---
---@class Snap : JointInstance

---
---@class VelocityMotor : JointInstance
---@field CurrentAngle float
---@field DesiredAngle float
---@field Hole Object
---@field MaxVelocity float

---
---@class Weld : JointInstance

---
---@class JointsService : Instance
---@field ClearJoinAfterMoveJoints fun(self:JointsService):void
---@field CreateJoinAfterMoveJoints fun(self:JointsService):void
---@field SetJoinAfterMoveInstance fun(self:JointsService, joinInstance:Instance):void
---@field SetJoinAfterMoveTarget fun(self:JointsService, joinTarget:Instance):void
---@field ShowPermissibleJoints fun(self:JointsService):void

---
---@class Keyframe : Instance
---@field Time float
---@field AddPose fun(self:Keyframe, pose:Instance):void
---@field GetPoses fun(self:Keyframe):Objects
---@field RemovePose fun(self:Keyframe, pose:Instance):void

---
---@class KeyframeSequence : Instance
---@field Loop bool
---@field Priority AnimationPriority
---@field AddKeyframe fun(self:KeyframeSequence, keyframe:Instance):void
---@field GetKeyframes fun(self:KeyframeSequence):Objects
---@field RemoveKeyframe fun(self:KeyframeSequence, keyframe:Instance):void

---
---@class KeyframeSequenceProvider : Instance
---@field GetKeyframeSequence fun(self:KeyframeSequenceProvider, assetId:Content):Instance
---@field GetKeyframeSequenceById fun(self:KeyframeSequenceProvider, assetId:int, useCache:bool):Instance
---@field RegisterActiveKeyframeSequence fun(self:KeyframeSequenceProvider, keyframeSequence:Instance):Content
---@field RegisterKeyframeSequence fun(self:KeyframeSequenceProvider, keyframeSequence:Instance):Content
---@field GetAnimations fun(self:KeyframeSequenceProvider, userId:int, page:int):Dictionary

---
---@class Light : Instance
---@field Brightness float
---@field Color Color3
---@field Enabled bool
---@field Shadows bool

---
---@class PointLight : Light
---@field Range float

---
---@class SpotLight : Light
---@field Angle float
---@field Face NormalId
---@field Range float

---
---@class SurfaceLight : Light
---@field Angle float
---@field Face NormalId
---@field Range float

---
---@class Lighting : Instance
---@field Ambient Color3
---@field Brightness float
---@field ColorShift_Bottom Color3
---@field ColorShift_Top Color3
---@field FogColor Color3
---@field FogEnd float
---@field FogStart float
---@field GeographicLatitude float
---@field GlobalShadows bool
---@field OutdoorAmbient Color3
---@field Outlines bool
---@field ShadowColor Color3
---@field TimeOfDay string
---@field GetMinutesAfterMidnight fun(self:Lighting):double
---@field GetMoonDirection fun(self:Lighting):Vector3
---@field GetMoonPhase fun(self:Lighting):float
---@field GetSunDirection fun(self:Lighting):Vector3
---@field SetMinutesAfterMidnight fun(self:Lighting, minutes:double):void
---@field getMinutesAfterMidnight fun(self:Lighting):double
---@field setMinutesAfterMidnight fun(self:Lighting, minutes:double):void
---@field LightingChanged fun(skyboxChanged:bool):Event

---
---@class LocalWorkspace : Instance

---
---@class LogService : Instance
---@field ExecuteScript fun(self:LogService, source:string):void
---@field GetLogHistory fun(self:LogService):Array
---@field RequestServerOutput fun(self:LogService):void
---@field MessageOut fun(message:string, messageType:MessageType):Event
---@field ServerMessageOut fun(message:string, messageType:MessageType, timestamp:int):Event

---
---@class LoginService : Instance
---@field Logout fun(self:LoginService):void
---@field PromptLogin fun(self:LoginService):void
---@field LoginFailed fun(loginError:string):Event
---@field LoginSucceeded fun(username:string):Event

---
---@class LuaSettings : Instance
---@field AreScriptStartsReported bool
---@field DefaultWaitTime double
---@field GcFrequency int
---@field GcLimit int
---@field GcPause int
---@field GcStepMul int
---@field WaitingThreadsBudget float

---
---@class LuaSourceContainer : Instance

---
---@class BaseScript : LuaSourceContainer
---@field Disabled bool
---@field LinkedSource Content

---
---@class CoreScript : BaseScript

---
---@class Script : BaseScript
---@field Source ProtectedString
---@field GetHash fun(self:Script):string

---
---@class LocalScript : Script

---
---@class ModuleScript : LuaSourceContainer
---@field LinkedSource Content
---@field Source ProtectedString

---
---@class LuaWebService : Instance

---
---@class MarketplaceService : Instance
---@field PlayerCanMakePurchases fun(self:MarketplaceService, player:Instance):bool
---@field PromptNativePurchase fun(self:MarketplaceService, player:Instance, productId:string):void
---@field PromptProductPurchase fun(self:MarketplaceService, player:Instance, productId:int, equipIfPurchased:bool, currencyType:CurrencyType):void
---@field PromptPurchase fun(self:MarketplaceService, player:Instance, assetId:int, equipIfPurchased:bool, currencyType:CurrencyType):void
---@field PromptThirdPartyPurchase fun(self:MarketplaceService, player:Instance, productId:string):void
---@field ReportAssetSale fun(self:MarketplaceService, assetId:string, robuxAmount:int):void
---@field ReportRobuxUpsellStarted fun(self:MarketplaceService):void
---@field SignalClientPurchaseSuccess fun(self:MarketplaceService, ticket:string, playerId:int, productId:int):void
---@field SignalPromptProductPurchaseFinished fun(self:MarketplaceService, userId:int, productId:int, success:bool):void
---@field SignalPromptPurchaseFinished fun(self:MarketplaceService, player:Instance, assetId:int, success:bool):void
---@field SignalServerLuaDialogClosed fun(self:MarketplaceService, value:bool):void
---@field GetDeveloperProductsAsync fun(self:MarketplaceService):Instance
---@field GetProductInfo fun(self:MarketplaceService, assetId:int, infoType:InfoType):Dictionary
---@field GetRobuxBalance fun(self:MarketplaceService):int
---@field PerformPurchase fun(self:MarketplaceService, infoType:InfoType, productId:int, expectedPrice:int, requestId:string):Dictionary
---@field PlayerOwnsAsset fun(self:MarketplaceService, player:Instance, assetId:int):bool
---@field ClientLuaDialogRequested fun(arguments:Tuple):Event
---@field ClientPurchaseSuccess fun(ticket:string, playerId:int, productId:int):Event
---@field NativePurchaseFinished fun(player:Instance, productId:string, wasPurchased:bool):Event
---@field PromptProductPurchaseFinished fun(userId:int, productId:int, isPurchased:bool):Event
---@field PromptProductPurchaseRequested fun(player:Instance, productId:int, equipIfPurchased:bool, currencyType:CurrencyType):Event
---@field PromptPurchaseFinished fun(player:Instance, assetId:int, isPurchased:bool):Event
---@field PromptPurchaseRequested fun(player:Instance, assetId:int, equipIfPurchased:bool, currencyType:CurrencyType):Event
---@field ServerPurchaseVerification fun(serverResponseTable:Dictionary):Event
---@field ThirdPartyPurchaseFinished fun(player:Instance, productId:string, receipt:string, wasPurchased:bool):Event
---@field ProcessReceipt fun(receiptInfo:Dictionary):ProductPurchaseDecision

---
---@class Message : Instance
---@field Text string

---
---@class Hint : Message

---
---@class Mouse : Instance
---@field Hit CoordinateFrame
---@field Icon Content
---@field Origin CoordinateFrame
---@field Target Object
---@field TargetFilter Object
---@field TargetSurface NormalId
---@field UnitRay Ray
---@field ViewSizeX int
---@field ViewSizeY int
---@field X int
---@field Y int
---@field hit CoordinateFrame
---@field target Object
---@field Button1Down fun():Event
---@field Button1Up fun():Event
---@field Button2Down fun():Event
---@field Button2Up fun():Event
---@field Idle fun():Event
---@field KeyDown fun(key:string):Event
---@field KeyUp fun(key:string):Event
---@field Move fun():Event
---@field WheelBackward fun():Event
---@field WheelForward fun():Event
---@field keyDown fun(key:string):Event

---
---@class PlayerMouse : Mouse

---
---@class PluginMouse : Mouse
---@field DragEnter fun(instances:Objects):Event

---
---@class NetworkMarker : Instance
---@field Received fun():Event

---
---@class NetworkPeer : Instance
---@field SetOutgoingKBPSLimit fun(self:NetworkPeer, limit:int):void

---
---@class NetworkClient : NetworkPeer
---@field Ticket string
---@field Disconnect fun(self:NetworkClient, blockDuration:int):void
---@field PlayerConnect fun(self:NetworkClient, userId:int, server:string, serverPort:int, clientPort:int, threadSleepTime:int):Instance
---@field SetGameSessionID fun(self:NetworkClient, gameSessionID:string):void
---@field ConnectionAccepted fun(peer:string, replicator:Instance):Event
---@field ConnectionFailed fun(peer:string, code:int, reason:string):Event
---@field ConnectionRejected fun(peer:string):Event

---
---@class NetworkServer : NetworkPeer
---@field Port int
---@field ConfigureAsCloudEditServer fun(self:NetworkServer):void
---@field ConfigureAsTeamTestServer fun(self:NetworkServer):void
---@field GetClientCount fun(self:NetworkServer):int
---@field SetIsPlayerAuthenticationRequired fun(self:NetworkServer, value:bool):void
---@field Start fun(self:NetworkServer, port:int, threadSleepTime:int):void
---@field Stop fun(self:NetworkServer, blockDuration:int):void
---@field DataBasicFiltered fun(peer:Instance, result:FilterResult, instance:Instance, member:string):Event
---@field DataCustomFiltered fun(peer:Instance, result:FilterResult, instance:Instance, member:string):Event
---@field IncommingConnection fun(peer:string, replicator:Instance):Event

---
---@class NetworkReplicator : Instance
---@field MachineAddress string
---@field Port int
---@field CloseConnection fun(self:NetworkReplicator):void
---@field DisableProcessPackets fun(self:NetworkReplicator):void
---@field EnableProcessPackets fun(self:NetworkReplicator):void
---@field GetPlayer fun(self:NetworkReplicator):Instance
---@field GetRakStatsString fun(self:NetworkReplicator, verbosityLevel:int):string
---@field RequestCharacter fun(self:NetworkReplicator):void
---@field SendMarker fun(self:NetworkReplicator):Instance
---@field SetPropSyncExpiration fun(self:NetworkReplicator, seconds:double):void
---@field Disconnection fun(peer:string, lostConnection:bool):Event

---
---@class ClientReplicator : NetworkReplicator
---@field RequestServerStats fun(self:ClientReplicator, request:bool):void
---@field StatsReceived fun(stats:Dictionary):Event

---
---@class ServerReplicator : NetworkReplicator
---@field PreventTerrainChanges fun(self:ServerReplicator):void
---@field SetBasicFilteringEnabled fun(self:ServerReplicator, value:bool):void
---@field TicketProcessed fun(userId:int, isAuthenticated:bool, protocolVersion:int):Event
---@field DeleteFilter fun(deletingItem:Instance):FilterResult
---@field EventFilter fun(firingItem:Instance, event:string):FilterResult
---@field NewFilter fun(newItem:Instance, parent:Instance):FilterResult
---@field PropertyFilter fun(changingItem:Instance, member:string, value:Variant):FilterResult

---
---@class NetworkSettings : Instance
---@field ArePhysicsRejectionsReported bool
---@field CanSendPacketBufferLimit int
---@field ClientPhysicsSendRate float
---@field DataGCRate float
---@field DataMtuAdjust int
---@field DataSendPriority PacketPriority
---@field DataSendRate float
---@field EnableHeavyCompression bool
---@field ExperimentalPhysicsEnabled bool
---@field ExtraMemoryUsed int
---@field FreeMemoryMBytes float
---@field FreeMemoryPoolMBytes float
---@field IncommingReplicationLag double
---@field IsQueueErrorComputed bool
---@field IsThrottledByCongestionControl bool
---@field IsThrottledByOutgoingBandwidthLimit bool
---@field MaxDataModelSendBuffer int
---@field NetworkOwnerRate float
---@field PhysicsMtuAdjust int
---@field PhysicsReceive PhysicsReceiveMethod
---@field PhysicsSend PhysicsSendMethod
---@field PhysicsSendPriority PacketPriority
---@field PhysicsSendRate float
---@field PreferredClientPort int
---@field PrintBits bool
---@field PrintEvents bool
---@field PrintFilters bool
---@field PrintInstances bool
---@field PrintPhysicsErrors bool
---@field PrintProperties bool
---@field PrintSplitMessage bool
---@field PrintStreamInstanceQuota bool
---@field PrintTouches bool
---@field ReceiveRate double
---@field RenderStreamedRegions bool
---@field ReportStatURL string
---@field SendPacketBufferLimit int
---@field ShowActiveAnimationAsset bool
---@field ShowPartMovementWayPoint bool
---@field TotalNumMovementWayPoint int
---@field TouchSendRate float
---@field TrackDataTypes bool
---@field TrackPhysicsDetails bool
---@field UseInstancePacketCache bool
---@field UsePhysicsPacketCache bool
---@field WaitingForCharacterLogRate int

---
---@class NotificationService : Instance
---@field CancelAllNotification fun(self:NotificationService, userId:int):void
---@field CancelNotification fun(self:NotificationService, userId:int, alertId:int):void
---@field ScheduleNotification fun(self:NotificationService, userId:int, alertId:int, alertMsg:string, minutesToFire:int):void
---@field GetScheduledNotifications fun(self:NotificationService, userId:int):Array

---
---@class NumberValue : Instance
---@field Value double
---@field Changed fun(value:double):Event
---@field changed fun(value:double):Event

---
---@class ObjectValue : Instance
---@field Value Object
---@field Changed fun(value:Instance):Event
---@field changed fun(value:Instance):Event

---
---@class OneQuarterClusterPacketCacheBase : Instance

---
---@class PVInstance : Instance
---@field CoordinateFrame CoordinateFrame

---
---@class BasePart : PVInstance
---@field Anchored bool
---@field BackParamA float
---@field BackParamB float
---@field BackSurface SurfaceType
---@field BackSurfaceInput InputType
---@field BottomParamA float
---@field BottomParamB float
---@field BottomSurface SurfaceType
---@field BottomSurfaceInput InputType
---@field BrickColor BrickColor
---@field CFrame CoordinateFrame
---@field CanCollide bool
---@field Color Color3
---@field CustomPhysicalProperties PhysicalProperties
---@field Elasticity float
---@field Friction float
---@field FrontParamA float
---@field FrontParamB float
---@field FrontSurface SurfaceType
---@field FrontSurfaceInput InputType
---@field LeftParamA float
---@field LeftParamB float
---@field LeftSurface SurfaceType
---@field LeftSurfaceInput InputType
---@field LocalTransparencyModifier float
---@field Locked bool
---@field Material Material
---@field Position Vector3
---@field ReceiveAge float
---@field Reflectance float
---@field ResizeIncrement int
---@field ResizeableFaces Faces
---@field RightParamA float
---@field RightParamB float
---@field RightSurface SurfaceType
---@field RightSurfaceInput InputType
---@field RotVelocity Vector3
---@field Rotation Vector3
---@field Size Vector3
---@field SpecificGravity float
---@field TopParamA float
---@field TopParamB float
---@field TopSurface SurfaceType
---@field TopSurfaceInput InputType
---@field Transparency float
---@field Velocity Vector3
---@field brickColor BrickColor
---@field BreakJoints fun(self:BasePart):void
---@field CanSetNetworkOwnership fun(self:BasePart):Tuple
---@field GetConnectedParts fun(self:BasePart, recursive:bool):Objects
---@field GetMass fun(self:BasePart):float
---@field GetNetworkOwner fun(self:BasePart):Instance
---@field GetNetworkOwnershipAuto fun(self:BasePart):bool
---@field GetRenderCFrame fun(self:BasePart):CoordinateFrame
---@field GetRootPart fun(self:BasePart):Instance
---@field GetTouchingParts fun(self:BasePart):Objects
---@field IsGrounded fun(self:BasePart):bool
---@field MakeJoints fun(self:BasePart):void
---@field Resize fun(self:BasePart, normalId:NormalId, deltaAmount:int):bool
---@field SetNetworkOwner fun(self:BasePart, playerInstance:Instance):void
---@field SetNetworkOwnershipAuto fun(self:BasePart):void
---@field breakJoints fun(self:BasePart):void
---@field getMass fun(self:BasePart):float
---@field makeJoints fun(self:BasePart):void
---@field resize fun(self:BasePart, normalId:NormalId, deltaAmount:int):bool
---@field LocalSimulationTouched fun(part:Instance):Event
---@field OutfitChanged fun():Event
---@field StoppedTouching fun(otherPart:Instance):Event
---@field TouchEnded fun(otherPart:Instance):Event
---@field Touched fun(otherPart:Instance):Event
---@field touched fun(otherPart:Instance):Event

---
---@class CornerWedgePart : BasePart

---
---@class FormFactorPart : BasePart
---@field FormFactor FormFactor
---@field formFactor FormFactor

---
---@class Part : FormFactorPart
---@field Shape PartType

---
---@class FlagStand : Part
---@field TeamColor BrickColor
---@field FlagCaptured fun(player:Instance):Event

---
---@class Platform : Part

---
---@class Seat : Part
---@field Disabled bool
---@field Occupant Object

---
---@class SkateboardPlatform : Part
---@field Controller Object
---@field ControllingHumanoid Object
---@field Steer int
---@field StickyWheels bool
---@field Throttle int
---@field ApplySpecificImpulse fun(self:SkateboardPlatform, impulseWorld:Vector3):void
---@field Equipped fun(humanoid:Instance, skateboardController:Instance):Event
---@field MoveStateChanged fun(newState:MoveState, oldState:MoveState):Event
---@field Unequipped fun(humanoid:Instance):Event
---@field equipped fun(humanoid:Instance, skateboardController:Instance):Event
---@field unequipped fun(humanoid:Instance):Event

---
---@class SpawnLocation : Part
---@field AllowTeamChangeOnTouch bool
---@field Duration int
---@field Enabled bool
---@field Neutral bool
---@field TeamColor BrickColor

---
---@class WedgePart : FormFactorPart

---
---@class MeshPart : BasePart
---@field TextureID Content

---
---@class ParallelRampPart : BasePart

---
---@class PartOperation : BasePart
---@field TriangleCount int
---@field UsePartColor bool

---
---@class NegateOperation : PartOperation

---
---@class UnionOperation : PartOperation

---
---@class PrismPart : BasePart
---@field Sides PrismSides

---
---@class PyramidPart : BasePart
---@field Sides PyramidSides

---
---@class RightAngleRampPart : BasePart

---
---@class Terrain : BasePart
---@field IsSmooth bool
---@field MaxExtents Region3int16
---@field WaterColor Color3
---@field WaterTransparency float
---@field WaterWaveSize float
---@field WaterWaveSpeed float
---@field AutowedgeCell fun(self:Terrain, x:int, y:int, z:int):bool
---@field AutowedgeCells fun(self:Terrain, region:Region3int16):void
---@field CellCenterToWorld fun(self:Terrain, x:int, y:int, z:int):Vector3
---@field CellCornerToWorld fun(self:Terrain, x:int, y:int, z:int):Vector3
---@field Clear fun(self:Terrain):void
---@field ConvertToSmooth fun(self:Terrain):void
---@field CopyRegion fun(self:Terrain, region:Region3int16):Instance
---@field CountCells fun(self:Terrain):int
---@field FillBall fun(self:Terrain, center:Vector3, radius:float, material:Material):void
---@field FillBlock fun(self:Terrain, cframe:CoordinateFrame, size:Vector3, material:Material):void
---@field FillRegion fun(self:Terrain, region:Region3, resolution:float, material:Material):void
---@field GetCell fun(self:Terrain, x:int, y:int, z:int):Tuple
---@field GetWaterCell fun(self:Terrain, x:int, y:int, z:int):Tuple
---@field PasteRegion fun(self:Terrain, region:Instance, corner:Vector3int16, pasteEmptyCells:bool):void
---@field ReadVoxels fun(self:Terrain, region:Region3, resolution:float):Tuple
---@field SetCell fun(self:Terrain, x:int, y:int, z:int, material:CellMaterial, block:CellBlock, orientation:CellOrientation):void
---@field SetCells fun(self:Terrain, region:Region3int16, material:CellMaterial, block:CellBlock, orientation:CellOrientation):void
---@field SetWaterCell fun(self:Terrain, x:int, y:int, z:int, force:WaterForce, direction:WaterDirection):void
---@field WorldToCell fun(self:Terrain, position:Vector3):Vector3
---@field WorldToCellPreferEmpty fun(self:Terrain, position:Vector3):Vector3
---@field WorldToCellPreferSolid fun(self:Terrain, position:Vector3):Vector3
---@field WriteVoxels fun(self:Terrain, region:Region3, resolution:float, materials:Array, occupancy:Array):void

---
---@class TrussPart : BasePart
---@field Style Style

---
---@class VehicleSeat : BasePart
---@field AreHingesDetected int
---@field Disabled bool
---@field HeadsUpDisplay bool
---@field MaxSpeed float
---@field Occupant Object
---@field Steer int
---@field Throttle int
---@field Torque float
---@field TurnSpeed float

---
---@class Model : PVInstance
---@field PrimaryPart Object
---@field BreakJoints fun(self:Model):void
---@field GetExtentsSize fun(self:Model):Vector3
---@field GetModelCFrame fun(self:Model):CoordinateFrame
---@field GetModelSize fun(self:Model):Vector3
---@field GetPrimaryPartCFrame fun(self:Model):CoordinateFrame
---@field MakeJoints fun(self:Model):void
---@field MoveTo fun(self:Model, position:Vector3):void
---@field ResetOrientationToIdentity fun(self:Model):void
---@field SetIdentityOrientation fun(self:Model):void
---@field SetPrimaryPartCFrame fun(self:Model, cframe:CoordinateFrame):void
---@field TranslateBy fun(self:Model, delta:Vector3):void
---@field breakJoints fun(self:Model):void
---@field makeJoints fun(self:Model):void
---@field move fun(self:Model, location:Vector3):void
---@field moveTo fun(self:Model, location:Vector3):void

---
---@class RootInstance : Model

---
---@class Workspace : RootInstance
---@field AllowThirdPartySales bool
---@field CurrentCamera Object
---@field DistributedGameTime double
---@field FilteringEnabled bool
---@field Gravity float
---@field StreamingEnabled bool
---@field Terrain Object
---@field BreakJoints fun(self:Workspace, objects:Objects):void
---@field ExperimentalSolverIsEnabled fun(self:Workspace):bool
---@field FindPartOnRay fun(self:Workspace, ray:Ray, ignoreDescendentsInstance:Instance, terrainCellsAreCubes:bool, ignoreWater:bool):Tuple
---@field FindPartOnRayWithIgnoreList fun(self:Workspace, ray:Ray, ignoreDescendentsTable:Objects, terrainCellsAreCubes:bool, ignoreWater:bool):Tuple
---@field FindPartsInRegion3 fun(self:Workspace, region:Region3, ignoreDescendentsInstance:Instance, maxParts:int):Objects
---@field FindPartsInRegion3WithIgnoreList fun(self:Workspace, region:Region3, ignoreDescendentsTable:Objects, maxParts:int):Objects
---@field GetNumAwakeParts fun(self:Workspace):int
---@field GetPhysicsAnalyzerBreakOnIssue fun(self:Workspace):bool
---@field GetPhysicsAnalyzerIssue fun(self:Workspace, index:int):Objects
---@field GetPhysicsThrottling fun(self:Workspace):int
---@field GetRealPhysicsFPS fun(self:Workspace):double
---@field IsRegion3Empty fun(self:Workspace, region:Region3, ignoreDescendentsInstance:Instance):bool
---@field IsRegion3EmptyWithIgnoreList fun(self:Workspace, region:Region3, ignoreDescendentsTable:Objects):bool
---@field JoinToOutsiders fun(self:Workspace, objects:Objects, jointType:JointCreationMode):void
---@field MakeJoints fun(self:Workspace, objects:Objects):void
---@field PGSIsEnabled fun(self:Workspace):bool
---@field SetPhysicsAnalyzerBreakOnIssue fun(self:Workspace, enable:bool):void
---@field SetPhysicsThrottleEnabled fun(self:Workspace, value:bool):void
---@field UnjoinFromOutsiders fun(self:Workspace, objects:Objects):void
---@field ZoomToExtents fun(self:Workspace):void
---@field findPartOnRay fun(self:Workspace, ray:Ray, ignoreDescendentsInstance:Instance, terrainCellsAreCubes:bool, ignoreWater:bool):Tuple
---@field findPartsInRegion3 fun(self:Workspace, region:Region3, ignoreDescendentsInstance:Instance, maxParts:int):Objects
---@field PhysicsAnalyzerIssuesFound fun(count:int):Event

---
---@class Status : Model

---
---@class Pages : Instance
---@field IsFinished bool
---@field GetCurrentPage fun(self:Pages):Array
---@field AdvanceToNextPageAsync fun(self:Pages):void

---
---@class DataStorePages : Pages

---
---@class FriendPages : Pages

---
---@class StandardPages : Pages

---
---@class PartOperationAsset : Instance

---
---@class ParticleEmitter : Instance
---@field Acceleration Vector3
---@field Color ColorSequence
---@field Drag float
---@field EmissionDirection NormalId
---@field Enabled bool
---@field Lifetime NumberRange
---@field LightEmission float
---@field LockedToPart bool
---@field Rate float
---@field RotSpeed NumberRange
---@field Rotation NumberRange
---@field Size NumberSequence
---@field Speed NumberRange
---@field Texture Content
---@field Transparency NumberSequence
---@field VelocityInheritance float
---@field VelocitySpread float
---@field ZOffset float
---@field Emit fun(self:ParticleEmitter, particleCount:int):void

---
---@class Path : Instance
---@field Status PathStatus
---@field GetPointCoordinates fun(self:Path):Array
---@field CheckOcclusionAsync fun(self:Path, start:int):int

---
---@class PathfindingService : Instance
---@field EmptyCutoff float
---@field ComputeRawPathAsync fun(self:PathfindingService, start:Vector3, finish:Vector3, maxDistance:float):Instance
---@field ComputeSmoothPathAsync fun(self:PathfindingService, start:Vector3, finish:Vector3, maxDistance:float):Instance

---
---@class PersonalServerService : Instance
---@field RoleSets string
---@field Demote fun(self:PersonalServerService, player:Instance):void
---@field Promote fun(self:PersonalServerService, player:Instance):void
---@field SetPersonalServerGetRankUrl fun(self:PersonalServerService, personalServerGetRankUrl:string):void
---@field SetPersonalServerRoleSetsUrl fun(self:PersonalServerService, personalServerRoleSetsUrl:string):void
---@field SetPersonalServerSetRankUrl fun(self:PersonalServerService, personalServerSetRankUrl:string):void
---@field GetRoleSets fun(self:PersonalServerService, placeId:int):string

---
---@class PhysicsPacketCache : Instance

---
---@class PhysicsService : Instance

---
---@class PhysicsSettings : Instance
---@field AllowSleep bool
---@field AreAnchorsShown bool
---@field AreAssembliesShown bool
---@field AreAttachmentsShown bool
---@field AreAwakePartsHighlighted bool
---@field AreBodyTypesShown bool
---@field AreConstraintsShown bool
---@field AreContactPointsShown bool
---@field AreJointCoordinatesShown bool
---@field AreMechanismsShown bool
---@field AreModelCoordsShown bool
---@field AreOwnersShown bool
---@field ArePartCoordsShown bool
---@field AreRegionsShown bool
---@field AreUnalignedPartsShown bool
---@field AreWorldCoordsShown bool
---@field IsReceiveAgeShown bool
---@field IsTreeShown bool
---@field ParallelPhysics bool
---@field PhysicsAnalyzerEnabled bool
---@field PhysicsEnvironmentalThrottle EnviromentalPhysicsThrottle
---@field ShowDecompositionGeometry bool
---@field ThrottleAdjustTime double

---
---@class Player : Instance
---@field AccountAge int
---@field AppearanceDidLoad bool
---@field AutoJumpEnabled bool
---@field CameraMaxZoomDistance float
---@field CameraMinZoomDistance float
---@field CameraMode CameraMode
---@field CanLoadCharacterAppearance bool
---@field Character Object
---@field CharacterAppearance string
---@field CharacterAppearanceId int
---@field ChatMode ChatMode
---@field DataComplexity int
---@field DataComplexityLimit int
---@field DataReady bool
---@field DevCameraOcclusionMode DevCameraOcclusionMode
---@field DevComputerCameraMode DevComputerCameraMovementMode
---@field DevComputerMovementMode DevComputerMovementMode
---@field DevEnableMouseLock bool
---@field DevTouchCameraMode DevTouchCameraMovementMode
---@field DevTouchMovementMode DevTouchMovementMode
---@field FollowUserId int
---@field Guest bool
---@field HasBuildTools bool
---@field HealthDisplayDistance float
---@field MaximumSimulationRadius float
---@field MembershipType MembershipType
---@field NameDisplayDistance float
---@field Neutral bool
---@field PersonalServerRank int
---@field RespawnLocation Object
---@field SimulationRadius float
---@field Team Object
---@field TeamColor BrickColor
---@field Teleported bool
---@field TeleportedIn bool
---@field UserId int
---@field VRDevice string
---@field userId int
---@field ClearCharacterAppearance fun(self:Player):void
---@field DistanceFromCharacter fun(self:Player, point:Vector3):float
---@field GetFriendStatus fun(self:Player, player:Instance):FriendStatus
---@field GetGameSessionID fun(self:Player):string
---@field GetMouse fun(self:Player):Instance
---@field GetUnder13 fun(self:Player):bool
---@field HasAppearanceLoaded fun(self:Player):bool
---@field JumpCharacter fun(self:Player):void
---@field Kick fun(self:Player, message:string):void
---@field LoadBoolean fun(self:Player, key:string):bool
---@field LoadCharacterAppearance fun(self:Player, assetInstance:Instance):void
---@field LoadData fun(self:Player):void
---@field LoadInstance fun(self:Player, key:string):Instance
---@field LoadNumber fun(self:Player, key:string):double
---@field LoadString fun(self:Player, key:string):string
---@field Move fun(self:Player, walkDirection:Vector3, relativeToCamera:bool):void
---@field MoveCharacter fun(self:Player, walkDirection:Vector2, maxWalkDelta:float):void
---@field RemoveCharacter fun(self:Player):void
---@field RequestFriendship fun(self:Player, player:Instance):void
---@field RevokeFriendship fun(self:Player, player:Instance):void
---@field SaveBoolean fun(self:Player, key:string, value:bool):void
---@field SaveData fun(self:Player):void
---@field SaveInstance fun(self:Player, key:string, value:Instance):void
---@field SaveLeaderboardData fun(self:Player):void
---@field SaveNumber fun(self:Player, key:string, value:double):void
---@field SaveString fun(self:Player, key:string, value:string):void
---@field SetAccountAge fun(self:Player, accountAge:int):void
---@field SetMembershipType fun(self:Player, membershipType:MembershipType):void
---@field SetSuperSafeChat fun(self:Player, value:bool):void
---@field SetUnder13 fun(self:Player, value:bool):void
---@field loadBoolean fun(self:Player, key:string):bool
---@field loadInstance fun(self:Player, key:string):Instance
---@field loadNumber fun(self:Player, key:string):double
---@field loadString fun(self:Player, key:string):string
---@field saveBoolean fun(self:Player, key:string, value:bool):void
---@field saveInstance fun(self:Player, key:string, value:Instance):void
---@field saveNumber fun(self:Player, key:string, value:double):void
---@field saveString fun(self:Player, key:string, value:string):void
---@field GetFriendsOnline fun(self:Player, maxFriends:int):Array
---@field GetRankInGroup fun(self:Player, groupId:int):int
---@field GetRoleInGroup fun(self:Player, groupId:int):string
---@field GetWebPersonalServerRank fun(self:Player):string
---@field IsBestFriendsWith fun(self:Player, userId:int):bool
---@field IsFriendsWith fun(self:Player, userId:int):bool
---@field IsInGroup fun(self:Player, groupId:int):bool
---@field LoadCharacter fun(self:Player, inGame:bool):void
---@field SetWebPersonalServerRank fun(self:Player, rank:int):bool
---@field WaitForDataReady fun(self:Player):bool
---@field isFriendsWith fun(self:Player, userId:int):bool
---@field waitForDataReady fun(self:Player):bool
---@field CharacterAdded fun(character:Instance):Event
---@field CharacterAppearanceLoaded fun(character:Instance):Event
---@field CharacterRemoving fun(character:Instance):Event
---@field Chatted fun(message:string, recipient:Instance):Event
---@field FriendStatusChanged fun(player:Instance, friendStatus:FriendStatus):Event
---@field Idled fun(time:double):Event
---@field OnTeleport fun(teleportState:TeleportState, placeId:int, spawnName:string):Event
---@field SimulationRadiusChanged fun(radius:float):Event

---
---@class PlayerScripts : Instance

---
---@class Players : Instance
---@field BubbleChat bool
---@field CharacterAutoLoads bool
---@field ClassicChat bool
---@field LocalPlayer Object
---@field MaxPlayers int
---@field MaxPlayersInternal int
---@field NumPlayers int
---@field PreferredPlayers int
---@field PreferredPlayersInternal int
---@field localPlayer Object
---@field numPlayers int
---@field AddLeaderboardKey fun(self:Players, key:string):void
---@field Chat fun(self:Players, message:string):void
---@field CreateLocalPlayer fun(self:Players, userId:int, isTeleport:bool):Instance
---@field GetPlayerByID fun(self:Players, userID:int):Instance
---@field GetPlayerById fun(self:Players, userId:int):Instance
---@field GetPlayerByUserId fun(self:Players, userId:int):Instance
---@field GetPlayerFromCharacter fun(self:Players, character:Instance):Instance
---@field GetPlayers fun(self:Players):Objects
---@field GetUseCoreScriptHealthBar fun(self:Players):bool
---@field ReportAbuse fun(self:Players, player:Instance, reason:string, optionalMessage:string):void
---@field SetAbuseReportUrl fun(self:Players, url:string):void
---@field SetBuildUserPermissionsUrl fun(self:Players, url:string):void
---@field SetChatFilterUrl fun(self:Players, url:string):void
---@field SetChatStyle fun(self:Players, style:ChatStyle):void
---@field SetLoadDataUrl fun(self:Players, url:string):void
---@field SetSaveDataUrl fun(self:Players, url:string):void
---@field SetSaveLeaderboardDataUrl fun(self:Players, url:string):void
---@field SetSysStatsUrl fun(self:Players, url:string):void
---@field SetSysStatsUrlId fun(self:Players, urlId:string):void
---@field TeamChat fun(self:Players, message:string):void
---@field WhisperChat fun(self:Players, message:string, player:Instance):void
---@field getPlayerFromCharacter fun(self:Players, character:Instance):Instance
---@field getPlayers fun(self:Players):Objects
---@field playerFromCharacter fun(self:Players, character:Instance):Instance
---@field players fun(self:Players):Objects
---@field BlockUser fun(self:Players, blockerUserId:int, blockeeUserId:int):string
---@field GetCharacterAppearanceAsync fun(self:Players, userId:int):Instance
---@field GetFriendsAsync fun(self:Players, userId:int):Instance
---@field GetNameFromUserIdAsync fun(self:Players, userId:int):string
---@field GetUserIdFromNameAsync fun(self:Players, userName:string):int
---@field UnblockUser fun(self:Players, exblockerUserId:int, exblockeeUserId:int):string
---@field FriendRequestEvent fun(player:Instance, player:Instance, friendRequestEvent:FriendRequestEvent):Event
---@field GameAnnounce fun(message:string):Event
---@field PlayerAdded fun(player:Instance):Event
---@field PlayerAddedEarly fun(player:Instance):Event
---@field PlayerChatted fun(chatType:PlayerChatType, player:Instance, message:string, targetPlayer:Instance):Event
---@field PlayerRemoving fun(player:Instance):Event
---@field PlayerRemovingLate fun(player:Instance):Event

---
---@class Plugin : Instance
---@field CollisionEnabled bool
---@field GridSize float
---@field Activate fun(self:Plugin, exclusiveMouse:bool):void
---@field CreateToolbar fun(self:Plugin, name:string):Instance
---@field GetJoinMode fun(self:Plugin):JointCreationMode
---@field GetMouse fun(self:Plugin):Instance
---@field GetSetting fun(self:Plugin, key:string):Variant
---@field GetStudioUserId fun(self:Plugin):int
---@field Negate fun(self:Plugin, objects:Objects):Objects
---@field OpenScript fun(self:Plugin, script:Instance, lineNumber:int):void
---@field OpenWikiPage fun(self:Plugin, url:string):void
---@field SaveSelectedToRoblox fun(self:Plugin):void
---@field Separate fun(self:Plugin, objects:Objects):Objects
---@field SetSetting fun(self:Plugin, key:string, value:Variant):void
---@field Union fun(self:Plugin, objects:Objects):Instance
---@field PromptForExistingAssetId fun(self:Plugin, assetType:string):int
---@field Deactivation fun():Event

---
---@class PluginManager : Instance
---@field CreatePlugin fun(self:PluginManager):Instance
---@field ExportPlace fun(self:PluginManager, filePath:string):void
---@field ExportSelection fun(self:PluginManager, filePath:string):void

---
---@class PointsService : Instance
---@field GetAwardablePoints fun(self:PointsService):int
---@field AwardPoints fun(self:PointsService, userId:int, amount:int):Tuple
---@field GetGamePointBalance fun(self:PointsService, userId:int):int
---@field GetPointBalance fun(self:PointsService, userId:int):int
---@field PointsAwarded fun(userId:int, pointsAwarded:int, userBalanceInGame:int, userTotalBalance:int):Event

---
---@class Pose : Instance
---@field CFrame CoordinateFrame
---@field EasingDirection PoseEasingDirection
---@field EasingStyle PoseEasingStyle
---@field MaskWeight float
---@field Weight float
---@field AddSubPose fun(self:Pose, pose:Instance):void
---@field GetSubPoses fun(self:Pose):Objects
---@field RemoveSubPose fun(self:Pose, pose:Instance):void

---
---@class PostEffect : Instance
---@field Enabled bool

---
---@class BloomEffect : PostEffect
---@field Intensity float
---@field Size float
---@field Threshold float

---
---@class BlurEffect : PostEffect
---@field Size float

---
---@class ColorCorrectionEffect : PostEffect
---@field Brightness float
---@field Contrast float
---@field Saturation float
---@field TintColor Color3

---
---@class SunRaysEffect : PostEffect
---@field Intensity float
---@field Spread float

---
---@class RayValue : Instance
---@field Value Ray
---@field Changed fun(value:Ray):Event
---@field changed fun(value:Ray):Event

---
---@class ReflectionMetadata : Instance

---
---@class ReflectionMetadataCallbacks : Instance

---
---@class ReflectionMetadataClasses : Instance

---
---@class ReflectionMetadataEnums : Instance

---
---@class ReflectionMetadataEvents : Instance

---
---@class ReflectionMetadataFunctions : Instance

---
---@class ReflectionMetadataItem : Instance
---@field Browsable bool
---@field Deprecated bool
---@field IsBackend bool
---@field UIMaximum double
---@field UIMinimum double
---@field UINumTicks double
---@field summary string

---
---@class ReflectionMetadataClass : ReflectionMetadataItem
---@field ExplorerImageIndex int
---@field ExplorerOrder int
---@field Insertable bool
---@field PreferredParent string

---
---@class ReflectionMetadataEnum : ReflectionMetadataItem

---
---@class ReflectionMetadataEnumItem : ReflectionMetadataItem

---
---@class ReflectionMetadataMember : ReflectionMetadataItem

---
---@class ReflectionMetadataProperties : Instance

---
---@class ReflectionMetadataYieldFunctions : Instance

---
---@class RemoteEvent : Instance
---@field FireAllClients fun(self:RemoteEvent, arguments:Tuple):void
---@field FireClient fun(self:RemoteEvent, player:Instance, arguments:Tuple):void
---@field FireServer fun(self:RemoteEvent, arguments:Tuple):void
---@field OnClientEvent fun(arguments:Tuple):Event
---@field OnServerEvent fun(player:Instance, arguments:Tuple):Event

---
---@class RemoteFunction : Instance
---@field InvokeClient fun(self:RemoteFunction, player:Instance, arguments:Tuple):Tuple
---@field InvokeServer fun(self:RemoteFunction, arguments:Tuple):Tuple
---@field OnClientInvoke fun(arguments:Tuple):Tuple
---@field OnServerInvoke fun(player:Instance, arguments:Tuple):Tuple

---
---@class RenderHooksService : Instance
---@field CaptureMetrics fun(self:RenderHooksService):void
---@field DisableQueue fun(self:RenderHooksService, qId:int):void
---@field EnableAdorns fun(self:RenderHooksService, enabled:bool):void
---@field EnableQueue fun(self:RenderHooksService, qId:int):void
---@field GetDeltaAve fun(self:RenderHooksService):double
---@field GetGPUDelay fun(self:RenderHooksService):double
---@field GetPresentTime fun(self:RenderHooksService):double
---@field GetRenderAve fun(self:RenderHooksService):double
---@field GetRenderConfMax fun(self:RenderHooksService):double
---@field GetRenderConfMin fun(self:RenderHooksService):double
---@field GetRenderStd fun(self:RenderHooksService):double
---@field PrintScene fun(self:RenderHooksService):void
---@field ReloadShaders fun(self:RenderHooksService):void
---@field ResizeWindow fun(self:RenderHooksService, width:int, height:int):void

---
---@class RenderSettings : Instance
---@field AASamples AASamples
---@field Antialiasing Antialiasing
---@field AutoFRMLevel int
---@field DebugDisableInterpolation bool
---@field EagerBulkExecution bool
---@field EditQualityLevel QualityLevel
---@field EnableFRM bool
---@field ExperimentalTerrainLOD bool
---@field ExportMergeByMaterial bool
---@field FrameRateManager FramerateManagerMode
---@field GraphicsMode GraphicsMode
---@field IsAggregationShown bool
---@field IsSynchronizedWithPhysics bool
---@field MeshCacheSize int
---@field QualityLevel QualityLevel
---@field ReloadAssets bool
---@field RenderCSGTrianglesDebug bool
---@field Resolution Resolution
---@field ShowBoundingBoxes bool
---@field ShowInterpolationpath bool
---@field TextureCacheSize int
---@field GetMaxQualityLevel fun(self:RenderSettings):int

---
---@class ReplicatedFirst : Instance
---@field IsDefaultLoadingGuiRemoved fun(self:ReplicatedFirst):bool
---@field IsFinishedReplicating fun(self:ReplicatedFirst):bool
---@field RemoveDefaultLoadingScreen fun(self:ReplicatedFirst):void
---@field FinishedReplicating fun():Event
---@field RemoveDefaultLoadingGuiSignal fun():Event

---
---@class ReplicatedStorage : Instance

---
---@class RobloxReplicatedStorage : Instance

---
---@class RunService : Instance
---@field BindToRenderStep fun(self:RunService, name:string, priority:int, function:Function):void
---@field IsClient fun(self:RunService):bool
---@field IsRunMode fun(self:RunService):bool
---@field IsRunning fun(self:RunService):bool
---@field IsServer fun(self:RunService):bool
---@field IsStudio fun(self:RunService):bool
---@field Pause fun(self:RunService):void
---@field Reset fun(self:RunService):void
---@field Run fun(self:RunService):void
---@field Stop fun(self:RunService):void
---@field UnbindFromRenderStep fun(self:RunService, name:string):void
---@field Heartbeat fun(step:double):Event
---@field RenderStepped fun(step:double):Event
---@field Stepped fun(time:double, step:double):Event

---
---@class RuntimeScriptService : Instance

---
---@class ScriptContext : Instance
---@field ScriptsDisabled bool
---@field AddCoreScript fun(self:ScriptContext, assetId:int, parent:Instance, name:string):void
---@field AddCoreScriptLocal fun(self:ScriptContext, name:string, parent:Instance):void
---@field AddStarterScript fun(self:ScriptContext, assetId:int):void
---@field GetHeapStats fun(self:ScriptContext, clearHighwaterMark:bool):Tuple
---@field GetScriptStats fun(self:ScriptContext):Array
---@field SetCollectScriptStats fun(self:ScriptContext, enable:bool):void
---@field SetTimeout fun(self:ScriptContext, seconds:double):void
---@field CamelCaseViolation fun(object:Instance, member:string, script:Instance):Event
---@field Error fun(message:string, stackTrace:string, script:Instance):Event

---
---@class ScriptDebugger : Instance
---@field CurrentLine int
---@field IsDebugging bool
---@field IsPaused bool
---@field Script Object
---@field AddWatch fun(self:ScriptDebugger, expression:string):Instance
---@field GetBreakpoints fun(self:ScriptDebugger):Objects
---@field GetGlobals fun(self:ScriptDebugger):Map
---@field GetLocals fun(self:ScriptDebugger, stackFrame:int):Map
---@field GetStack fun(self:ScriptDebugger):Array
---@field GetUpvalues fun(self:ScriptDebugger, stackFrame:int):Map
---@field GetWatchValue fun(self:ScriptDebugger, watch:Instance):Variant
---@field GetWatches fun(self:ScriptDebugger):Objects
---@field Resume fun(self:ScriptDebugger):void
---@field SetBreakpoint fun(self:ScriptDebugger, line:int):Instance
---@field SetGlobal fun(self:ScriptDebugger, name:string, value:Variant):void
---@field SetLocal fun(self:ScriptDebugger, name:string, value:Variant, stackFrame:int):void
---@field SetUpvalue fun(self:ScriptDebugger, name:string, value:Variant, stackFrame:int):void
---@field StepIn fun(self:ScriptDebugger):void
---@field StepOut fun(self:ScriptDebugger):void
---@field StepOver fun(self:ScriptDebugger):void
---@field BreakpointAdded fun(breakpoint:Instance):Event
---@field BreakpointRemoved fun(breakpoint:Instance):Event
---@field EncounteredBreak fun(line:int):Event
---@field Resuming fun():Event
---@field WatchAdded fun(watch:Instance):Event
---@field WatchRemoved fun(watch:Instance):Event

---
---@class ScriptInformationProvider : Instance
---@field SetAccessKey fun(self:ScriptInformationProvider, access:string):void
---@field SetAssetUrl fun(self:ScriptInformationProvider, url:string):void

---
---@class ScriptService : Instance

---
---@class Selection : Instance
---@field Get fun(self:Selection):Objects
---@field Set fun(self:Selection, selection:Objects):void
---@field SelectionChanged fun():Event

---
---@class ServerScriptService : Instance

---
---@class ServerStorage : Instance

---
---@class ServiceProvider : Instance
---@field FindService fun(self:ServiceProvider, className:string):Instance
---@field GetService fun(self:ServiceProvider, className:string):Instance
---@field getService fun(self:ServiceProvider, className:string):Instance
---@field service fun(self:ServiceProvider, className:string):Instance
---@field Close fun():Event
---@field CloseLate fun():Event
---@field ServiceAdded fun(service:Instance):Event
---@field ServiceRemoving fun(service:Instance):Event

---
---@class DataModel : ServiceProvider
---@field CreatorId int
---@field CreatorType CreatorType
---@field GearGenreSetting GearGenreSetting
---@field Genre Genre
---@field IsPersonalServer bool
---@field JobId string
---@field LocalSaveEnabled bool
---@field PlaceId int
---@field PlaceVersion int
---@field VIPServerId string
---@field VIPServerOwnerId int
---@field Workspace Object
---@field lighting Object
---@field workspace Object
---@field AddStat fun(self:DataModel, displayName:string, stat:string):void
---@field ClearMessage fun(self:DataModel):void
---@field FinishShutdown fun(self:DataModel, localSave:bool):void
---@field GetJobIntervalPeakFraction fun(self:DataModel, jobname:string, greaterThan:double):double
---@field GetJobTimePeakFraction fun(self:DataModel, jobname:string, greaterThan:double):double
---@field GetJobsExtendedStats fun(self:DataModel):Array
---@field GetJobsInfo fun(self:DataModel):Array
---@field GetMessage fun(self:DataModel):string
---@field GetRemoteBuildMode fun(self:DataModel):bool
---@field HttpGet fun(self:DataModel, url:string, synchronous:bool):string
---@field HttpPost fun(self:DataModel, url:string, data:string, synchronous:bool, contentType:string):string
---@field IsGearTypeAllowed fun(self:DataModel, gearType:GearType):bool
---@field IsLoaded fun(self:DataModel):bool
---@field Load fun(self:DataModel, url:Content):void
---@field LoadGame fun(self:DataModel, assetID:int):void
---@field LoadPlugins fun(self:DataModel):void
---@field LoadWorld fun(self:DataModel, assetID:int):void
---@field RemoveStat fun(self:DataModel, stat:string):void
---@field ReportInGoogleAnalytics fun(self:DataModel, category:string, action:string, label:string, value:int):void
---@field ReportMeasurement fun(self:DataModel, id:string, key1:string, value1:string, key2:string, value2:string):void
---@field Save fun(self:DataModel, url:Content):void
---@field SaveStats fun(self:DataModel):void
---@field ServerSave fun(self:DataModel):void
---@field SetCreatorID fun(self:DataModel, creatorID:int, creatorType:CreatorType):void
---@field SetCreatorId fun(self:DataModel, creatorId:int, creatorType:CreatorType):void
---@field SetGearSettings fun(self:DataModel, genreRestriction:GearGenreSetting, allowedGenres:int):void
---@field SetGenre fun(self:DataModel, genre:Genre):void
---@field SetJobsExtendedStatsWindow fun(self:DataModel, seconds:double):void
---@field SetMessage fun(self:DataModel, message:string):void
---@field SetMessageBrickCount fun(self:DataModel):void
---@field SetPlaceID fun(self:DataModel, placeID:int, robloxPlace:bool):void
---@field SetPlaceId fun(self:DataModel, placeId:int, robloxPlace:bool):void
---@field SetPlaceVersion fun(self:DataModel, placeId:int):void
---@field SetRemoteBuildMode fun(self:DataModel, buildModeEnabled:bool):void
---@field SetScreenshotInfo fun(self:DataModel, info:string):void
---@field SetServerSaveUrl fun(self:DataModel, url:string):void
---@field SetUniverseId fun(self:DataModel, universeId:int):void
---@field SetVIPServerId fun(self:DataModel, newId:string):void
---@field SetVIPServerOwnerId fun(self:DataModel, newId:int):void
---@field SetVideoInfo fun(self:DataModel, info:string):void
---@field Shutdown fun(self:DataModel):void
---@field ToggleTools fun(self:DataModel):void
---@field HttpGetAsync fun(self:DataModel, url:string):string
---@field HttpPostAsync fun(self:DataModel, url:string, data:string, contentType:string):string
---@field SavePlace fun(self:DataModel, saveFilter:SaveFilter):bool
---@field SaveToRoblox fun(self:DataModel):bool
---@field AllowedGearTypeChanged fun():Event
---@field GraphicsQualityChangeRequest fun(betterQuality:bool):Event
---@field ItemChanged fun(object:Instance, descriptor:Property):Event
---@field Loaded fun():Event
---@field OnClose fun():Tuple
---@field RequestShutdown fun():bool

---
---@class GenericSettings : ServiceProvider

---
---@class GlobalSettings : GenericSettings
---@field GetFFlag fun(self:GlobalSettings, name:string):bool
---@field GetFVariable fun(self:GlobalSettings, name:string):string

---
---@class UserSettings : GenericSettings
---@field IsUserFeatureEnabled fun(self:UserSettings, name:string):bool
---@field Reset fun(self:UserSettings):void

---
---@class Sky : Instance
---@field CelestialBodiesShown bool
---@field SkyboxBk Content
---@field SkyboxDn Content
---@field SkyboxFt Content
---@field SkyboxLf Content
---@field SkyboxRt Content
---@field SkyboxUp Content
---@field StarCount int

---
---@class Smoke : Instance
---@field Color Color3
---@field Enabled bool
---@field Opacity float
---@field RiseVelocity float
---@field Size float

---
---@class SocialService : Instance
---@field SetBestFriendUrl fun(self:SocialService, bestFriendUrl:string):void
---@field SetFriendUrl fun(self:SocialService, friendUrl:string):void
---@field SetGroupRankUrl fun(self:SocialService, groupRankUrl:string):void
---@field SetGroupRoleUrl fun(self:SocialService, groupRoleUrl:string):void
---@field SetGroupUrl fun(self:SocialService, groupUrl:string):void
---@field SetPackageContentsUrl fun(self:SocialService, stuffUrl:string):void
---@field SetStuffUrl fun(self:SocialService, stuffUrl:string):void

---
---@class Sound : Instance
---@field IsLoaded bool
---@field IsPaused bool
---@field IsPlaying bool
---@field Looped bool
---@field MaxDistance float
---@field MinDistance float
---@field Pitch float
---@field PlayOnRemove bool
---@field Playing bool
---@field RollOffMode RollOffMode
---@field SoundId Content
---@field TimeLength double
---@field TimePosition double
---@field Volume float
---@field isPlaying bool
---@field Pause fun(self:Sound):void
---@field Play fun(self:Sound):void
---@field Resume fun(self:Sound):void
---@field Stop fun(self:Sound):void
---@field pause fun(self:Sound):void
---@field play fun(self:Sound):void
---@field stop fun(self:Sound):void
---@field DidLoop fun(soundId:string, numOfTimesLooped:int):Event
---@field Ended fun(soundId:string):Event
---@field Loaded fun(soundId:string):Event
---@field Paused fun(soundId:string):Event
---@field Played fun(soundId:string):Event
---@field Resumed fun(soundId:string):Event
---@field Stopped fun(soundId:string):Event

---
---@class SoundService : Instance
---@field AmbientReverb ReverbType
---@field DistanceFactor float
---@field DopplerScale float
---@field RolloffScale float
---@field BeginRecording fun(self:SoundService):bool
---@field GetListener fun(self:SoundService):Tuple
---@field PlayStockSound fun(self:SoundService, sound:SoundType):void
---@field SetListener fun(self:SoundService, listenerType:ListenerType, listener:Tuple):void
---@field SetRecordingDevice fun(self:SoundService, deviceIndex:int):bool
---@field EndRecording fun(self:SoundService):Dictionary
---@field GetRecordingDevices fun(self:SoundService):Dictionary

---
---@class Sparkles : Instance
---@field Color Color3
---@field Enabled bool
---@field SparkleColor Color3

---
---@class SpawnerService : Instance

---
---@class StarterGear : Instance

---
---@class StarterPlayer : Instance
---@field AutoJumpEnabled bool
---@field CameraMaxZoomDistance float
---@field CameraMinZoomDistance float
---@field CameraMode CameraMode
---@field DevCameraOcclusionMode DevCameraOcclusionMode
---@field DevComputerCameraMovementMode DevComputerCameraMovementMode
---@field DevComputerMovementMode DevComputerMovementMode
---@field DevTouchCameraMovementMode DevTouchCameraMovementMode
---@field DevTouchMovementMode DevTouchMovementMode
---@field EnableMouseLockOption bool
---@field HealthDisplayDistance float
---@field LoadCharacterAppearance bool
---@field NameDisplayDistance float

---
---@class StarterPlayerScripts : Instance

---
---@class StarterCharacterScripts : StarterPlayerScripts

---
---@class Stats : Instance
---@field MinReportInterval double
---@field ReporterType string
---@field Report fun(self:Stats, category:string, data:Dictionary):void
---@field ReportJobsStepWindow fun(self:Stats):void
---@field ReportTaskScheduler fun(self:Stats, includeJobs:bool):void
---@field SetReportUrl fun(self:Stats, url:string):void

---
---@class StatsItem : Instance
---@field GetValue fun(self:StatsItem):double
---@field GetValueString fun(self:StatsItem):string

---
---@class ProfilingItem : StatsItem
---@field GetTimes fun(self:ProfilingItem, window:double):Tuple
---@field GetTimesForFrames fun(self:ProfilingItem, frames:int):Tuple

---
---@class RunningAverageItemDouble : StatsItem

---
---@class RunningAverageItemInt : StatsItem

---
---@class RunningAverageTimeIntervalItem : StatsItem

---
---@class TotalCountTimeIntervalItem : StatsItem

---
---@class StringValue : Instance
---@field Value string
---@field Changed fun(value:string):Event
---@field changed fun(value:string):Event

---
---@class TaskScheduler : Instance
---@field AreArbitersThrottled bool
---@field Concurrency ConcurrencyModel
---@field NumRunningJobs double
---@field NumSleepingJobs double
---@field NumWaitingJobs double
---@field PriorityMethod PriorityMethod
---@field SchedulerDutyCycle double
---@field SchedulerRate double
---@field SleepAdjustMethod SleepAdjustMethod
---@field ThreadAffinity double
---@field ThreadPoolConfig ThreadPoolConfig
---@field ThreadPoolSize int
---@field ThrottledJobSleepTime double
---@field AddDummyJob fun(self:TaskScheduler, exclusive:bool, fps:double):void
---@field SetThreadShare fun(self:TaskScheduler, timeSlice:double, numShare:int):void

---
---@class Team : Instance
---@field AutoAssignable bool
---@field AutoColorCharacters bool
---@field Score int
---@field TeamColor BrickColor
---@field GetPlayers fun(self:Team):Objects

---
---@class Teams : Instance
---@field GetTeams fun(self:Teams):Objects
---@field RebalanceTeams fun(self:Teams):void

---
---@class TeleportService : Instance
---@field CustomizedTeleportUI bool
---@field GetLocalPlayerTeleportData fun(self:TeleportService):Variant
---@field GetTeleportSetting fun(self:TeleportService, setting:string):Variant
---@field SetTeleportSetting fun(self:TeleportService, setting:string, value:Variant):void
---@field Teleport fun(self:TeleportService, placeId:int, player:Instance, teleportData:Variant, customLoadingScreen:Instance):void
---@field TeleportCancel fun(self:TeleportService):void
---@field TeleportToPlaceInstance fun(self:TeleportService, placeId:int, instanceId:string, player:Instance, spawnName:string, teleportData:Variant, customLoadingScreen:Instance):void
---@field TeleportToPrivateServer fun(self:TeleportService, placeId:int, reservedServerAccessCode:string, players:Objects, spawnName:string, teleportData:Variant, customLoadingScreen:Instance):void
---@field TeleportToSpawnByName fun(self:TeleportService, placeId:int, spawnName:string, player:Instance, teleportData:Variant, customLoadingScreen:Instance):void
---@field GetPlayerPlaceInstanceAsync fun(self:TeleportService, userId:int):Tuple
---@field ReserveServer fun(self:TeleportService, placeId:int):string
---@field LocalPlayerArrivedFromTeleport fun(loadingGui:Instance, dataTable:Variant):Event
---@field ConfirmationCallback fun(message:string, placeId:int, spawnName:string):bool
---@field ErrorCallback fun(message:string):void

---
---@class TerrainRegion : Instance
---@field IsSmooth bool
---@field SizeInCells Vector3
---@field ConvertToSmooth fun(self:TerrainRegion):void

---
---@class TestService : Instance
---@field AutoRuns bool
---@field Description string
---@field ErrorCount int
---@field Is30FpsThrottleEnabled bool
---@field IsPhysicsEnvironmentalThrottled bool
---@field IsSleepAllowed bool
---@field NumberOfPlayers int
---@field SimulateSecondsLag double
---@field TestCount int
---@field Timeout double
---@field WarnCount int
---@field Check fun(self:TestService, condition:bool, description:string, source:Instance, line:int):void
---@field Checkpoint fun(self:TestService, text:string, source:Instance, line:int):void
---@field Done fun(self:TestService):void
---@field Error fun(self:TestService, description:string, source:Instance, line:int):void
---@field Fail fun(self:TestService, description:string, source:Instance, line:int):void
---@field Message fun(self:TestService, text:string, source:Instance, line:int):void
---@field Require fun(self:TestService, condition:bool, description:string, source:Instance, line:int):void
---@field Warn fun(self:TestService, condition:bool, description:string, source:Instance, line:int):void
---@field Run fun(self:TestService):void
---@field ServerCollectConditionalResult fun(condition:bool, text:string, script:Instance, line:int):Event
---@field ServerCollectResult fun(text:string, script:Instance, line:int):Event

---
---@class TextService : Instance
---@field GetTextSize fun(self:TextService, string:string, fontSize:int, font:Font, frameSize:Vector2):Vector2

---
---@class TimerService : Instance

---
---@class Toolbar : Instance
---@field CreateButton fun(self:Toolbar, text:string, tooltip:string, iconname:string):Instance

---
---@class TouchInputService : Instance

---
---@class TouchTransmitter : Instance

---
---@class TweenService : Instance

---
---@class UserGameSettings : Instance
---@field AllTutorialsDisabled bool
---@field CameraMode CustomCameraMode
---@field ChatVisible bool
---@field ComputerCameraMovementMode ComputerCameraMovementMode
---@field ComputerMovementMode ComputerMovementMode
---@field ControlMode ControlMode
---@field Fullscreen bool
---@field ImageUploadPromptBehavior UploadSetting
---@field MasterVolume float
---@field MouseSensitivity float
---@field MouseSensitivityFirstPerson Vector2
---@field MouseSensitivityThirdPerson Vector2
---@field RotationType RotationType
---@field SavedQualityLevel SavedQualitySetting
---@field TouchCameraMovementMode TouchCameraMovementMode
---@field TouchMovementMode TouchMovementMode
---@field UseBasicMouseSensitivity bool
---@field UsedHideHudShortcut bool
---@field VRRotationIntensity int
---@field VideoUploadPromptBehavior UploadSetting
---@field GetTutorialState fun(self:UserGameSettings, tutorialId:string):bool
---@field InFullScreen fun(self:UserGameSettings):bool
---@field InStudioMode fun(self:UserGameSettings):bool
---@field SetTutorialState fun(self:UserGameSettings, tutorialId:string, value:bool):void
---@field FullscreenChanged fun(isFullscreen:bool):Event
---@field StudioModeChanged fun(isStudioMode:bool):Event

---
---@class UserInputService : Instance
---@field AccelerometerEnabled bool
---@field GamepadEnabled bool
---@field GyroscopeEnabled bool
---@field KeyboardEnabled bool
---@field ModalEnabled bool
---@field MouseBehavior MouseBehavior
---@field MouseDeltaSensitivity float
---@field MouseEnabled bool
---@field MouseIconEnabled bool
---@field OverrideMouseIconBehavior OverrideMouseIconBehavior
---@field TouchEnabled bool
---@field UserHeadCFrame CoordinateFrame
---@field VREnabled bool
---@field GamepadSupports fun(self:UserInputService, gamepadNum:UserInputType, gamepadKeyCode:KeyCode):bool
---@field GetConnectedGamepads fun(self:UserInputService):Array
---@field GetDeviceAcceleration fun(self:UserInputService):Instance
---@field GetDeviceGravity fun(self:UserInputService):Instance
---@field GetDeviceRotation fun(self:UserInputService):Tuple
---@field GetFocusedTextBox fun(self:UserInputService):Instance
---@field GetGamepadConnected fun(self:UserInputService, gamepadNum:UserInputType):bool
---@field GetGamepadState fun(self:UserInputService, gamepadNum:UserInputType):Array
---@field GetKeysPressed fun(self:UserInputService):Array
---@field GetLastInputType fun(self:UserInputService):UserInputType
---@field GetNavigationGamepads fun(self:UserInputService):Array
---@field GetPlatform fun(self:UserInputService):Platform
---@field GetSupportedGamepadKeyCodes fun(self:UserInputService, gamepadNum:UserInputType):Array
---@field GetUserCFrame fun(self:UserInputService, type:UserCFrame):CoordinateFrame
---@field IsKeyDown fun(self:UserInputService, keyCode:KeyCode):bool
---@field IsNavigationGamepad fun(self:UserInputService, gamepadEnum:UserInputType):bool
---@field RecenterUserHeadCFrame fun(self:UserInputService):void
---@field SetNavigationGamepad fun(self:UserInputService, gamepadEnum:UserInputType, enabled:bool):void
---@field DeviceAccelerationChanged fun(acceleration:Instance):Event
---@field DeviceGravityChanged fun(gravity:Instance):Event
---@field DeviceRotationChanged fun(rotation:Instance, cframe:CoordinateFrame):Event
---@field GamepadConnected fun(gamepadNum:UserInputType):Event
---@field GamepadDisconnected fun(gamepadNum:UserInputType):Event
---@field InputBegan fun(input:Instance, gameProcessedEvent:bool):Event
---@field InputChanged fun(input:Instance, gameProcessedEvent:bool):Event
---@field InputEnded fun(input:Instance, gameProcessedEvent:bool):Event
---@field JumpRequest fun():Event
---@field LastInputTypeChanged fun(lastInputType:UserInputType):Event
---@field TextBoxFocusReleased fun(textboxReleased:Instance):Event
---@field TextBoxFocused fun(textboxFocused:Instance):Event
---@field TouchEnded fun(touch:Instance, gameProcessedEvent:bool):Event
---@field TouchLongPress fun(touchPositions:Array, state:UserInputState, gameProcessedEvent:bool):Event
---@field TouchMoved fun(touch:Instance, gameProcessedEvent:bool):Event
---@field TouchPan fun(touchPositions:Array, totalTranslation:Vector2, velocity:Vector2, state:UserInputState, gameProcessedEvent:bool):Event
---@field TouchPinch fun(touchPositions:Array, scale:float, velocity:float, state:UserInputState, gameProcessedEvent:bool):Event
---@field TouchRotate fun(touchPositions:Array, rotation:float, velocity:float, state:UserInputState, gameProcessedEvent:bool):Event
---@field TouchStarted fun(touch:Instance, gameProcessedEvent:bool):Event
---@field TouchSwipe fun(swipeDirection:SwipeDirection, numberOfTouches:int, gameProcessedEvent:bool):Event
---@field TouchTap fun(touchPositions:Array, gameProcessedEvent:bool):Event
---@field UserCFrameChanged fun(type:UserCFrame, value:CoordinateFrame):Event
---@field WindowFocusReleased fun():Event
---@field WindowFocused fun():Event

---
---@class Vector3Value : Instance
---@field Value Vector3
---@field Changed fun(value:Vector3):Event
---@field changed fun(value:Vector3):Event

---
---@class VirtualUser : Instance
---@field Button1Down fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field Button1Up fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field Button2Down fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field Button2Up fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field CaptureController fun(self:VirtualUser):void
---@field ClickButton1 fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field ClickButton2 fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field MoveMouse fun(self:VirtualUser, position:Vector2, camera:CoordinateFrame):void
---@field SetKeyDown fun(self:VirtualUser, key:string):void
---@field SetKeyUp fun(self:VirtualUser, key:string):void
---@field StartRecording fun(self:VirtualUser):void
---@field StopRecording fun(self:VirtualUser):string
---@field TypeKey fun(self:VirtualUser, key:string):void

---
---@class Visit : Instance
---@field Win Visit 4
---@field GetUploadUrl fun(self:Visit):string
---@field SetPing fun(self:Visit, pingUrl:string, interval:int):void
---@field SetUploadUrl fun(self:Visit, url:string):void

---
---@class Enum.AASamples
---@field None EnumItem @1
---@field 4 EnumItem @4
---@field 8 EnumItem @8

---
---@class Enum.AccessType
---@field Me EnumItem @0
---@field Friends EnumItem @1
---@field Everyone EnumItem @2
---@field InviteOnly EnumItem @3

---
---@class Enum.ActionType
---@field Nothing EnumItem @0
---@field Pause EnumItem @1
---@field Lose EnumItem @2
---@field Draw EnumItem @3
---@field Win EnumItem @4

---
---@class Enum.ActuatorType
---@field None EnumItem @0
---@field Motor EnumItem @1
---@field Servo EnumItem @2

---
---@class Enum.AnimationPriority
---@field Idle EnumItem @0
---@field Movement EnumItem @1
---@field Action EnumItem @2
---@field Core EnumItem @1000

---
---@class Enum.Antialiasing
---@field Automatic EnumItem @0
---@field Off EnumItem @2
---@field On EnumItem @1

---
---@class Enum.Axis
---@field X EnumItem @0
---@field Y EnumItem @1
---@field Z EnumItem @2

---
---@class Enum.BinType
---@field Script EnumItem @0
---@field GameTool EnumItem @1
---@field Grab EnumItem @2
---@field Clone EnumItem @3
---@field Hammer EnumItem @4

---
---@class Enum.BodyPart
---@field Head EnumItem @0
---@field Torso EnumItem @1
---@field LeftArm EnumItem @2
---@field RightArm EnumItem @3
---@field LeftLeg EnumItem @4
---@field RightLeg EnumItem @5

---
---@class Enum.Button
---@field Jump EnumItem @32
---@field Dismount EnumItem @8

---
---@class Enum.ButtonStyle
---@field Custom EnumItem @0
---@field RobloxButtonDefault EnumItem @1
---@field RobloxButton EnumItem @2
---@field RobloxRoundButton EnumItem @3
---@field RobloxRoundDefaultButton EnumItem @4
---@field RobloxRoundDropdownButton EnumItem @5

---
---@class Enum.CameraMode
---@field Classic EnumItem @0
---@field LockFirstPerson EnumItem @1

---
---@class Enum.CameraPanMode
---@field Classic EnumItem @0
---@field EdgeBump EnumItem @1

---
---@class Enum.CameraType
---@field Fixed EnumItem @0
---@field Watch EnumItem @2
---@field Attach EnumItem @1
---@field Track EnumItem @3
---@field Follow EnumItem @4
---@field Custom EnumItem @5
---@field Scriptable EnumItem @6

---
---@class Enum.CellBlock
---@field Solid EnumItem @0
---@field VerticalWedge EnumItem @1
---@field CornerWedge EnumItem @2
---@field InverseCornerWedge EnumItem @3
---@field HorizontalWedge EnumItem @4

---
---@class Enum.CellMaterial
---@field Empty EnumItem @0
---@field Grass EnumItem @1
---@field Sand EnumItem @2
---@field Brick EnumItem @3
---@field Granite EnumItem @4
---@field Asphalt EnumItem @5
---@field Iron EnumItem @6
---@field Aluminum EnumItem @7
---@field Gold EnumItem @8
---@field WoodPlank EnumItem @9
---@field WoodLog EnumItem @10
---@field Gravel EnumItem @11
---@field CinderBlock EnumItem @12
---@field MossyStone EnumItem @13
---@field Cement EnumItem @14
---@field RedPlastic EnumItem @15
---@field BluePlastic EnumItem @16
---@field Water EnumItem @17

---
---@class Enum.CellOrientation
---@field NegZ EnumItem @0
---@field X EnumItem @1
---@field Z EnumItem @2
---@field NegX EnumItem @3

---
---@class Enum.CenterDialogType
---@field UnsolicitedDialog EnumItem @1
---@field PlayerInitiatedDialog EnumItem @2
---@field ModalDialog EnumItem @3
---@field QuitDialog EnumItem @4

---
---@class Enum.ChatColor
---@field Blue EnumItem @0
---@field Green EnumItem @1
---@field Red EnumItem @2

---
---@class Enum.ChatMode
---@field Menu EnumItem @0
---@field TextAndMenu EnumItem @1

---
---@class Enum.ChatStyle
---@field Classic EnumItem @0
---@field Bubble EnumItem @1
---@field ClassicAndBubble EnumItem @2

---
---@class Enum.CollisionFidelity
---@field Default EnumItem @0
---@field Hull EnumItem @1
---@field Box EnumItem @2

---
---@class Enum.ComputerCameraMovementMode
---@field Default EnumItem @0
---@field Follow EnumItem @2
---@field Classic EnumItem @1

---
---@class Enum.ComputerMovementMode
---@field Default EnumItem @0
---@field KeyboardMouse EnumItem @1
---@field ClickToMove EnumItem @2

---
---@class Enum.ConcurrencyModel
---@field Serial EnumItem @0
---@field Safe EnumItem @1
---@field Logical EnumItem @2
---@field Empirical EnumItem @3

---
---@class Enum.ControlMode
---@field MouseLockSwitch EnumItem @1
---@field Classic EnumItem @0

---
---@class Enum.CoreGuiType
---@field PlayerList EnumItem @0
---@field Health EnumItem @1
---@field Backpack EnumItem @2
---@field Chat EnumItem @3
---@field All EnumItem @4

---
---@class Enum.CreatorType
---@field User EnumItem @0
---@field Group EnumItem @1

---
---@class Enum.CurrencyType
---@field Default EnumItem @0
---@field Robux EnumItem @1
---@field Tix EnumItem @2

---
---@class Enum.CustomCameraMode
---@field Default EnumItem @0
---@field Follow EnumItem @2
---@field Classic EnumItem @1

---
---@class Enum.DevCameraOcclusionMode
---@field Zoom EnumItem @0
---@field Invisicam EnumItem @1

---
---@class Enum.DevComputerCameraMovementMode
---@field UserChoice EnumItem @0
---@field Classic EnumItem @1
---@field Follow EnumItem @2

---
---@class Enum.DevComputerMovementMode
---@field UserChoice EnumItem @0
---@field KeyboardMouse EnumItem @1
---@field ClickToMove EnumItem @2
---@field Scriptable EnumItem @3

---
---@class Enum.DevTouchCameraMovementMode
---@field UserChoice EnumItem @0
---@field Classic EnumItem @1
---@field Follow EnumItem @2

---
---@class Enum.DevTouchMovementMode
---@field UserChoice EnumItem @0
---@field Thumbstick EnumItem @1
---@field DPad EnumItem @2
---@field Thumbpad EnumItem @3
---@field ClickToMove EnumItem @4
---@field Scriptable EnumItem @5

---
---@class Enum.DialogPurpose
---@field Quest EnumItem @0
---@field Help EnumItem @1
---@field Shop EnumItem @2

---
---@class Enum.DialogTone
---@field Neutral EnumItem @0
---@field Friendly EnumItem @1
---@field Enemy EnumItem @2

---
---@class Enum.EasingDirection
---@field In EnumItem @0
---@field Out EnumItem @1
---@field InOut EnumItem @2

---
---@class Enum.EasingStyle
---@field Linear EnumItem @0
---@field Sine EnumItem @1
---@field Back EnumItem @2
---@field Quad EnumItem @3
---@field Quart EnumItem @4
---@field Quint EnumItem @5
---@field Bounce EnumItem @6
---@field Elastic EnumItem @7

---
---@class Enum.EnviromentalPhysicsThrottle
---@field DefaultAuto EnumItem @0
---@field Disabled EnumItem @1
---@field Always EnumItem @2
---@field Skip2 EnumItem @3
---@field Skip4 EnumItem @4
---@field Skip8 EnumItem @5
---@field Skip16 EnumItem @6

---
---@class Enum.ErrorReporting
---@field DontReport EnumItem @0
---@field Prompt EnumItem @1
---@field Report EnumItem @2

---
---@class Enum.ExplosionType
---@field NoCraters EnumItem @0
---@field Craters EnumItem @1
---@field CratersAndDebris EnumItem @2

---
---@class Enum.FilterResult
---@field Rejected EnumItem @1
---@field Accepted EnumItem @0

---
---@class Enum.Font
---@field Legacy EnumItem @0
---@field Arial EnumItem @1
---@field ArialBold EnumItem @2
---@field SourceSans EnumItem @3
---@field SourceSansBold EnumItem @4
---@field SourceSansLight EnumItem @5
---@field SourceSansItalic EnumItem @6

---
---@class Enum.FontSize
---@field Size8 EnumItem @0
---@field Size9 EnumItem @1
---@field Size10 EnumItem @2
---@field Size11 EnumItem @3
---@field Size12 EnumItem @4
---@field Size14 EnumItem @5
---@field Size18 EnumItem @6
---@field Size24 EnumItem @7
---@field Size36 EnumItem @8
---@field Size48 EnumItem @9
---@field Size28 EnumItem @10
---@field Size32 EnumItem @11
---@field Size42 EnumItem @12
---@field Size60 EnumItem @13
---@field Size96 EnumItem @14

---
---@class Enum.FormFactor
---@field Symmetric EnumItem @0
---@field Brick EnumItem @1
---@field Plate EnumItem @2
---@field Custom EnumItem @3

---
---@class Enum.FrameStyle
---@field Custom EnumItem @0
---@field ChatBlue EnumItem @1
---@field RobloxSquare EnumItem @2
---@field RobloxRound EnumItem @3
---@field ChatGreen EnumItem @4
---@field ChatRed EnumItem @5
---@field DropShadow EnumItem @6

---
---@class Enum.FramerateManagerMode
---@field Automatic EnumItem @0
---@field On EnumItem @1
---@field Off EnumItem @2

---
---@class Enum.FriendRequestEvent
---@field Issue EnumItem @0
---@field Revoke EnumItem @1
---@field Accept EnumItem @2
---@field Deny EnumItem @3

---
---@class Enum.FriendStatus
---@field Unknown EnumItem @0
---@field NotFriend EnumItem @1
---@field Friend EnumItem @2
---@field FriendRequestSent EnumItem @3
---@field FriendRequestReceived EnumItem @4

---
---@class Enum.FunctionalTestResult
---@field Passed EnumItem @0
---@field Warning EnumItem @1
---@field Error EnumItem @2

---
---@class Enum.GameAvatarType
---@field R6 EnumItem @0
---@field R15 EnumItem @1
---@field PlayerChoice EnumItem @2

---
---@class Enum.GearGenreSetting
---@field AllGenres EnumItem @0
---@field MatchingGenreOnly EnumItem @1

---
---@class Enum.GearType
---@field MeleeWeapons EnumItem @0
---@field RangedWeapons EnumItem @1
---@field Explosives EnumItem @2
---@field PowerUps EnumItem @3
---@field NavigationEnhancers EnumItem @4
---@field MusicalInstruments EnumItem @5
---@field SocialItems EnumItem @6
---@field BuildingTools EnumItem @7
---@field Transport EnumItem @8

---
---@class Enum.Genre
---@field All EnumItem @0
---@field TownAndCity EnumItem @1
---@field Fantasy EnumItem @2
---@field SciFi EnumItem @3
---@field Ninja EnumItem @4
---@field Scary EnumItem @5
---@field Pirate EnumItem @6
---@field Adventure EnumItem @7
---@field Sports EnumItem @8
---@field Funny EnumItem @9
---@field WildWest EnumItem @10
---@field War EnumItem @11
---@field SkatePark EnumItem @12
---@field Tutorial EnumItem @13

---
---@class Enum.GraphicsMode
---@field Automatic EnumItem @1
---@field Direct3D9 EnumItem @3
---@field Direct3D11 EnumItem @2
---@field OpenGL EnumItem @4
---@field NoGraphics EnumItem @5

---
---@class Enum.HandlesStyle
---@field Resize EnumItem @0
---@field Movement EnumItem @1

---
---@class Enum.HttpContentType
---@field ApplicationJson EnumItem @0
---@field ApplicationXml EnumItem @1
---@field ApplicationUrlEncoded EnumItem @2
---@field TextPlain EnumItem @3
---@field TextXml EnumItem @4

---
---@class Enum.HumanoidDisplayDistanceType
---@field Viewer EnumItem @0
---@field Subject EnumItem @1
---@field None EnumItem @2

---
---@class Enum.HumanoidRigType
---@field R6 EnumItem @0
---@field R15 EnumItem @1

---
---@class Enum.HumanoidStateType
---@field FallingDown EnumItem @0
---@field Running EnumItem @8
---@field RunningNoPhysics EnumItem @10
---@field Climbing EnumItem @12
---@field StrafingNoPhysics EnumItem @11
---@field Ragdoll EnumItem @1
---@field GettingUp EnumItem @2
---@field Jumping EnumItem @3
---@field Landed EnumItem @7
---@field Flying EnumItem @6
---@field Freefall EnumItem @5
---@field Seated EnumItem @13
---@field PlatformStanding EnumItem @14
---@field Dead EnumItem @15
---@field Swimming EnumItem @4
---@field Physics EnumItem @16
---@field None EnumItem @18

---
---@class Enum.InOut
---@field Edge EnumItem @0
---@field Inset EnumItem @1
---@field Center EnumItem @2

---
---@class Enum.InfoType
---@field Asset EnumItem @0
---@field Product EnumItem @1

---
---@class Enum.InputType
---@field NoInput EnumItem @0
---@field LeftTread EnumItem @1
---@field RightTread EnumItem @2
---@field Steer EnumItem @3
---@field Throttle EnumItem @4
---@field UpDown EnumItem @6
---@field Action1 EnumItem @7
---@field Action2 EnumItem @8
---@field Action3 EnumItem @9
---@field Action4 EnumItem @10
---@field Action5 EnumItem @11
---@field Constant EnumItem @12
---@field Sin EnumItem @13

---
---@class Enum.JointCreationMode
---@field All EnumItem @0
---@field Surface EnumItem @1
---@field None EnumItem @2

---
---@class Enum.JointType
---@field None EnumItem @22
---@field Rotate EnumItem @6
---@field RotateP EnumItem @7
---@field RotateV EnumItem @8
---@field Glue EnumItem @9
---@field Weld EnumItem @1
---@field Snap EnumItem @3

---
---@class Enum.KeyCode
---@field Unknown EnumItem @0
---@field Backspace EnumItem @8
---@field Tab EnumItem @9
---@field Clear EnumItem @12
---@field Return EnumItem @13
---@field Pause EnumItem @19
---@field Escape EnumItem @27
---@field Space EnumItem @32
---@field QuotedDouble EnumItem @34
---@field Hash EnumItem @35
---@field Dollar EnumItem @36
---@field Percent EnumItem @37
---@field Ampersand EnumItem @38
---@field Quote EnumItem @39
---@field LeftParenthesis EnumItem @40
---@field RightParenthesis EnumItem @41
---@field Asterisk EnumItem @42
---@field Plus EnumItem @43
---@field Comma EnumItem @44
---@field Minus EnumItem @45
---@field Period EnumItem @46
---@field Slash EnumItem @47
---@field Zero EnumItem @48
---@field One EnumItem @49
---@field Two EnumItem @50
---@field Three EnumItem @51
---@field Four EnumItem @52
---@field Five EnumItem @53
---@field Six EnumItem @54
---@field Seven EnumItem @55
---@field Eight EnumItem @56
---@field Nine EnumItem @57
---@field Colon EnumItem @58
---@field Semicolon EnumItem @59
---@field LessThan EnumItem @60
---@field Equals EnumItem @61
---@field GreaterThan EnumItem @62
---@field Question EnumItem @63
---@field At EnumItem @64
---@field LeftBracket EnumItem @91
---@field BackSlash EnumItem @92
---@field RightBracket EnumItem @93
---@field Caret EnumItem @94
---@field Underscore EnumItem @95
---@field Backquote EnumItem @96
---@field A EnumItem @97
---@field B EnumItem @98
---@field C EnumItem @99
---@field D EnumItem @100
---@field E EnumItem @101
---@field F EnumItem @102
---@field G EnumItem @103
---@field H EnumItem @104
---@field I EnumItem @105
---@field J EnumItem @106
---@field K EnumItem @107
---@field L EnumItem @108
---@field M EnumItem @109
---@field N EnumItem @110
---@field O EnumItem @111
---@field P EnumItem @112
---@field Q EnumItem @113
---@field R EnumItem @114
---@field S EnumItem @115
---@field T EnumItem @116
---@field U EnumItem @117
---@field V EnumItem @118
---@field W EnumItem @119
---@field X EnumItem @120
---@field Y EnumItem @121
---@field Z EnumItem @122
---@field LeftCurly EnumItem @123
---@field Pipe EnumItem @124
---@field RightCurly EnumItem @125
---@field Tilde EnumItem @126
---@field Delete EnumItem @127
---@field KeypadZero EnumItem @256
---@field KeypadOne EnumItem @257
---@field KeypadTwo EnumItem @258
---@field KeypadThree EnumItem @259
---@field KeypadFour EnumItem @260
---@field KeypadFive EnumItem @261
---@field KeypadSix EnumItem @262
---@field KeypadSeven EnumItem @263
---@field KeypadEight EnumItem @264
---@field KeypadNine EnumItem @265
---@field KeypadPeriod EnumItem @266
---@field KeypadDivide EnumItem @267
---@field KeypadMultiply EnumItem @268
---@field KeypadMinus EnumItem @269
---@field KeypadPlus EnumItem @270
---@field KeypadEnter EnumItem @271
---@field KeypadEquals EnumItem @272
---@field Up EnumItem @273
---@field Down EnumItem @274
---@field Right EnumItem @275
---@field Left EnumItem @276
---@field Insert EnumItem @277
---@field Home EnumItem @278
---@field End EnumItem @279
---@field PageUp EnumItem @280
---@field PageDown EnumItem @281
---@field LeftShift EnumItem @304
---@field RightShift EnumItem @303
---@field LeftMeta EnumItem @310
---@field RightMeta EnumItem @309
---@field LeftAlt EnumItem @308
---@field RightAlt EnumItem @307
---@field LeftControl EnumItem @306
---@field RightControl EnumItem @305
---@field CapsLock EnumItem @301
---@field NumLock EnumItem @300
---@field ScrollLock EnumItem @302
---@field LeftSuper EnumItem @311
---@field RightSuper EnumItem @312
---@field Mode EnumItem @313
---@field Compose EnumItem @314
---@field Help EnumItem @315
---@field Print EnumItem @316
---@field SysReq EnumItem @317
---@field Break EnumItem @318
---@field Menu EnumItem @319
---@field Power EnumItem @320
---@field Euro EnumItem @321
---@field Undo EnumItem @322
---@field F1 EnumItem @282
---@field F2 EnumItem @283
---@field F3 EnumItem @284
---@field F4 EnumItem @285
---@field F5 EnumItem @286
---@field F6 EnumItem @287
---@field F7 EnumItem @288
---@field F8 EnumItem @289
---@field F9 EnumItem @290
---@field F10 EnumItem @291
---@field F11 EnumItem @292
---@field F12 EnumItem @293
---@field F13 EnumItem @294
---@field F14 EnumItem @295
---@field F15 EnumItem @296
---@field World0 EnumItem @160
---@field World1 EnumItem @161
---@field World2 EnumItem @162
---@field World3 EnumItem @163
---@field World4 EnumItem @164
---@field World5 EnumItem @165
---@field World6 EnumItem @166
---@field World7 EnumItem @167
---@field World8 EnumItem @168
---@field World9 EnumItem @169
---@field World10 EnumItem @170
---@field World11 EnumItem @171
---@field World12 EnumItem @172
---@field World13 EnumItem @173
---@field World14 EnumItem @174
---@field World15 EnumItem @175
---@field World16 EnumItem @176
---@field World17 EnumItem @177
---@field World18 EnumItem @178
---@field World19 EnumItem @179
---@field World20 EnumItem @180
---@field World21 EnumItem @181
---@field World22 EnumItem @182
---@field World23 EnumItem @183
---@field World24 EnumItem @184
---@field World25 EnumItem @185
---@field World26 EnumItem @186
---@field World27 EnumItem @187
---@field World28 EnumItem @188
---@field World29 EnumItem @189
---@field World30 EnumItem @190
---@field World31 EnumItem @191
---@field World32 EnumItem @192
---@field World33 EnumItem @193
---@field World34 EnumItem @194
---@field World35 EnumItem @195
---@field World36 EnumItem @196
---@field World37 EnumItem @197
---@field World38 EnumItem @198
---@field World39 EnumItem @199
---@field World40 EnumItem @200
---@field World41 EnumItem @201
---@field World42 EnumItem @202
---@field World43 EnumItem @203
---@field World44 EnumItem @204
---@field World45 EnumItem @205
---@field World46 EnumItem @206
---@field World47 EnumItem @207
---@field World48 EnumItem @208
---@field World49 EnumItem @209
---@field World50 EnumItem @210
---@field World51 EnumItem @211
---@field World52 EnumItem @212
---@field World53 EnumItem @213
---@field World54 EnumItem @214
---@field World55 EnumItem @215
---@field World56 EnumItem @216
---@field World57 EnumItem @217
---@field World58 EnumItem @218
---@field World59 EnumItem @219
---@field World60 EnumItem @220
---@field World61 EnumItem @221
---@field World62 EnumItem @222
---@field World63 EnumItem @223
---@field World64 EnumItem @224
---@field World65 EnumItem @225
---@field World66 EnumItem @226
---@field World67 EnumItem @227
---@field World68 EnumItem @228
---@field World69 EnumItem @229
---@field World70 EnumItem @230
---@field World71 EnumItem @231
---@field World72 EnumItem @232
---@field World73 EnumItem @233
---@field World74 EnumItem @234
---@field World75 EnumItem @235
---@field World76 EnumItem @236
---@field World77 EnumItem @237
---@field World78 EnumItem @238
---@field World79 EnumItem @239
---@field World80 EnumItem @240
---@field World81 EnumItem @241
---@field World82 EnumItem @242
---@field World83 EnumItem @243
---@field World84 EnumItem @244
---@field World85 EnumItem @245
---@field World86 EnumItem @246
---@field World87 EnumItem @247
---@field World88 EnumItem @248
---@field World89 EnumItem @249
---@field World90 EnumItem @250
---@field World91 EnumItem @251
---@field World92 EnumItem @252
---@field World93 EnumItem @253
---@field World94 EnumItem @254
---@field World95 EnumItem @255
---@field ButtonX EnumItem @1000
---@field ButtonY EnumItem @1001
---@field ButtonA EnumItem @1002
---@field ButtonB EnumItem @1003
---@field ButtonR1 EnumItem @1004
---@field ButtonL1 EnumItem @1005
---@field ButtonR2 EnumItem @1006
---@field ButtonL2 EnumItem @1007
---@field ButtonR3 EnumItem @1008
---@field ButtonL3 EnumItem @1009
---@field ButtonStart EnumItem @1010
---@field ButtonSelect EnumItem @1011
---@field DPadLeft EnumItem @1012
---@field DPadRight EnumItem @1013
---@field DPadUp EnumItem @1014
---@field DPadDown EnumItem @1015
---@field Thumbstick1 EnumItem @1016
---@field Thumbstick2 EnumItem @1017

---
---@class Enum.KeywordFilterType
---@field Include EnumItem @0
---@field Exclude EnumItem @1

---
---@class Enum.LeftRight
---@field Left EnumItem @0
---@field Center EnumItem @1
---@field Right EnumItem @2

---
---@class Enum.LevelOfDetailSetting
---@field High EnumItem @2
---@field Medium EnumItem @1
---@field Low EnumItem @0

---
---@class Enum.ListenerType
---@field Camera EnumItem @0
---@field CFrame EnumItem @1
---@field ObjectPosition EnumItem @2
---@field ObjectCFrame EnumItem @3

---
---@class Enum.Material
---@field Plastic EnumItem @256
---@field Wood EnumItem @512
---@field Slate EnumItem @800
---@field Concrete EnumItem @816
---@field CorrodedMetal EnumItem @1040
---@field DiamondPlate EnumItem @1056
---@field Foil EnumItem @1072
---@field Grass EnumItem @1280
---@field Ice EnumItem @1536
---@field Marble EnumItem @784
---@field Granite EnumItem @832
---@field Brick EnumItem @848
---@field Pebble EnumItem @864
---@field Sand EnumItem @1296
---@field Fabric EnumItem @1312
---@field SmoothPlastic EnumItem @272
---@field Metal EnumItem @1088
---@field WoodPlanks EnumItem @528
---@field Cobblestone EnumItem @880
---@field Air EnumItem @1792
---@field Water EnumItem @2048
---@field Rock EnumItem @896
---@field Glacier EnumItem @1552
---@field Snow EnumItem @1328
---@field Sandstone EnumItem @912
---@field Mud EnumItem @1344
---@field Basalt EnumItem @788
---@field Ground EnumItem @1360
---@field CrackedLava EnumItem @804
---@field Neon EnumItem @288
---@field Asphalt EnumItem @1376
---@field LeafyGrass EnumItem @1284
---@field Salt EnumItem @1392
---@field Limestone EnumItem @820
---@field Pavement EnumItem @836

---
---@class Enum.MembershipType
---@field None EnumItem @0
---@field BuildersClub EnumItem @1
---@field TurboBuildersClub EnumItem @2
---@field OutrageousBuildersClub EnumItem @3

---
---@class Enum.MeshType
---@field Head EnumItem @0
---@field Torso EnumItem @1
---@field Wedge EnumItem @2
---@field Prism EnumItem @7
---@field Pyramid EnumItem @8
---@field ParallelRamp EnumItem @9
---@field RightAngleRamp EnumItem @10
---@field CornerWedge EnumItem @11
---@field Brick EnumItem @6
---@field Sphere EnumItem @3
---@field Cylinder EnumItem @4
---@field FileMesh EnumItem @5

---
---@class Enum.MessageType
---@field MessageOutput EnumItem @0
---@field MessageInfo EnumItem @1
---@field MessageWarning EnumItem @2
---@field MessageError EnumItem @3

---
---@class Enum.MouseBehavior
---@field Default EnumItem @0
---@field LockCenter EnumItem @1
---@field LockCurrentPosition EnumItem @2

---
---@class Enum.MoveState
---@field Stopped EnumItem @0
---@field Coasting EnumItem @1
---@field Pushing EnumItem @2
---@field Stopping EnumItem @3
---@field AirFree EnumItem @4

---
---@class Enum.NameOcclusion
---@field OccludeAll EnumItem @2
---@field EnemyOcclusion EnumItem @1
---@field NoOcclusion EnumItem @0

---
---@class Enum.NetworkOwnership
---@field Automatic EnumItem @0
---@field Manual EnumItem @1

---
---@class Enum.NormalId
---@field Top EnumItem @1
---@field Bottom EnumItem @4
---@field Back EnumItem @2
---@field Front EnumItem @5
---@field Right EnumItem @0
---@field Left EnumItem @3

---
---@class Enum.OverrideMouseIconBehavior
---@field None EnumItem @0
---@field ForceShow EnumItem @1
---@field ForceHide EnumItem @2

---
---@class Enum.PacketPriority
---@field IMMEDIATE_PRIORITY EnumItem @0
---@field HIGH_PRIORITY EnumItem @1
---@field MEDIUM_PRIORITY EnumItem @2
---@field LOW_PRIORITY EnumItem @3

---
---@class Enum.PacketReliability
---@field UNRELIABLE EnumItem @0
---@field UNRELIABLE_SEQUENCED EnumItem @1
---@field RELIABLE EnumItem @2
---@field RELIABLE_ORDERED EnumItem @3
---@field RELIABLE_SEQUENCED EnumItem @4

---
---@class Enum.PartType
---@field Ball EnumItem @0
---@field Block EnumItem @1
---@field Cylinder EnumItem @2

---
---@class Enum.PathStatus
---@field Success EnumItem @0
---@field ClosestNoPath EnumItem @1
---@field ClosestOutOfRange EnumItem @2
---@field FailStartNotEmpty EnumItem @3
---@field FailFinishNotEmpty EnumItem @4

---
---@class Enum.PhysicsReceiveMethod
---@field Direct EnumItem @0
---@field Interpolation EnumItem @1

---
---@class Enum.PhysicsSendMethod
---@field ErrorComputation EnumItem @0
---@field ErrorComputation2 EnumItem @1
---@field RoundRobin EnumItem @2
---@field TopNErrors EnumItem @3

---
---@class Enum.Platform
---@field Windows EnumItem @0
---@field OSX EnumItem @1
---@field IOS EnumItem @2
---@field Android EnumItem @3
---@field XBoxOne EnumItem @4
---@field PS4 EnumItem @5
---@field PS3 EnumItem @6
---@field XBox360 EnumItem @7
---@field WiiU EnumItem @8
---@field NX EnumItem @9
---@field Ouya EnumItem @10
---@field AndroidTV EnumItem @11
---@field Chromecast EnumItem @12
---@field Linux EnumItem @13
---@field SteamOS EnumItem @14
---@field WebOS EnumItem @15
---@field DOS EnumItem @16
---@field BeOS EnumItem @17
---@field UWP EnumItem @18
---@field None EnumItem @19

---
---@class Enum.PlayerActions
---@field CharacterForward EnumItem @0
---@field CharacterBackward EnumItem @1
---@field CharacterLeft EnumItem @2
---@field CharacterRight EnumItem @3
---@field CharacterJump EnumItem @4

---
---@class Enum.PlayerChatType
---@field All EnumItem @0
---@field Team EnumItem @1
---@field Whisper EnumItem @2

---
---@class Enum.PoseEasingDirection
---@field Out EnumItem @1
---@field InOut EnumItem @2
---@field In EnumItem @0

---
---@class Enum.PoseEasingStyle
---@field Linear EnumItem @0
---@field Constant EnumItem @1
---@field Elastic EnumItem @2
---@field Cubic EnumItem @3
---@field Bounce EnumItem @4

---
---@class Enum.PriorityMethod
---@field LastError EnumItem @0
---@field AccumulatedError EnumItem @1
---@field FIFO EnumItem @2

---
---@class Enum.PrismSides
---@field 3 EnumItem @3
---@field 5 EnumItem @5
---@field 6 EnumItem @6
---@field 8 EnumItem @8
---@field 10 EnumItem @10
---@field 20 EnumItem @20

---
---@class Enum.PrivilegeType
---@field Owner EnumItem @255
---@field Admin EnumItem @240
---@field Member EnumItem @128
---@field Visitor EnumItem @10
---@field Banned EnumItem @0

---
---@class Enum.ProductPurchaseDecision
---@field NotProcessedYet EnumItem @0
---@field PurchaseGranted EnumItem @1

---
---@class Enum.PyramidSides
---@field 3 EnumItem @3
---@field 4 EnumItem @4
---@field 5 EnumItem @5
---@field 6 EnumItem @6
---@field 8 EnumItem @8
---@field 10 EnumItem @10
---@field 20 EnumItem @20

---
---@class Enum.QualityLevel
---@field Automatic EnumItem @0
---@field Level01 EnumItem @1
---@field Level02 EnumItem @2
---@field Level03 EnumItem @3
---@field Level04 EnumItem @4
---@field Level05 EnumItem @5
---@field Level06 EnumItem @6
---@field Level07 EnumItem @7
---@field Level08 EnumItem @8
---@field Level09 EnumItem @9
---@field Level10 EnumItem @10
---@field Level11 EnumItem @11
---@field Level12 EnumItem @12
---@field Level13 EnumItem @13
---@field Level14 EnumItem @14
---@field Level15 EnumItem @15
---@field Level16 EnumItem @16
---@field Level17 EnumItem @17
---@field Level18 EnumItem @18
---@field Level19 EnumItem @19
---@field Level20 EnumItem @20
---@field Level21 EnumItem @21

---
---@class Enum.RenderPriority
---@field First EnumItem @0
---@field Input EnumItem @100
---@field Camera EnumItem @200
---@field Character EnumItem @300
---@field Last EnumItem @2000

---
---@class Enum.Resolution
---@field Automatic EnumItem @0
---@field 720x526 EnumItem @1
---@field 800x600 EnumItem @2
---@field 1024x600 EnumItem @3
---@field 1024x768 EnumItem @4
---@field 1280x720 EnumItem @5
---@field 1280x768 EnumItem @6
---@field 1152x864 EnumItem @7
---@field 1280x800 EnumItem @8
---@field 1360x768 EnumItem @9
---@field 1280x960 EnumItem @10
---@field 1280x1024 EnumItem @11
---@field 1440x900 EnumItem @12
---@field 1600x900 EnumItem @13
---@field 1600x1024 EnumItem @14
---@field 1600x1200 EnumItem @15
---@field 1680x1050 EnumItem @16
---@field 1920x1080 EnumItem @17
---@field 1920x1200 EnumItem @18

---
---@class Enum.ReverbType
---@field NoReverb EnumItem @0
---@field GenericReverb EnumItem @1
---@field PaddedCell EnumItem @2
---@field Room EnumItem @3
---@field Bathroom EnumItem @4
---@field LivingRoom EnumItem @5
---@field StoneRoom EnumItem @6
---@field Auditorium EnumItem @7
---@field ConcertHall EnumItem @8
---@field Cave EnumItem @9
---@field Arena EnumItem @10
---@field Hangar EnumItem @11
---@field CarpettedHallway EnumItem @12
---@field Hallway EnumItem @13
---@field StoneCorridor EnumItem @14
---@field Alley EnumItem @15
---@field Forest EnumItem @16
---@field City EnumItem @17
---@field Mountains EnumItem @18
---@field Quarry EnumItem @19
---@field Plain EnumItem @20
---@field ParkingLot EnumItem @21
---@field SewerPipe EnumItem @22
---@field UnderWater EnumItem @23

---
---@class Enum.RollOffMode
---@field Inverse EnumItem @0
---@field Linear EnumItem @1
---@field InverseTapered EnumItem @3
---@field LinearSquare EnumItem @2

---
---@class Enum.RotationType
---@field MovementRelative EnumItem @0
---@field CameraRelative EnumItem @1

---
---@class Enum.RuntimeUndoBehavior
---@field Aggregate EnumItem @0
---@field Snapshot EnumItem @1
---@field Hybrid EnumItem @2

---
---@class Enum.SaveFilter
---@field SaveAll EnumItem @2
---@field SaveWorld EnumItem @0
---@field SaveGame EnumItem @1

---
---@class Enum.SavedQualitySetting
---@field Automatic EnumItem @0
---@field QualityLevel1 EnumItem @1
---@field QualityLevel2 EnumItem @2
---@field QualityLevel3 EnumItem @3
---@field QualityLevel4 EnumItem @4
---@field QualityLevel5 EnumItem @5
---@field QualityLevel6 EnumItem @6
---@field QualityLevel7 EnumItem @7
---@field QualityLevel8 EnumItem @8
---@field QualityLevel9 EnumItem @9
---@field QualityLevel10 EnumItem @10

---
---@class Enum.ScaleType
---@field Stretch EnumItem @0
---@field Slice EnumItem @1

---
---@class Enum.SizeConstraint
---@field RelativeXY EnumItem @0
---@field RelativeXX EnumItem @1
---@field RelativeYY EnumItem @2

---
---@class Enum.SleepAdjustMethod
---@field None EnumItem @0
---@field LastSample EnumItem @1
---@field AverageInterval EnumItem @2

---
---@class Enum.SoundType
---@field NoSound EnumItem @0
---@field Boing EnumItem @1
---@field Bomb EnumItem @2
---@field Break EnumItem @3
---@field Click EnumItem @4
---@field Clock EnumItem @5
---@field Slingshot EnumItem @6
---@field Page EnumItem @7
---@field Ping EnumItem @8
---@field Snap EnumItem @9
---@field Splat EnumItem @10
---@field Step EnumItem @11
---@field StepOn EnumItem @12
---@field Swoosh EnumItem @13
---@field Victory EnumItem @14

---
---@class Enum.SpecialKey
---@field Insert EnumItem @0
---@field Home EnumItem @1
---@field End EnumItem @2
---@field PageUp EnumItem @3
---@field PageDown EnumItem @4
---@field ChatHotkey EnumItem @5

---
---@class Enum.Status
---@field Poison EnumItem @0
---@field Confusion EnumItem @1

---
---@class Enum.Stuff
---@field Heads EnumItem @0
---@field Faces EnumItem @1
---@field Hats EnumItem @2
---@field TShirts EnumItem @3
---@field Shirts EnumItem @4
---@field Pants EnumItem @5
---@field Gears EnumItem @6
---@field Torsos EnumItem @7
---@field LeftArms EnumItem @8
---@field RightArms EnumItem @9
---@field LeftLegs EnumItem @10
---@field RightLegs EnumItem @11
---@field Bodies EnumItem @12
---@field Costumes EnumItem @13

---
---@class Enum.Style
---@field AlternatingSupports EnumItem @0
---@field BridgeStyleSupports EnumItem @1
---@field NoSupports EnumItem @2

---
---@class Enum.SurfaceConstraint
---@field None EnumItem @0
---@field Hinge EnumItem @1
---@field SteppingMotor EnumItem @2
---@field Motor EnumItem @3

---
---@class Enum.SurfaceType
---@field Smooth EnumItem @0
---@field Glue EnumItem @1
---@field Weld EnumItem @2
---@field Studs EnumItem @3
---@field Inlet EnumItem @4
---@field Universal EnumItem @5
---@field Hinge EnumItem @6
---@field Motor EnumItem @7
---@field SteppingMotor EnumItem @8
---@field Unjoinable EnumItem @9
---@field SmoothNoOutlines EnumItem @10

---
---@class Enum.SwipeDirection
---@field Right EnumItem @0
---@field Left EnumItem @1
---@field Up EnumItem @2
---@field Down EnumItem @3
---@field None EnumItem @4

---
---@class Enum.TeleportState
---@field RequestedFromServer EnumItem @0
---@field Started EnumItem @1
---@field WaitingForServer EnumItem @2
---@field Failed EnumItem @3
---@field InProgress EnumItem @4

---
---@class Enum.TeleportType
---@field ToPlace EnumItem @0
---@field ToInstance EnumItem @1
---@field ToReservedServer EnumItem @2

---
---@class Enum.TextXAlignment
---@field Left EnumItem @0
---@field Center EnumItem @2
---@field Right EnumItem @1

---
---@class Enum.TextYAlignment
---@field Top EnumItem @0
---@field Center EnumItem @1
---@field Bottom EnumItem @2

---
---@class Enum.ThreadPoolConfig
---@field Auto EnumItem @0
---@field PerCore1 EnumItem @101
---@field PerCore2 EnumItem @102
---@field PerCore3 EnumItem @103
---@field PerCore4 EnumItem @104
---@field Threads1 EnumItem @1
---@field Threads2 EnumItem @2
---@field Threads3 EnumItem @3
---@field Threads4 EnumItem @4
---@field Threads8 EnumItem @8
---@field Threads16 EnumItem @16

---
---@class Enum.ThrottlingPriority
---@field Extreme EnumItem @2
---@field ElevatedOnServer EnumItem @1
---@field Default EnumItem @0

---
---@class Enum.TickCountSampleMethod
---@field Fast EnumItem @0
---@field Benchmark EnumItem @1
---@field Precise EnumItem @2

---
---@class Enum.TopBottom
---@field Top EnumItem @0
---@field Center EnumItem @1
---@field Bottom EnumItem @2

---
---@class Enum.TouchCameraMovementMode
---@field Default EnumItem @0
---@field Follow EnumItem @2
---@field Classic EnumItem @1

---
---@class Enum.TouchMovementMode
---@field Default EnumItem @0
---@field Thumbstick EnumItem @1
---@field DPad EnumItem @2
---@field Thumbpad EnumItem @3
---@field ClickToMove EnumItem @4

---
---@class Enum.TweenStatus
---@field Canceled EnumItem @0
---@field Completed EnumItem @1

---
---@class Enum.UiMessageType
---@field UiMessageError EnumItem @0
---@field UiMessageInfo EnumItem @1

---
---@class Enum.UploadSetting
---@field Never EnumItem @0
---@field Ask EnumItem @1
---@field Always EnumItem @2

---
---@class Enum.UserCFrame
---@field Head EnumItem @0
---@field LeftHand EnumItem @1
---@field RightHand EnumItem @2

---
---@class Enum.UserInputState
---@field Begin EnumItem @0
---@field Change EnumItem @1
---@field End EnumItem @2
---@field Cancel EnumItem @3
---@field None EnumItem @4

---
---@class Enum.UserInputType
---@field MouseButton1 EnumItem @0
---@field MouseButton2 EnumItem @1
---@field MouseButton3 EnumItem @2
---@field MouseWheel EnumItem @3
---@field MouseMovement EnumItem @4
---@field Touch EnumItem @7
---@field Keyboard EnumItem @8
---@field Focus EnumItem @9
---@field Accelerometer EnumItem @10
---@field Gyro EnumItem @11
---@field Gamepad1 EnumItem @12
---@field Gamepad2 EnumItem @13
---@field Gamepad3 EnumItem @14
---@field Gamepad4 EnumItem @15
---@field Gamepad5 EnumItem @16
---@field Gamepad6 EnumItem @17
---@field Gamepad7 EnumItem @18
---@field Gamepad8 EnumItem @19
---@field TextInput EnumItem @20
---@field None EnumItem @21

---
---@class Enum.VibrationMotor
---@field Large EnumItem @0
---@field Small EnumItem @1
---@field LeftTrigger EnumItem @2
---@field RightTrigger EnumItem @3
---@field LeftHand EnumItem @4
---@field RightHand EnumItem @5

---
---@class Enum.VideoQualitySettings
---@field LowResolution EnumItem @0
---@field MediumResolution EnumItem @1
---@field HighResolution EnumItem @2

---
---@class Enum.WaterDirection
---@field NegX EnumItem @0
---@field X EnumItem @1
---@field NegY EnumItem @2
---@field Y EnumItem @3
---@field NegZ EnumItem @4
---@field Z EnumItem @5

---
---@class Enum.WaterForce
---@field None EnumItem @0
---@field Small EnumItem @1
---@field Medium EnumItem @2
---@field Strong EnumItem @3
---@field Max EnumItem @4