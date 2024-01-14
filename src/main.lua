--------------------------------------------------------
-- [Main] SW Addon Lua Testing
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This addon mainly tests my framework @ https://github.com/Cuh4/AuroraFramework, as well as the game's addon API.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 14/01/2024

    ----------------------------
]]

-------------------------------
-- // Functions
-------------------------------
---@param pos SWMatrix
function isInSpace(pos)
    return pos[14] >= 160000
end