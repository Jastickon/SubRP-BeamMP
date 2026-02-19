local test1 = createObject("TSStatic")
test1:setField("shapeName", 0, "/levels/west_coast_usa/art/shapes/objects/s_precast_wall_3x3.dae")
test1:setField("position", 0, "-712.764 105.044 118.651")
test1:setField("rotation", 0, "1 0 0 0")
test1:setField("collision", 0, "1")
test1:registerObject("Wall_test")
scenetree.MissionGroup:addObject(test1)


local wall = scenetree.findObjectByName("Wall_test")
wall:delete()


local invisibleWall = createObject("TSStatic")
invisibleWall:setField("shapeName", 0, "/levels/west_coast_usa/art/shapes/objects/s_precast_wall_3x3.dae")  -- модель стены
invisibleWall:setField("position", 0, "-712.764 105.044 118.651")  -- позиция
invisibleWall:setField("rotation", 0, "1 0 0 0")  -- без вращения
invisibleWall:setField("scale", 0, "1 1 1")  -- масштаб
invisibleWall:setField("collision", 0, "1")  -- включаем коллизию

invisibleWall:registerObject("InvisibleCollisionWall")
scenetree.MissionGroup:addObject(invisibleWall)





local invisibleWall = createObject("TSStatic")
invisibleWall:setField("shapeName", 0, "/levels/west_coast_usa/art/shapes/objects/s_precast_wall_3x3.dae")  -- модель стены
invisibleWall:setField("position", 0, "-712.764 105.044 118.651")  -- позиция
invisibleWall:setField("rotation", 0, "1 0 0 0")  -- без вращения
invisibleWall:setField("scale", 0, "1 1 1")  -- масштаб
invisibleWall:setField("collision", 0, "1")  -- включаем коллизию

invisibleWall:registerObject("InvisibleCollisionWall")
scenetree.MissionGroup:addObject(invisibleWall)




local obj = scenetree.findObjectById(57376)
obj:setField("position", 0, "-712.764 105.044 118.651")
obj:setField("collisionType", 0, "Visible Mesh")  -- Коллизия включена
obj:setField("castShadows", 0, "0")                 -- Выключение теней
obj:setField("visibility", 0, "0")

local obj = scenetree.findObjectById(57567)
obj:setField("collision", 0, "1")
obj:setField("hidden", 0, "1")



local obj = scenetree.findObjectById(57536)

-- Отключаем рендеринг
obj:setField("renderNormals", 0, "0")       -- Выключаем нормали
obj:setField("castShadows", 0, "0")         -- Отключаем тени
obj:setField("visibility", 0, "0")          -- Полная невидимость
obj:setField("renderMode", 0, "None")      -- Альтернативное отключение рендера

-- Включаем коллизию (если ещё не включена)
obj:setField("collisionType", 0, "Visible Mesh")  -- Или "Collision Mesh"

-- Принудительно обновляем (если изменения не применяются)
obj:postApply()






veh_id = 55479;

obj = be:getObjectByID(veh_id);
print(obj:getDynDataFieldbyName("licenseText", 0));

core_vehicles.setPlateText("Text", veh_id);

obj = be:getObjectByID(veh_id);
print(obj:getDynDataFieldbyName("licenseText", 0));





currVeh = be:getPlayerVehicle(0);
currVeh:queueLuaCommand("if VSubRPCore then VSubRPCore.sendDamage() end")




local invisibleWall = createObject("TSStatic")
invisibleWall:setField("shapeName", 0, "/levels/smallgrid/art/testing.dae")  -- модель стены
invisibleWall:setField("position", 0, "0 0 0")  -- позиция
invisibleWall:setField("rotation", 0, "1 0 0 0")  -- без вращения
invisibleWall:setField("scale", 0, "1 1 1")  -- масштаб
invisibleWall:setField("collision", 0, "1")  -- включаем коллизию

invisibleWall:registerObject("InvisibleCollisionWall")
scenetree.MissionGroup:addObject(invisibleWall)



