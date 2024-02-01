--------------------------------------------------------
-- [Tests] Framework - Map LAbels
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This tests if the framework's UI service's map labels works correctly.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 01/02/2024

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
AuroraFramework.ready:connect(function()
    local start = matrix.translation(100, 0, 100)

    for i = 1, 100 do
        start = AuroraFramework.libraries.matrix.offset(start, 0, 0, i * 50)

        AuroraFramework.services.UIService.createMapLabel(
            "mapLabelType"..i,
            "Type "..i,
            start,
            i
        )
    end
end)