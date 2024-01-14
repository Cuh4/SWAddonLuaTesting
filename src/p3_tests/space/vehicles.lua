--------------------------------------------------------
-- [Main] Space - Vehicles
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This tests if Stormworks supports spawning vehicles in space.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 14/01/2024

    ----------------------------
]]

-------------------------------
-- // Variables
-------------------------------
g_savedata.count = g_savedata.count or 0

-------------------------------
-- // Main
-------------------------------
-- // register commands
-- print pos
AuroraFramework.services.commandService.create(function(player, command, args)
    local playerPos = player:getPosition()
    local playerPosFormatted = table.concat(table.pack(matrix.position(playerPos)), ", ")
    local playerSpacePosFormatted = table.concat(table.pack(matrix.position(server.getAstroPos(playerPos))), ", ")

    mainLogger:send(table.concat({
        "Normal Pos: "..playerPosFormatted,
        "Space Pos: "..playerSpacePosFormatted
    }, "\n"))
end, "printpos", {"p"})

-- teleport to space
AuroraFramework.services.commandService.create(function(player, command, args)
    local pos = matrix.translation(
        tonumber(args[1]) or 0,
        tonumber(args[2]) or 0,
        tonumber(args[3]) or 0
    )

    if not args[1] then
        pos = player:getPosition()
    end

    player:teleport(server.getAstroPos(pos))
end, "tp", {"t"})

-- spawn group
AuroraFramework.services.commandService.create(function(player, command, args)
    -- spawn group
    local pos = player:getPosition()

    local group = AuroraFramework.services.groupService.spawnGroup(
        AuroraFramework.libraries.matrix.offset(pos, 0, 0, 10),
        1
    )

    -- randomly move it around its spawn point
    AuroraFramework.services.timerService.loop.create(0.1, function(loop)
        -- check if group despawned
        if not AuroraFramework.services.groupService.getGroup(group.properties.group_id) then
            return loop:remove()
        end

        -- randomly teleport group
        group:teleport(
            AuroraFramework.libraries.matrix.randomOffset(pos, 100, true)
        )
    end)

    -- despawn the group after some time
    AuroraFramework.services.timerService.delay.create(5, function()
        group:despawn()
    end)
end, "spawn", {"s"})