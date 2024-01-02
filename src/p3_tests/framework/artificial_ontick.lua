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
local statusUI = AuroraFramework.services.UIService.createScreenUI(
    "ArtificialOnTickDisplay",
    "Working",
    0,
    0.8
)

local recent = server.getTimeMillisec()

AuroraFramework.internal.artificialOnTick:connect(function()
    local now = server.getTimeMillisec()

    statusUI.properties.text = ("Last updated:\n%.5f ms ago"):format(now - recent)

    recent = now
end)