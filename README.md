# Garry's Mod Binding
This is a simple script that lets you create bindings for [keys](https://wiki.garrysmod.com/page/Enums/KEY), as well as [mouse](https://wiki.garrysmod.com/page/Enums/MOUSE) and [controller](https://wiki.garrysmod.com/page/Enums/JOYSTICK) buttons.  
It only works clientside, since on serverside you can use [the numpad library](http://wiki.garrysmod.com/page/Category:numpad).

Use it for whatever you want, and have fun!

## Example Usage
### Adding a binding:
```
bind.Add( KEY_R, "<UNIQUE_NAME>", function()
    notification.AddLegacy( "This script works!", NOTIFY_GENERIC, 2 )
end )
```
### Adding a mouse binding:
```
bind.Add( MOUSE_LEFT, "<UNIQUE_NAME>", function()
    notification.AddLegacy( "Left clicked!", NOTIFY_GENERIC, 2 )
end )
```
### Removing a binding:
```
bind.Remove( KEY_R, "<UNIQUE_NAME>" )
```
### Printing all the bindings:
```
PrintTable( bind.GetTable() )
```

## Lite Version
For people who only want to bind a single key.
```
local FirstPressed = false

hook.Add( "Think", "CallBinding", function()
	local cache = input.IsButtonDown( <BUTTON> )
	if cache and FirstPressed then
		<CODE>
	end
	FirstPressed = !cache
end )
```
