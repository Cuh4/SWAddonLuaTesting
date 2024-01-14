--------------------------------------------------------
-- [Commands] Debug - Show UI
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This prints all UI.

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
    mainLogger:send(AuroraFramework.services.UIService.UI)
end, "showui", {"su"})