# Roblox EmmyLua API
Simple repository with the Roblox Lua API declared in documented files, with EmmyLua's format in mind. Should be somewhat compatible with LuaDoc and LDoc as well.

# Update Instructions

### Get the most updated API file

https://github.com/RobloxAPI/archive/tree/master/data/api-dump/txt

### Apply regex

#### Create class declaractions

```
^(?:Class) (\w+(?: : \w+)?).*
\n---\n---@class $1
```

#### Create enum declarations

```
^(?:Enum) (\w+)
\n---\n---@class Enum.$1
```

#### Remove default values from optional parameters


```
 = ([^,\n)])*
(EMPTY STRING)
```

#### Remove function tags, such as read-only.

```
 \[.*
(EMPTY STRING)
```

#### Convert function parameters

```
(\w+) (\w+)([\),])
$2:$1$3
```

#### Convert functions

```
`^\t(?:Yield)?Function (\w+) (\w+)\:(\w+)\((.*)\)
---@field $3 fun(self:$2, $4):$1
```

#### Fix functions with no arguments

```
`, \)
)
```

#### Convert properties

```
`^\s+Property (\w+) (?:\w+)\.(\w+)
---@field $2 $1
```

#### Convert events

```
`^\s+Event (?:\w+\.)(\w+)(.*)
---@field $1 fun$2:Event
```

#### Convert callbacks

```
`^\s+Callback (\w+) (?:\w+\.)(\w+)(.*)
---@field $2 fun$3:$1
```

#### Convert enums

```
`^\s+EnumItem (?:\w+\.)(\w+) : (.*)
---@field $1 EnumItem @$2
```

#### Remove lowercase fields

###### Match case must be enabled
###### Execute it a few times

```
^---@field [a-z]\w+.*$\n

```