local bind = { Bindings = {} }

function bind.Add( key, name, func )

	if !isfunction( func ) then return end
	if !isnumber( key ) then return end

	if bind.Bindings[ key ] == nil then
		bind.Bindings[ key ] = {}
	end

	bind.Bindings[ key ][ name ] = func

end

function bind.Remove( key, name )

	if !isnumber( key ) then return end
	if !bind.Bindings[ key ] then return end

	bind.Bindings[ key ][ name ] = nil

end

function bind.Get( key ) return bind.Bindings[ key ] end

local FirstPressed = {}

hook.Add( "Tick", "BadBinding", function()
	for key, tbl in pairs( bind.Bindings ) do
	    if input.IsKeyDown( key ) then
	    	for _, func in pairs( tbl ) do
	    		func( FirstPressed[ key ] )
	    	end
	    	FirstPressed[ key ] = false
	    else
	    	FirstPressed[ key ] = true
	    end
	end
end )
