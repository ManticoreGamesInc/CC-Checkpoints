local DAMAGEABLE = script:GetCustomProperty("Damageable"):WaitForObject()

local function OnDeadEvent(obj, damage)
	if damage.sourcePlayer then
		Events.Broadcast("Crate Destroyed", damage.sourcePlayer)
	end
end

DAMAGEABLE.diedEvent:Connect(OnDeadEvent)