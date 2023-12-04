---@meta

---@class Spell
Spell = {}

---Cancels the Spell.
function Spell:Cancel() end

---Casts the Spell.
---@param skipCheck boolean Skips initial checks to see if the spell can be casted or not
function Spell:Cast(skipCheck) end

---Finishes the Spell.
function Spell:Finish() end

---Returns the Unit that casted the Spell.
---@return Unit caster
function Spell:GetCaster() end

---Returns the cast time of the Spell.
---@return number castTime
function Spell:GetCastTime() end

---Returns the spell duration of the Spell.
---@return number duration
function Spell:GetDuration() end

---Returns the entry ID of the Spell.
---@return number entryId
function Spell:GetEntry() end

---Returns the power cost of the Spell.
---@return number powerCost
function Spell:GetPowerCost() end

---Returns the target Object of the Spell.
---@return Player|Creature|GameObject|Item|Corpse
function Spell:GetTarget() end

---Returns the target destination coordinates of the Spell.
---@return {x:number, y:number, z:number}
function Spell:GetTargetDest() end

---Returns true if the Spell is automatically repeating, false otherwise.
---@return boolean isAutoRepeating
function Spell:IsAutoRepeat() end

---Sets the Spell to automatically repeat.
---@param autoRepeat boolean
function Spell:SetAutoRepeat(autoRepeat) end
