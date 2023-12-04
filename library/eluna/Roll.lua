---@meta

---@class Roll
Roll = {}

---Returns the rolled Item's count.
---@return number count
function Roll:GetItemCount() end

---Returns the rolled Item's GUID.
---@return number guid
function Roll:GetItemGUID() end

---Returns the rolled Item's entry.
---@return number entry
function Roll:GetItemId() end

---Returns the rolled Item's random property ID.
---@return number randomPropId
function Roll:GetItemRandomPropId() end

---Returns the rolled Item's random suffix ID.
---@return number randomSuffix
function Roll:GetItemRandomSuffix() end

---Returns the rolled Item's slot in the loot window.
---@return number slot
function Roll:GetItemSlot() end

---@alias RollVote
---| 0 # PASS
---| 1 # NEED
---| 2 # GREED
---| 3 # DISENCHANT
---| 4 # NOT_EMITED_YET
---| 5 # NOT_VALID

---Returns the vote type for a Player on this Roll. See Roll:GetPlayerVoteGUIDs to obtain the GUIDs of the Players who rolled.
---@param guid number
---@return RollVote
function Roll:GetPlayerVote(guid) end

---Returns the GUIDs of the Players who rolled. See Roll:GetPlayerVote to obtain the vote type of a Player.
function Roll:GetPlayerVoteGUIDs() end

---@alias RollMask
---| 0x01 # ROLL_FLAG_TYPE_PASS
---| 0x02 # ROLL_FLAG_TYPE_NEED
---| 0x04 # ROLL_FLAG_TYPE_GREED
---| 0x08 # ROLL_FLAG_TYPE_DISENCHANT
---| 0x07 # ROLL_ALL_TYPE_NO_DISENCHANT
---| 0x0F # ROLL_ALL_TYPE_MASK

---Returns the mask applied to this Roll.
---@return RollMask rollMask
function Roll:GetRollVoteMask() end

---Returns the total number of players who rolled greed.
---@return number playersCount
function Roll:GetTotalGreed() end

---Returns the total number of players who rolled need.
---@return number playersCount
function Roll:GetTotalNeed() end

---Returns the total number of players who passed.
---@return number playersCount
function Roll:GetTotalPass() end

---Returns the total number of players who rolled.
---@return number playersCount
function Roll:GetTotalPlayersRolling() end
