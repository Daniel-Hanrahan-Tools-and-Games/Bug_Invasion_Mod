local ModPlayer = {
	extends = CharacterBody2D,
	
	-- Physics variables
	dblSpeed = 200,
	
	-- Runtime state
	velocity = Vector2.ZERO,
}

function ModPlayer:_ready()
	-- Initialization logic here if needed
end

function ModPlayer:_physics_process(delta)

	-- Horizontal Movement
	if Input:is_action_pressed("Right") then
		self.velocity = Vector2(self.dblSpeed, self.velocity.y)
	elseif Input:is_action_pressed("Left") then
		self.velocity = Vector2(-self.dblSpeed, self.velocity.y)
	-- Vertical Movement
	elseif Input:is_action_pressed("Up") then
		self.velocity = Vector2(self.velocity.x, -self.dblSpeed)
	elseif Input:is_action_pressed("Down") then
		self.velocity = Vector2(self.velocity.x, self.dblSpeed)
	-- what happens when no movement buttons are pressed
	else
		self.velocity = Vector2(0, 0)
	end

	-- Move player
	self:move_and_slide()
	
end

return ModPlayer
