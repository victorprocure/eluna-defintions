---@meta

---@class Quest
Quest = {}

---Returns the Quest's flags.
---@return QuestFlags flags
function Quest:GetFlags() end

---Returns entry ID of the Quest.
---@return number
function Quest:GetId() end

---Returns the Quest's level.
---@return number level
function Quest:GetLevel() end

---Returns the minimum level required to pick up the Quest.
---@return number minLevel
function Quest:GetMinLevel() end

---Returns the next Quest entry ID.
---@return number entryId
function Quest:GetNextQuestId() end

---Returns the next Quest entry ID in the specific Quest chain.
---@return number entryId
function Quest:GetNextQuestInChain() end

---Returns the previous Quest entry ID.
---@return number entryId
function Quest:GetPrevQuestId() end

---Returns the Quest's type.
---@return number type
function Quest:GetType() end

---Returns 'true' if the Quest has the specified flag, false otherwise. Below flags are based off of 3.3.5a. Subject to change.
---@param flag QuestFlags
---@return boolean hasFlag
function Quest:HasFlag(flag) end

---Returns 'true' if the Quest is a daily quest, false otherwise.
---@return boolean isDaily
function Quest:IsDaily() end

---Returns 'true' if the Quest is repeatable, false otherwise.
---@return boolean isRepeatable
function Quest:IsRepeatable() end
