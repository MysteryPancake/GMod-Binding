# Garry's Mod Binding Module
This is a simple script that lets you create bindings for [keys](https://wiki.garrysmod.com/page/Enums/KEY), as well as [mouse](https://wiki.garrysmod.com/page/Enums/MOUSE) and [controller](https://wiki.garrysmod.com/page/Enums/JOYSTICK) buttons. You can use it in whatever Garry's Mod code you want. Have fun!

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
