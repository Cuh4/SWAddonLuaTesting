--------------------------------------------------------
-- [Tests] Framework - Communication
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This tests if the framework's communication service works correctly.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 02/01/2024

    ----------------------------
]]

-------------------------------
-- // Variables
-------------------------------
local channel = AuroraFramework.services.communicationService.createChannel("Testing")

-------------------------------
-- // Main
-------------------------------
-- listen for messages sent by this addon and other addons
channel:listen(true, function(data, addonIndex)
    mainLogger:send(("(me + other) Received message from addon #%s. I am addon #%s"):format(addonIndex, AuroraFramework.attributes.AddonIndex))
end)

-- listen for messages only sent by other addons
channel:listen(false, function(data, addonIndex)
    mainLogger:send(("(other) Received message from addon #%s. I am addon #%s"):format(addonIndex, AuroraFramework.attributes.AddonIndex))
end)

-- send something random
channel:send("hello")