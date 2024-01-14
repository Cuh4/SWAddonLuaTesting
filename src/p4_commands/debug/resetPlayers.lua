--------------------------------------------------------
-- [Commands] Debug - Reset Player Data
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This removes all players from the framework. Useful for reloading UI shown to a player when they join

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 14/01/2024

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
-- // register commands
AuroraFramework.services.commandService.create(function(player, command, args)
    for _, playerToRemove in pairs(AuroraFramework.services.playerService.getAllPlayers()) do
        AuroraFramework.services.playerService.internal.removePlayerData(playerToRemove.properties.peer_id)
    end
end, "removeplayers", {"rp"})