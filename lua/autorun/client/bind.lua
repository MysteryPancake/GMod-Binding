local hook = hook
local input = input
local pairs = pairs
local isfunction = isfunction
local isnumber = isnumber

module( "bind" )

local Bindings = {}

function GetTable() return Bindings end

function Add( key, name, func )

	if !isfunction( func ) then return end
	if !isnumber( key ) then return end

	if Bindings[ key ] == nil then
		Bindings[ key ] = {}
	end

	Bindings[ key ][ name ] = func

end

function Remove( key, name )

	if !isnumber( key ) then return end
	if !Bindings[ key ] then return end

	Bindings[ key ][ name ] = nil

end

local FirstPressed = {}

hook.Add( "Tick", "CallBindings", function()
	for key, tbl in pairs( Bindings ) do
		if input.IsButtonDown( key ) then
			if FirstPressed[ key ] then
				for _, func in pairs( tbl ) do func() end
				FirstPressed[ key ] = false
			end
		else
			FirstPressed[ key ] = true
		end
	end
end )
