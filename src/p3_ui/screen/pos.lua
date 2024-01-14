--------------------------------------------------------
-- [UI] Screen - Position
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        UI that shows your position.

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
local function formatPos(pos)
    return table.concat(
        table.pack(matrix.position(pos)),
        ", "
    )
end

-------------------------------
-- // Main
-------------------------------
-- Create UI on player join
---@param player af_services_player_player
AuroraFramework.services.playerService.events.onJoin:connect(function(player)
    -- Create UI
    AuroraFramework.services.UIService.createScreenUI(
        AuroraFramework.services.UIService.name("Position", player),
        "Setting up...",
        0.8,
        0,
        player
    )
end)

-- Update UI
AuroraFramework.services.timerService.loop.create(0.01, function()
    for _, player in pairs(AuroraFramework.services.playerService.getAllPlayers()) do
        -- get ui
        local UI = AuroraFramework.services.UIService.getScreenUI(AuroraFramework.services.UIService.name("Position", player))

        if not UI then
            goto continue
        end

        -- get player pos
        local playerPos = player:getPosition()
        local spacePlayerPos = server.getAstroPos(playerPos)

        -- update UI
        UI.properties.text = table.concat({
            "Space:\n"..formatPos(spacePlayerPos),
            "---",
            "Normal:\n"..formatPos(playerPos),
            "---",
            AuroraFramework.libraries.miscellaneous.switchbox("In Space", "In Gravity", isInSpace(playerPos))
        }, "\n")

        UI:refresh()

        ::continue::
    end
end)