---@meta

---A game map, e.g. Azeroth, Eastern Kingdoms, the Molten Core, etc.
---@class Map
Map = {}

---Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@return number areaId
function Map:GetAreaId(x, y, z) end

---Returns the area ID of the Map at the specified X, Y, and Z coordinates.
---@param x number
---@param y number
---@param z number
---@param phasemask number (PHASEMASK_NORMAL)
---@return number areaId
function Map:GetAreaId(x, y, z, phasemask) end

---Returns the difficulty of the Map.\
---Always returns 0 if the expansion is pre-TBC.
---@return number difficulty
function Map:GetDifficulty() end

---Returns the height of the Map at the given X and Y coordinates.
---@param x number
---@param y number
---@return number? z
function Map:GetHeight(x, y) end

---Gets the instance data table for the Map, if it exists.
---@return table instanceData
function Map:GetInstanceData() end

---Returns the instance ID of the Map.
---@return number instanceId
function Map:GetInstanceId() end

---Returns the ID of the Map.
---@return number mapId
function Map:GetMapId() end

---Returns the name of the Map.
---@return string mapName
function Map:GetName() end

---Returns the player count currently on the Map (excluding GMs).
---@return number playerCount
function Map:GetPlayerCount() end

---Returns a table with all the current Players in the map
---@param team TeamId
---@return table mapPlayers
function Map:GetPlayers(team) end

---Returns a WorldObject by its GUID from the map if it is spawned.
---@param guid number
---@return WorldObject object
function Map:GetWorldObject(guid) end

---Returns true if the Map is an arena BattleGround, false otherwise.
---@return boolean isArena
function Map:IsArena() end

---Returns true if the Map is a non-arena BattleGround, false otherwise.
---@return boolean isBattleground
function Map:IsBattleground() end

---Returns true if the Map is a dungeon, false otherwise.
---@return boolean isDungeon
function Map:IsDungeon() end

---Returns true if the Map has no Players, false otherwise.
---@return boolean isEmpty
function Map:IsEmpty() end

---Returns true if the Map is a heroic, false otherwise.
---@return boolean isHeroic
function Map:IsHeroic() end

---Returns true if the Map is a raid, false otherwise.
---@return boolean isRaid
function Map:IsRaid() end

---Saves the Map's instance data to the database.
function Map:SaveInstanceData() end

---Sets the [Weather] type based on [WeatherType] and grade supplied.
---@param zone number Id of the zone to set the weather for. 
---@param type WeatherType The [WeatherType], see above available weather types. 
---@param grade number The intensity/grade of the [Weather], ranges from 0 to 1. 
function Map:SetWeather(zone, type, grade) end
