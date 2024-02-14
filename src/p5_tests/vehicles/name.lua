--------------------------------------------------------
-- [Tests] Vehicles - Name
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        Tests if the devs added a way to get a name of a vehicle with the v1.10.3 update.
        The update brings a map icon block which has a property called "Display Name" (something like that).
        This property is used as the name of the vehicle to show on the map.
        This code simply finds out if theres any undocumented returns that provide the name from a vehicle that has one of these blocks.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting

    ----------------------------
]]

-------------------------------
-- // Main
-------------------------------
---@param vehicle af_services_vehicle_vehicle
AuroraFramework.services.vehicleService.events.onLoad:connect(function(vehicle)
    local components = vehicle:getVehicleComponents()
    local data = vehicle:getVehicleData()

    mainLogger:send("VEHICLE #"..vehicle.properties.vehicle_id)
    mainLogger:send(components)
    mainLogger:send(data)
end)