-- [[ 

███╗   ███╗ █████╗ ███████╗████████╗███████╗██████╗ ██████╗ 
████╗ ████║██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗██╔══██╗
██╔████╔██║███████║███████╗   ██║   █████╗  ██████╔╝██████╔╝
██║╚██╔╝██║██╔══██║╚════██║   ██║   ██╔══╝  ██╔══██╗██╔═══╝ 
██║ ╚═╝ ██║██║  ██║███████║   ██║   ███████╗██║  ██║██║     
╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     
                                                            
]]


repeat task.wait(1+1) until game:IsLoaded()

local gameId = game.GameId
local gameMap = {
    [994732206]     = "BLOXFRUIT",
}

local gameName = games[gameId]

if not gameName then return end

local url = string.format("https://raw.githubusercontent.com/Achitsak/masterp-manager/main/loader/services/profiles/%s.lua",gameName)

local ok, err = pcall(function()
    loadstring(game:HttpGet(url))()
end)
