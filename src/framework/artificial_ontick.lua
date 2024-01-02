--------------------------------------------------------
-- [Main] Framework - Artificial onTick
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This tests if the framework's internal "artificialOnTick" event is working correctly.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 02/01/2024

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
AuroraFramework.ready:connect(function()
    mainLogger:send(server.getPlayers())
end)