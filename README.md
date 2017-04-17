# GMod-Binding
A simple script that allows Lua key binds (in a very bad way). Use it in whatever Garry's Mod scripts you want.

### Example Usage
```
bind.Add( KEY_R, "SomeNameHere", function( FirstPressed )
    if FirstPressed then
        notification.AddLegacy( "This script works!", NOTIFY_GENERIC, 2 )
    end
end )
```
