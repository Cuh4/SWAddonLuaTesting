--------------------------------------------------------
-- [Commands] Debug - ENV
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This prints a part of _ENV.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 14/01/2024

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
-- // register commands
AuroraFramework.services.commandService.create(function(player, command, args)
    local paths = AuroraFramework.libraries.miscellaneous.splitString(args[1] or "", ".")
    local point = _ENV

    for _, path in pairs(paths) do
        point = point[path]
    end

    if not point then
        command:failureNotification("invalid path", player)
        return
    end

    local formatted = tostring(point)

    if type(point) == "table" then
        formatted = AuroraFramework.libraries.miscellaneous.tableToString(point)
    end

    command:successNotification(
        "check chat/debugview",
        player
    )

    mainLogger:send("------------------\n_ENV - command result\n------------------\n"..formatted)
end, "_ENV", {"e", "env"})