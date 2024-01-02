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
        Created: 28/12/2023

    ----------------------------
]]

-------------------------------
-- // Variables
-------------------------------
local logger = AuroraFramework.services.debuggerService.createLogger("Main", true)

-------------------------------
-- // Main
-------------------------------
AuroraFramework.ready:connect(function()
    logger:send(server.getPlayers())
end)