--------------------------------------------------------
-- [Priority] Setup
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
-- // Setup
-------------------------------
-- Create logger
mainLogger = AuroraFramework.services.debuggerService.createLogger("Main", false)