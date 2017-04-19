local hook = hook
local input = input
local pairs = pairs
local isfunction = isfunction
local isnumber = isnumber

module( "bind" )

local Bindings = {}

--[[---------------------------------------------------------
    bind.GetTable()
    Returns a table of all bindings.
-----------------------------------------------------------]]
function GetTable() return Bindings end

--[[---------------------------------------------------------
    bind.Add( number button, any identifier, function func )
    Add a binding to run when the button is pressed.
-----------------------------------------------------------]]
function Add( btn, name, func )

	if !isfunction( func ) then return end
	if !isnumber( btn ) then return end

	if Bindings[ btn ] == nil then
		Bindings[ btn ] = {}
	end

	Bindings[ btn ][ name ] = func

end

--[[---------------------------------------------------------
    bind.Remove( number button, any identifier )
    Removes the binding with the given identifier.
-----------------------------------------------------------]]
function Remove( btn, name )

	if !isnumber( btn ) then return end
	if !Bindings[ btn ] then return end

	Bindings[ btn ][ name ] = nil

end

local FirstPressed = {}

hook.Add( "Tick", "CallBindings", function()
	for btn, tbl in pairs( Bindings ) do
		local cache = input.IsButtonDown( btn )
		if cache and FirstPressed[ btn ] then
			for _, func in pairs( tbl ) do func() end
		end
		FirstPressed[ btn ] = !cache
	end
end )