local invisibleWall = createObject("TSStatic")
invisibleWall:setField("shapeName", 0, "/levels/west_coast_usa/art/shapes/objects/s_precast_wall_3x3.dae")  -- модель стены
invisibleWall:setField("position", 0, "0 0 0")  -- позиция
invisibleWall:setField("rotation", 0, "1 0 0 0")  -- без вращения
invisibleWall:setField("scale", 0, "1 1 1")  -- масштаб
invisibleWall:setField("collision", 0, "1")  -- включаем коллизию

invisibleWall:registerObject("InvisibleCollisionWall")
scenetree.MissionGroup:addObject(invisibleWall)





local marker =  createObject('TSStatic')
marker:setField('shapeName', 0, "art/shapes/interface/position_marker.dae")
marker:setPosition(vec3(0, 0, 0))
marker.scale = vec3(-536.167, 275.988, 103.791)
marker:setField('rotation', 0, '1 0 0 0')
marker.useInstanceRenderData = true
marker:setField('instanceColor', 0, '1 1 1 0')
marker:setField('collisionType', 0, "Collision Mesh")
marker:setField('decalType', 0, "Collision Mesh")
marker:setField('playAmbient', 0, "1")
marker:setField('allowPlayerStep', 0, "1")
marker:setField('canSave', 0, "0")
marker:setField('canSaveDynamicFields', 0, "1")
marker:setField('renderNormals', 0, "0")
marker:setField('meshCulling', 0, "0")
marker:setField('originSort', 0, "0")
marker:setField('forceDetail', 0, "-1")
marker.canSave = false
marker:registerObject("TEST")
scenetree.MissionGroup:addObject(marker)



local test1 = createObject("TSStatic")
test1:setField("shapeName", 0, "/levels/smallgrid/art/testing.dae")
test1:setField("position", 0, "0 0 0")
test1:setField("rotation", 0, "0 0 0 0")
test1:setField("dynamic", 0, "1")
test1:setField("forceDetail", 0, "-2")
test1:setField("collisionType", 0, "Visible Mesh")
test1:registerObject("Wall_test")
scenetree.MissionGroup:addObject(test1)

editor.rebuildCollision(true) -- Вызывает пролаг



test = test1:getID()
local obj = scenetree.findObjectById(test)
test1:setField("position", 0, "0 0 0")


local obj = scenetree.findObjectById(19752)
obj:setField("collisionType", 0, "Visible Mesh")
obj:setField("dynamic", 0, "0")
obj:setField("position", 0, "4 0 0")
obj:setField("dynamic", 0, "1")
obj:setField("collisionType", 0, "Visible Mesh")





test1:setField("forceDetail", 0, "-2")


local obj = scenetree.findObjectById(19322)
obj:setField("forceDetail", 0, "-2")


test1:setField("forceDetail", 0, "-2")






veh = be:getPlayerVehicle(0)
veh:queueLuaCommand([[
    local s = energyStorage.getStorages()
    local total_capacity = 0
    if (s) then
        for k, v in pairs(s) do
            if (v.energyType == 'gasoline' or v.energyType == 'diesel' or v.energyType == 'electricEnergy') then
                total_capacity = total_capacity + v.capacity
            end
        end
    end
    local fuelRatio = ]].. 10 ..[[ / total_capacity
    for k, v in pairs(s) do
        if (v.energyType == 'gasoline' or v.energyType == 'diesel' or v.energyType == 'electricEnergy') then
            v:setRemainingRatio(fuelRatio)
        end
    end
]])



local test1 = createObject("TSStatic")
test1:setField("shapeName", 0, "/levels/west_coast_usa/art/shapes/trees/spanishbayonet2.dae")
test1:setField("position", 0, "-613 219 115")
test1:setField("rotation", 0, "0 0 0 0")
test1:registerObject("Conanis")
scenetree.MissionGroup:addObject(test1)






core_camera.setByName(0, "orbit", true)



prevCamera = prevCamera or core_camera.getActiveCamName()
print(prevCamera)

core_camera.setByName(0, "external", true)


prevCamera = prevCamera or core_camera.getActiveCamName()
print(prevCamera)
core_camera.setByName(0, "external", true)
guihooks.trigger('ScenarioRealtimeDisplay', {msg = "scenarios.busRoutes.wait", context = {remaining=tostring(1)}})
core_camera.setByName(0, prevCamera, true)





spawn.teleportToLastRoad() -- чинит авто