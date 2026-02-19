log_debug("Запуск system/MapData.lua")

MP.RegisterEvent("TriggerSubRPcreate_object_fid", "create_object_fid")

map_items = {}

function create_object_fid(user_id, data_json)
    local data = json.decode(data_json)
    print(data)
    if map_items[user_id] and map_items[user_id][data.server_id] then
        map_items[user_id][data.server_id].id = data.client_id
        print(data.client_id)
        print(data.server_id)
    end
end

function create_object(object_dir, name, pos, rot)
    local seed = os.time() * 1000 + (os.clock() * 1000) % 1000
    math.randomseed(seed)
    local object_id = math.random(100000, 999999)

    print(object_id)
    for user_id, nick in pairs(MP.GetPlayers()) do
        if not map_items[user_id] then
            map_items[user_id] = {}
        end
        
        map_items[user_id][object_id] = {
            model = object_dir,
            position = pos,
            rotation = rot,
            name = name,
            created = os.date()
        }
        local data = {
            id = object_id,
            dir = object_dir,
            name = name,
            pos = tostring(pos[1] .. " " .. pos[2] .. " " .. pos[3]),
            rot = tostring(rot[1] .. " " .. rot[2] .. " " .. rot[3] .. " " .. rot[4])
        }
        MP.TriggerClientEvent(user_id, "Clientcreate_object", json.encode(data))
    end
    return object_id
end


-- 808998: [[table: 0x72f0300cb990]]: {
-- 		position: [[table: 0x72f038026510]]: {
-- 			1: -481.786,
-- 			2: 114.768,
-- 			3: 100.518,
-- 		},
-- 		model: "/levels/west_coast_usa/art/shapes/trees/spanishbayonet2.dae",
-- 		id: 369803,
-- 		rotation: [[table: 0x72f03009a310]]: {
-- 			1: 0,
-- 			2: 0,
-- 			3: 0,
-- 			4: 0,
-- 		},
-- 		created: "Wed Jul 23 14:11:05 2025",
-- 		name: "test",
-- 	},

function remove_object(object_id)
    for user_id, objects in pairs(map_items) do


        if objects[object_id] then
            print("Object found for user: " .. user_id)
            local id = objects[object_id].id
            objects[object_id] = nil
            MP.TriggerClientEvent(user_id, "Clientremove_object", json.encode({id = id}))
        end

    end
end

function replace_object(object_dir, id)
    for user_id, objects in pairs(map_items) do
        if objects[id] then
            objects[id].model = object_dir
            break
        end
    end
end

function move_object(id, pos, rot)
    for user_id, objects in pairs(map_items) do
        if objects[id] then
            objects[id].position = pos
            objects[id].rotation = rot

            break
        end
    end
end

function sunc_object()

end