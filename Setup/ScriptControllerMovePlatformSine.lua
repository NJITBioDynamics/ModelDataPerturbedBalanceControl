-- SCONE script that simulates a device that generates an external moment at a specific condition.
-- See Tutorial 6b - Script - Balance Device

--local io = require "io"

-- position: mag * (cos (2 pi time / period) - 1)
-- velocity: mag * 2 pi / period * sin ( 2 pi time / period)
period = 1
mag = 0.080  	-- this is where you set the perturbation magnitude for each simulation

function init( model, par, side )
	
end

function update( model )
	
	ctime = model:time()
	--scone.debug("dt: "..dt)
	
	local move_vel = mag * 2.0 * math.pi / period * math.sin(2.0 * math.pi * ctime / period)
	local v = vec3:new(move_vel, 0.0, 0.0 )
	model:ground_body():set_lin_vel(v)
	
	--local p = vec3:new(move, -1, 0 )
	--scone.debug("p[0] "..p[0])
	--model:ground_body():set_com_pos( p )
	
	-- return false to keep going
	return false;
	
end

