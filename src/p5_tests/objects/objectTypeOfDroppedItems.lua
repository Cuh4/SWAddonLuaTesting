--------------------------------------------------------
-- [Tests] Objects - Object Type of Dropped Items
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This finds out the object types of dropped items, like binoculars.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
AuroraFramework.callbacks.onEquipmentDrop.main:connect(function(_, object_id)
    local data = server.getObjectData(object_id)

    if not data then
        mainLogger:send("no object data!")
    end

    mainLogger:send(data)
end)