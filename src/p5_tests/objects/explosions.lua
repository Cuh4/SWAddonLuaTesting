--------------------------------------------------------
-- [Tests] Objects - Explosions
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        Tests out how explosions are like at different magnitudes

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
AuroraFramework.services.commandService.create(function(player, command, args)
    if not args[1] then
        command:failureNotification("missing magnitude", player)
        return
    end

    local mag = tonumber(args[1])

    if not mag then
        command:failureNotification("invalid arg", player)
        return
    end

    server.spawnExplosion(player:getPosition(), mag)
    command:successNotification("spawned explosion", player)
end, "explosion", {"ex"})