--------------------------------------------------------
-- [Main] Framework - Classes
--------------------------------------------------------

--[[
    ----------------------------

    INFO:
        This tests if the framework's internal class library works correctly.

    CREDIT:
        Author: @cuh6_ (Discord)
        GitHub Repository: https://github.com/Cuh4/SWAddonLuaTesting
        Created: 02/01/2024

    ----------------------------
]]

-------------------------------
-- // Lua LSP Diagnostics
-------------------------------
---@diagnostic disable assign-type-mismatch

-------------------------------
-- // Intellisense
-------------------------------
---@class myClass: af_libs_class_class
_ = {
    __name__ = "something",

    properties = {
        someProperty = true
    },

    ---@param self myClass
    getName = function(self) end
}

-------------------------------
-- // Variables
-------------------------------
---@type myClass
local myClass = AuroraFramework.libraries.class.create(
    "something",

    {
        ---@param self myClass
        getName = function(self)
            return self.__name__
        end
    },

    {
        someProperty = true
    }
)

-------------------------------
-- // Main
-------------------------------
mainLogger:send(("class.__name__ == 'something' - %s"):format(
    AuroraFramework.libraries.class.is(myClass, "something")
))

mainLogger:send(("class:getName() - %s"):format(
    myClass:getName()
))

mainLogger:send({
    "class",
    myClass   
})