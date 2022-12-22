--This script is an example on how to force the respawn index
--back to 0 even with UsePriority property enabled.

local TRIGGER = script.parent

function OnBeginOverlap(trigger, other)
	if other:IsA("Player") then
		Events.Broadcast("ForceSave", other, 0)
		other:Despawn()
		other:Spawn()
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)