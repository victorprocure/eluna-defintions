---@meta
---@class WorldObject:Object
WorldObject = {}

---Returns the angle between this WorldObject and another WorldObject or a point.
---@param obj WorldObject
---@return number angle Angle in radians in range 0..2*pi
function WorldObject:GetAngle(obj) end

---Returns the angle between this WorldObject and another WorldObject or a point.
---@param x number
---@param y number
---@return number angle Angle in radians in range 0..2*pi
function WorldObject:GetAngle(x, y) end

---Returns the current area ID of the WorldObject
---@return number areaId
function WorldObject:GetAreaId() end

---Returns a table of Creature objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@return table creatureIsInRange
function WorldObject:GetCreaturesInRange(range) end

---Returns a table of Creature objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@return table creatureIsInRange
function WorldObject:GetCreaturesInRange(range, entryId) end

---Returns a table of Creature objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return table creatureIsInRange
function WorldObject:GetCreaturesInRange(range, entryId, hostile) end

---Returns a table of Creature objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@param dead 0|1|2
---@return table creatureIsInRange
function WorldObject:GetCreaturesInRange(range, entryId, hostile, dead) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param obj WorldObject
---@return number distance
function WorldObject:GetDistance(obj) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param x number
---@param y number
---@param z number
---@return number distance
function WorldObject:GetDistance(x, y, z) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param obj WorldObject
---@return number distance
function WorldObject:GetDistance2d(obj) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param x number
---@param y number
---@return number distance
function WorldObject:GetDistance2d(x, y) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param obj WorldObject
---@return number distance
function WorldObject:GetExactDistance(obj) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 3d space.
---@param x number
---@param y number
---@param z number
---@return number distance
function WorldObject:GetExactDistance(x, y, z) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param obj WorldObject
---@return number distance
function WorldObject:GetExactDistance2d(obj) end

---Returns the distance from this WorldObject to another WorldObject, or from this WorldObject to a point in 2d space.
---@param x number
---@param y number
---@return number distance
function WorldObject:GetExactDistance2d(x, y) end

---Returns a table of GameObject objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@return table gameObjectsInRange
function WorldObject:GetGameObjectsInRange(range) end

---Returns a table of GameObject objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@return table gameObjectsInRange
function WorldObject:GetGameObjectsInRange(range, entryId) end

---Returns a table of GameObject objects in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return table gameObjectsInRange
function WorldObject:GetGameObjectsInRange(range, entryId, hostile) end

---Returns the current instance ID of the WorldObject
---@return number instanceId
function WorldObject:GetInstanceId() end

---Returns the coordinates and orientation of the WorldObject
---@return {x: number, y: number, z: number, o:number }
function WorldObject:GetLocation() end

---Returns the current Map object of the WorldObject
---@return Map mapObject
function WorldObject:GetMap() end

---Returns the current map ID of the WorldObject
---@return number mapId
function WorldObject:GetMapId() end

---Returns the name of the WorldObject
---@return string name
function WorldObject:GetName() end

---Returns the nearest Creature object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@return Creature
function WorldObject:GetNearestCreature(range) end

---Returns the nearest Creature object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@return Creature
function WorldObject:GetNearestCreature(range, entryId) end

---Returns the nearest Creature object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return Creature
function WorldObject:GetNearestCreature(range, entryId, hostile) end

---Returns the nearest Creature object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@param dead number
---@return Creature
function WorldObject:GetNearestCreature(range, entryId, hostile, dead) end

---Returns the nearest GameObject object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@return GameObject
function WorldObject:GetNearestGameObject(range) end

---Returns the nearest GameObject object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@return GameObject
function WorldObject:GetNearestGameObject(range, entryId) end

---Returns the nearest GameObject object in sight of the WorldObject or within the given range and/or with a specific entry ID
---@param range number
---@param entryId number
---@param hostile number
---@return GameObject
function WorldObject:GetNearestGameObject(range, entryId, hostile) end

---Returns the nearest Player object in sight of the WorldObject or within the given range
---@param range number
---@return Player
function WorldObject:GetNearestPlayer(range) end

---Returns the nearest Player object in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@return Player
function WorldObject:GetNearestPlayer(range, hostile) end

---Returns the nearest Player object in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@param dead number
---@return Player
function WorldObject:GetNearestPlayer(range, hostile, dead) end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@return WorldObject
function WorldObject:GetNearObject(range) end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@return WorldObject
function WorldObject:GetNearObject(range, type) end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@return WorldObject
function WorldObject:GetNearObject(range, type, entry) end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@return WorldObject
function WorldObject:GetNearObject(range, type, entry, hostile) end

