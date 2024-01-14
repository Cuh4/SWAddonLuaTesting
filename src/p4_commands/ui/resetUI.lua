--------------------------------------------------------
-- [Commands] UI - Reset UI
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This removes all UI from the framework.

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
    for uiCategory, _ in pairs(AuroraFramework.services.UIService.UI) do
        AuroraFramework.services.UIService.UI[uiCategory] = {}
    end

    for uiCategory, _ in pairs(g_savedata.AuroraFramework.UI) do
        g_savedata.AuroraFramework.UI[uiCategory] = {}
    end

    for i = 0, 100000 do
        server.removeMapID(-1, i)
        server.removePopup(-1, i)
    end
end, "resetui", {"ru"})