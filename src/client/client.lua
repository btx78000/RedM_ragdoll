local ragdoll = false;

RegisterCommand("ragdoll", function(source, args, rawCommand)
    toggleRagdoll()
end, false)

function toggleRagdoll()
	ragdoll = not ragdoll;
	if not ragdoll then
	end
end

function makeRagdoll()
	SetPedToRagdoll(PlayerPedId(), 2000, 2000, 0, 0, 0, 0)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
       if IsControlJustPressed(0, 0x3C3DD371) then
			toggleRagdoll();
		end
		if ragdoll then
			makeRagdoll()
		end
    end
end)