---Returns nearest WorldObject in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@param dead number
---@return WorldObject
function WorldObject:GetNearObject(range, type, entry, hostile, dead) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@return table worldObjectList
function WorldObject:GetNearObjects(range) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@return table worldObjectList
function WorldObject:GetNearObjects(range, type) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@return table worldObjectList
function WorldObject:GetNearObjects(range, type, entry) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@return table worldObjectList
function WorldObject:GetNearObjects(range, type, entry, hostile) end

---Returns a table of WorldObjects in sight of the WorldObject. The distance, type, entry and hostility requirements the WorldObject must match can be passed.
---@param range number
---@param type TypeMask
---@param entry number
---@param hostile number
---@param dead number
---@return table worldObjectList
function WorldObject:GetNearObjects(range, type, entry, hostile, dead) end

---Returns the current orientation of the WorldObject
---@return number orientation
function WorldObject:GetO() end

---Returns the current phase of the WorldObject
---@return number phase
function WorldObject:GetPhaseMask() end

---Returns a table of Player objects in sight of the WorldObject or within the given range
---@param range number
---@return table playersInRange
function WorldObject:GetPlayersInRange(range) end

---Returns a table of Player objects in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@return table playersInRange
function WorldObject:GetPlayersInRange(range, hostile) end

---Returns a table of Player objects in sight of the WorldObject or within the given range
---@param range number
---@param hostile number
---@param dead number
---@return table playersInRange
function WorldObject:GetPlayersInRange(range, hostile, dead) end

---Returns the x, y and z of a point dist away from the WorldObject.
---@param distance number
---@param angle number
---@return {x:number, y:number, z:number}
function WorldObject:GetRelativePoint(distance, angle) end

---Returns the current X coordinate of the WorldObject
---@return number
function WorldObject:GetX() end

---Returns the current Y coordinate of the WorldObject
---@return number
function WorldObject:GetY() end

---Returns the current Z coordinate of the WorldObject
---@return number
function WorldObject:GetZ() end

---Returns the current zone ID of the WorldObject
---@return number zoneId
function WorldObject:GetZoneId() end

---Returns true if the target is in the given arc behind the WorldObject
---@param target WorldObject
---@return boolean
function WorldObject:IsInBack(target) end

---Returns true if the target is in the given arc behind the WorldObject
---@param target WorldObject
---@param arc number
---@return boolean
function WorldObject:IsInBack(target, arc) end

---Returns true if the target is in the given arc behind the WorldObject
---@param target WorldObject
---@return boolean
function WorldObject:IsInFront(target) end

---Returns true if the target is in the given arc behind the WorldObject
---@param target WorldObject
---@param arc number
---@return boolean
function WorldObject:IsInFront(target, arc) end

---Returns true if the WorldObjects are on the same map
---@param worldobject WorldObject
---@return boolean
function WorldObject:IsInMap(worldobject) end

---Returns true if the target is within given range
---@param target WorldObject
---@param minrange number
---@param maxrange number
---@return boolean
function WorldObject:IsInRange(target, minrange, maxrange) end

---Returns true if the target is within given range
---@param target WorldObject
---@param minrange number
---@param maxrange number
---@param is3D boolean
---@return boolean
function WorldObject:IsInRange(target, minrange, maxrange, is3D) end

---Returns true if the point is within given range
---@param x number
---@param y number
---@param minrange number
---@param maxrange number
---@return boolean
function WorldObject:IsInRange2d(x, y, minrange, maxrange) end

---Returns true if the point is within given range
---@param x number
---@param y number
---@param z number
---@param minrange number
---@param maxrange number
---@return boolean
function WorldObject:IsInRange3d(x, y, z, minrange, maxrange) end

---Returns true if the target is in the given distance of the WorldObject
---@param target WorldObject
---@param distance number
---@return boolean
function WorldObject:IsWithinDist(target, distance) end

---Returns true if the target is in the given distance of the WorldObject
---@param target WorldObject
---@param distance number
---@param is3D boolean
---@return boolean
function WorldObject:IsWithinDist(target, distance, is3D) end

---Returns true if the point is in the given distance of the WorldObject
---@param x number
---@param y number
---@param distance number
---@return boolean
function WorldObject:IsWithinDist2d(x, y, distance) end

---Returns true if the point is in the given distance of the WorldObject
---@param x number
---@param y number
---@param z number
---@param distance number
---@return boolean
function WorldObject:IsWithinDist3d(x, y, z, distance) end

---Returns true if the WorldObject is on the same map and within given distance
---@param target WorldObject
---@param distance number
---@return boolean isInDistance
function WorldObject:IsWithinDistInMap(target, distance) end

