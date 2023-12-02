---@meta
---@class Corpse:WorldObject
Corpse = {}

---Returns the time when the Player became a ghost and spawned this Corpse.
---@return number
function Corpse:GetGhostTime() end

---Returns the GUID of the Player that left the Corpse behind.
---@return number
function Corpse:GetOwnerGUID() end

---Returns the [CorpseType] of a Corpse.
---@return CorpseType
function Corpse:GetType() end

---Sets the Ghost Time to Current Time
function Corpse:ResetGhostTime() end

---Saves Corpse to database
function Corpse:SaveToDB() end