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
    [6765805766]    = "BLOCKSPIN",
    [4658598196]    = "AOTR",
    [10200395747]   = "GROWAGARDEN2",
    [5750914919]    = "FISCH",
}

local gameName = games[gameId]

if not gameName then return end

local url = string.format(
    "https://raw.githubusercontent.com/Achitsak/masterp-manager/main/loader/profiles/%s.lua",
    gameName
)

local ok, err = pcall(function()
    loadstring(game:HttpGet(url))()
end)
