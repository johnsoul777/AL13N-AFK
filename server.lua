RegisterServerEvent("AL13N-AFK:afk", function()
	if not Config.licenseID[GetPlayerIdentifier(source, 0)] then
		DropPlayer(source, Config.msgKickAss)
	end
end)
