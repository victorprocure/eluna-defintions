---@meta

---Contains the state of a battleground, e.g. Warsong Gulch, Arathi Basin, etc.
---@class BattleGround
BattleGround = {}


---Returns the amount of alive players in the BattleGround by the team ID.
---@param team Team
---@return number
function BattleGround:GetAlivePlayersCountByTeam(team) end

---Returns the bonus honor given by amount of kills in the specific BattleGround.
---@param kills number Amount of kills
---@return number bonusHonor Valid numbers: integers from 0 to 4,294,967,295
function BattleGround:GetBonusHonorFromKillCount(kills) end

---Returns the bracket ID of the specific BattleGround.
---@return BattlegroundBracketId bracketId
function BattleGround:GetBracketId() end

---Returns the end time of the BattleGround.
---@return number endTime Valid numbers: integers from 0 to 4,294,967,295.
function BattleGround:GetEndTime() end

---Returns the amount of free slots for the selected team in the specific BattleGround.
---@param team Team
---@return number freeSlots
function BattleGround:GetFreeSlotsForTeam(team) end

---Returns the instance ID of the BattleGround.
---@return number instanceId
function BattleGround:GetInstanceId() end

---Returns the Map of the BattleGround.
---@return Map map
function BattleGround:GetMap() end

---Returns the map ID of the BattleGround.
---@return number mapId
function BattleGround:GetMapId() end

---Returns the max allowed Player level of the specific BattleGround.
---@return number maxLevel
function BattleGround:GetMaxLevel() end

---Returns the maximum allowed Player count of the specific BattleGround.
---@return number maxPlayerCount
function BattleGround:GetMaxPlayers() end

---Returns the maximum allowed Player count per team of the specific BattleGround.
---@return number maxTeaamPlayerCount
function BattleGround:GetMaxPlayersPerTeam() end

---Returns the minimum allowed Player level of the specific BattleGround.
---@return number minLevel
function BattleGround:GetMinLevel() end

---Returns the minimum allowed Player count of the specific BattleGround.
---@return number minPlayerCount
function BattleGround:GetMinPlayers() end

---Returns the minimum allowed Player count per team of the specific BattleGround.
---@return number minTeamPlayerCount
function BattleGround:GetMinPlayersPerTeam() end

---Returns the name of the BattleGround.
---@return string name
function BattleGround:GetName() end

---Returns the status of the specific BattleGround.
---@return BattlegroundStatus status
function BattleGround:GetStatus() end

---Returns the type ID of the BattleGround.
---@return BattlegroundTypeId typeId
function BattleGround:GetTypeId() end

---Returns the winning team of the specific BattleGround.
---@return Team team
function BattleGround:GetWinner() end