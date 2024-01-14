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
-- // Main
-------------------------------
---@param pos SWMatrix
local function formatPos(pos)
    return table.concat(
        table.pack(matrix.position(pos)),
        ", "
    )
end

---@param player af_services_player_player
AuroraFramework.services.playerService.events.onJoin:connect(function(player)
    -- Create UI
    local UI = AuroraFramework.services.UIService.createScreenUI(
        AuroraFramework.services.UIService.name("Position", player),
        "Setting up...",
        0.8,
        0,
        player
    )

    -- Update UI
    AuroraFramework.services.timerService.loop.create(0.01, function(loop)
        -- check if player left
        if not AuroraFramework.services.playerService.getPlayerByPeerID(player.properties.peer_id) then
            return loop:remove()
        end

        -- get player pos
        local playerPos = player:getPosition()
        local spacePlayerPos = server.getAstroPos(playerPos)

        -- update UI
        UI.properties.text = table.concat({
            "Space: "..formatPos(spacePlayerPos),
            "Normal: "..formatPos(playerPos)
        }, "\n")

        UI:refresh()
    end)
end)