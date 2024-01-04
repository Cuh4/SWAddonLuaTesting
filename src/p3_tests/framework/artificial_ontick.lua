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
-- // Variables
-------------------------------
local count = 0

-------------------------------
-- // Main
-------------------------------
-- if it stops counting up, it broke
AuroraFramework.ready:connect(function()
    local statusUI = AuroraFramework.services.UIService.createScreenUI(
        "ArtificialOnTickDisplay",
        "0",
        0,
        0.8
    )

    AuroraFramework.internal.artificialOnTick:connect(function()
        count = count + 1

        statusUI.properties.text = count
        statusUI:refresh()
    end)
end)