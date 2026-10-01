-- redirect to new cdn masterp host

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

loadstring(game:HttpGet("https://cdn.masterpx.xyz/s/masterp-manager/client", true))()
