# Garry's Mod Binding Module
This is a simple script that lets you create bindings for [keys](https://wiki.garrysmod.com/page/Enums/KEY), as well as [mouse](https://wiki.garrysmod.com/page/Enums/MOUSE) and [controller](https://wiki.garrysmod.com/page/Enums/JOYSTICK) buttons. 

Use it for whatever you want, and have fun!

## Example Usage
### Adding a binding:
```
bind.Add( KEY_R, "UNIQUE NAME", function()
    notification.AddLegacy( "This script works!", NOTIFY_GENERIC, 2 )
end )
```
### Adding a mouse binding:
```
bind.Add( MOUSE_LEFT, "UNIQUE NAME", function()
    notification.AddLegacy( "Left clicked!", NOTIFY_GENERIC, 2 )
end )
```
### Removing a binding:
```
bind.Remove( KEY_R, "UNIQUE NAME" )
```
### Printing all the bindings:
```
PrintTable( bind.GetTable() )
```

## Lite Version
For people who don't want an entire module just to bind a single key.
```
local FirstPressed = false

hook.Add( "Think", "CallBinding", function()
	local cache = input.IsButtonDown( SOME BUTTON )
	if cache and FirstPressed then
	    SOME CODE
	end
	FirstPressed = !cache
end )
```
