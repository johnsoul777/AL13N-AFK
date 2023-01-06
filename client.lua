local time = 30
local kickWarning = true

Citizen.CreateThread(function()
	while true do
		Wait(1000)
		local playerPed = PlayerPedId()
		if playerPed then
			CurrentPos = GetEntityCoords(playerPed, true)
			if CurrentPos == PrevPos then
				if time > 0 then
					if kickWarning and time <= 30 then
						AFKNotification(time)
					end
					time = time - 1
				else
					TriggerServerEvent("AL13N-AFK:afk")
				end
			else
				time = Config.timeAFK
			end
			PrevPos = CurrentPos
		end
	end
end)

function AFKNotification(time)
	lib.notify({
		title = 'AFK',
		description = Config.description .. ' ' .. time .. ' ' .. Config.seconds,
		position = 'bottom',
		style = {
			borderRadius = 5,
			backgroundColor = '#000000bf',
			color = 'white'
		},
		icon = 'ban',
		iconColor = '#C53030'
	})
end