---Returns true if the WorldObject is on the same map and within given distance
---@param target WorldObject
---@param distance number
---@param is3D boolean
---@return boolean isInDistance
function WorldObject:IsWithinDistInMap(target, distance, is3D) end

---Returns true if the given WorldObject or coordinates are in the WorldObject's line of sight
---@param obj WorldObject
---@return boolean
function WorldObject:IsWithinLoS(obj) end

---Returns true if the given WorldObject or coordinates are in the WorldObject's line of sight
---@param x number
---@param y number
---@param z number
---@return boolean
function WorldObject:IsWithinLoS(x, y, z) end

---The WorldObject plays a sound to a Player\
---If no Player provided it will play the sound to everyone near. This method will play sound and does not interrupt prvious sound.
---@param sound number
function WorldObject:PlayDirectSound(sound) end

---The WorldObject plays a sound to a Player\
---If no Player provided it will play the sound to everyone near. This method will play sound and does not interrupt prvious sound.
---@param sound number
---@param player Player
function WorldObject:PlayDirectSound(sound, player) end

---The WorldObject plays a sound to a Player
---If no Player provided it will play the sound to everyone near. This method will play sound and does not interrupt prvious sound.
---@param sound number
function WorldObject:PlayDistanceSound(sound) end

---The WorldObject plays a sound to a Player
---If no Player provided it will play the sound to everyone near. This method will play sound and does not interrupt prvious sound.
---@param sound number
---@param player Player
function WorldObject:PlayDistanceSound(sound, player) end

---The WorldObject plays music to a Player
---If no Player provided it will play the music to everyone near. This method does not interrupt previously played music.
---@param music number
function WorldObject:PlayMusic(music) end

---The WorldObject plays music to a Player
---If no Player provided it will play the music to everyone near. This method does not interrupt previously played music.
---@param music number
---@param player Player
function WorldObject:PlayMusic(music, player) end

---Registers a timed event to the WorldObject When the passed function is called, the parameters (eventId, delay, repeats, worldobject) are passed to it. Repeats will decrease on each call if the event does not repeat indefinitely\
---Note that for Creature and GameObject the timed event timer ticks only if the creature is in sight of someone For all WorldObjects the timed events are removed when the object is destoryed. This means that for example a Player's events are removed on logout.
---@param callback fun(eventId: number, delay: number, repeats: boolean, worldObject: WorldObject)
---@param delay table | number
---@param repeats number
---@return number eventId
function WorldObject:RegisterEvent(callback, delay, repeats) end

---Removes the timed event from a WorldObject by the specified event ID
---@param eventId number
function WorldObject:RemoveEventById(eventId) end

---Removes all timed events from a WorldObject
function WorldObject:RemoveEvents() end

---Sends a WorldPacket to Players in sight of the WorldObject.
---@param packet WorldPacket
function WorldObject:SendPacket(packet) end

---Sets the WorldObject's phase mask.
---@param phaseMask number
function WorldObject:SetPhaseMask(phaseMask) end

---Sets the WorldObject's phase mask.
---@param phaseMask number
---@param update boolean
function WorldObject:SetPhaseMask(phaseMask, update) end

---@alias TempSpawnType
---| 1 # TEMPSUMMON_TIMED_OR_DEAD_DESPAWN
---| 2 # TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN
---| 3 # TEMPSUMMON_TIMED_DESPAWN
---| 4 # TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT
---| 5 # TEMPSUMMON_CORPSE_DESPAWN
---| 6 # TEMPSUMMON_CORPSE_TIMED_DESPAWN
---| 7 # TEMPSUMMON_DEAD_DESPAWN
---| 8 # TEMPSUMMON_MANUAL_DESPAWN
---| 9 # TEMPSUMMON_TIMED_OOC_OR_CORPSE_DESPAWN
---| 10 # TEMPSUMMON_TIMED_OOC_OR_DEAD_DESPAWN

---Spawns the creature at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@return Creature
function WorldObject:SpawnCreature(entry, x, y, z, o) end

---Spawns the creature at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@param spawnType TempSpawnType
---@return Creature
function WorldObject:SpawnCreature(entry, x, y, z, o, spawnType) end

---Spawns the creature at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@param spawnType TempSpawnType
---@param despawnTimer number
---@return Creature
function WorldObject:SpawnCreature(entry, x, y, z, o, spawnType, despawnTimer) end

---Spawns a GameObject at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@return GameObject
function WorldObject:SummonGameObject(entry, x, y, z, o) end

---Spawns a GameObject at specified location.
---@param entry number
---@param x number
---@param y number
---@param z number
---@param o number
---@param respawnDelay number
---@return GameObject
function WorldObject:SummonGameObject(entry, x, y, z, o, respawnDelay) end
