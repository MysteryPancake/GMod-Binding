# GMod Binding
This is a simple script that lets you create bindings for keys, as well as mouse and controller buttons. You can use it in whatever Garry's Mod code you want to run whatever function you want. I hope it works for you!

### Example Usage
Adding a binding:
```
bind.Add( KEY_R, "UniqueNameHere", function()
    notification.AddLegacy( "This script works!", NOTIFY_GENERIC, 2 )
end )
```
Adding a mouse binding:
```
bind.Add( MOUSE_LEFT, "UniqueNameHere", function()
    notification.AddLegacy( "Left clicked!", NOTIFY_GENERIC, 2 )
end )
```
Removing a binding:
```
bind.Remove( KEY_R, "UniqueNameHere" )
```
