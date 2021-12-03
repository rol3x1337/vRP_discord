

local buttons = {
    {' 🛡️ - Alatura-te ', 'fivem://connect/cfx.re/navem'}, -- cfx-ul pt. join
    {' 🌍 - Discord ', 'https://dsc.gg/x'} -- discord link
}


Citizen.CreateThread(function()
    while true do
        TriggerServerEvent('vRP:discordServer')
        Wait(5 * 60 * 1000)
    end
end)


numar = 0
local function richPresance(user_id, job, name)
    while true do
        Citizen.Wait(5000)
        if numar == 0 then
			SetRichPresence('Fondatori: XYZ')
			numar = 1
        elseif numar == 1 then
            SetRichPresence('Developer: XYZ') 
			numar = 2
        elseif numar == 2 then
            SetRichPresence(name..'['..user_id..'] - '..job..'🖥️')  
			numar = 0
		end
	end
end



RegisterNetEvent('getOnlinePlyDiscord')
AddEventHandler('getOnlinePlyDiscord', function(connectedPlayers)
    onlinePlayers = connectedPlayers
end)

onlinePlayers = 0
Citizen.CreateThread(function()
    for k, v in pairs(buttons) do
        SetDiscordRichPresenceAction((k-1), v[1], v[2])
        SetDiscordRichPresenceAction((k-1), v[1], v[2])
    end
    while true do
        TriggerServerEvent("discord")
        Wait(30000)
    end
end)


RegisterNetEvent('vRP:discordClient')
AddEventHandler('vRP:discordClient', function(user_id, name, job)
    SetDiscordAppId(id app)-- Discord app ID
    SetDiscordRichPresenceAsset('x') -- PNG big
    SetDiscordRichPresenceAssetText('Online '..onlinePlayers..'/128') -- PNG text desc
    SetDiscordRichPresenceAssetSmall('x') -- PNG small
    SetDiscordRichPresenceAssetSmallText('descriere poza mica') -- PNG text desc2
    SetDiscordRichPresenceAction(0, "🌍 - Discord", "https://dsc.gg/x")  -- discord-ul
    SetDiscordRichPresenceAction(1, "🛡️ - Alatura-te", "fivem://connect/cfx.re/navem")  -- cfx-ul pt. join
    richPresance(user_id, name, job)
end)
