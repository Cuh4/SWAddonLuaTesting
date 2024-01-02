--------------------------------------------------------
-- [Main] Players - Player List
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This prints out all players in the server when the addon starts.
        This is simply to see all player attributes.

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