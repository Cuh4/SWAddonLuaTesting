--------------------------------------------------------
-- [Commands] Debug - Show Players
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This prints all recognized players

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
    mainLogger:send(AuroraFramework.services.playerService.getAllPlayers())
end, "showplayers", {"sp"})