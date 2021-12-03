RegisterServerEvent('vRP:discordServer')
AddEventHandler('vRP:discordServer', function()
    local user_id = vRP.getUserId(source)
    local name = vRP.getPlayerName(source)
    local job = vRP.getUserGroupByType(user_id,'job')
	TriggerClientEvent('vRP:discordClient', source, user_id, name, job)
end)


RegisterNetEvent("discord")
AddEventHandler("discord",function()
    local num = GetNumPlayerIndices()
    TriggerClientEvent('getOnlinePlyDiscord',-1,num)
end)
