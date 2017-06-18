# Garry's Mod Binding Module
This is a simple script that lets you create bindings for [keys](https://wiki.garrysmod.com/page/Enums/KEY), as well as [mouse](https://wiki.garrysmod.com/page/Enums/MOUSE) and [controller](https://wiki.garrysmod.com/page/Enums/JOYSTICK) buttons. 

You can use it for whatever you want. Have fun!

## Example Usage
#### Adding a binding:
```
bind.Add( KEY_R, "UniqueNameHere", function()
    notification.AddLegacy( "This script works!", NOTIFY_GENERIC, 2 )
end )
```
#### Adding a mouse binding:
```
bind.Add( MOUSE_LEFT, "UniqueNameHere", function()
    notification.AddLegacy( "Left clicked!", NOTIFY_GENERIC, 2 )
end )
```
#### Removing a binding:
```
bind.Remove( KEY_R, "UniqueNameHere" )
```
#### Printing all the bindings:
```
PrintTable( bind.GetTable() )
```

## Lite Version
For people who don't want an entire module just to bind a single key.
```
local FirstPressed = false

hook.Add( "Think", "CallBinding", function()
	local cache = input.IsButtonDown( btn ) -- Put a button here
	if cache and FirstPressed then
	    -- Run something here
	end
	FirstPressed = !cache
end )
```
