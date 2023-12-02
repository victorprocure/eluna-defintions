---@meta
---@class Object
Object = {}

---Returns the data at the specified index and offset, casted to an unsigned 8-bit integer.
---E.g. if you want the second byte at index 10, you would pass in 1 as the offset.
---@param index number
---@param offset number
---@return number
function Object:GetByteValue(index, offset) end

---Returns the entry of the Object. Players do not have an entry
---@return number
function Object:GetEntry() end

---Returns the data at the specified index, casted to a single-precision floating point value.
---@param index number
---@return number
function Object:GetFloatValue(index) end

---Returns GUID of the object
---@return number
function Object:GetGUID() end

---Returns the low-part of the Object's GUID.
---@return number
function Object:GetGUIDLow() end

---Returns the data at the specified index, casted to a signed 32-bit integer.
---@param index number
---@return number
function Object:GetInt32Value(index) end

---Returns the scale/size of the Object.
---@return number
function Object:GetScale() end

---Returns TypeId of the object
---@return TypeID
function Object:GetTypeId() end

---Returns the data at the specified index and offset, casted to a signed 16-bit integer.
---@param index number
---@param offset number
---@return number
function Object:GetUInt16Value(index, offset) end

---Returns the data at the specified index, casted to a unsigned 32-bit integer.
---@param index number
---@return number
function Object:GetUInt32Value(index) end

---Returns the data at the specified index, casted to a unsigned 64-bit integer.
---@param index number
---@return number
function Object:GetUInt64Value(index) end

---Returns true if the specified flag is set, otherwise false.
---@param index number
---@param flag number
---@return boolean
function Object:HasFlag(index, flag) end

---Returns true if the Object has been added to its Map, otherwise false.
---@return boolean
function Object:IsInWorld() end

---Returns 'true' if the Object is a player, 'false' otherwise.
---@return boolean
function Object:IsPlayer() end

---Removes a flag from the value at the specified index.
---@param index number
---@param flag number
function Object:RemoveFlag(index, flag) end

---Sets the data at the specified index and offset to the given value, converted to an unsigned 8-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetByteValue(index, offset, value) end

---Sets the specified flag in the data value at the specified index.
---@param index number
---@param value number
function Object:SetFlag(index, value) end

---Sets the data at the specified index to the given value, converted to a single-precision floating point value.
---@param index number
---@param value number
function Object:SetFloatValue(index, value) end

---Sets the data at the specified index to the given value, converted to a signed 16-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetInt16Value(index, offset, value) end

---Sets the data at the specified index to the given value, converted to a signed 32-bit integer.
---@param index number
---@param value number
function Object:SetInt32Value(index, value) end

---Sets the Object's scale/size to the given value.
---@param scale number
function Object:SetScale(scale) end

---Sets the data at the specified index to the given value, converted to a unsigned 16-bit integer.
---@param index number
---@param offset number
---@param value number
function Object:SetUInt16Value(index, offset, value) end

---Sets the data at the specified index to the given value, converted to a unsigned 32-bit integer.
---@param index number
---@param value number
function Object:SetUInt32Value(index, value) end

---Sets the data at the specified index to the given value, converted to a unsigned 64-bit integer.
---@param index number
---@param value number
function Object:SetUInt64Value(index, value) end

---Attempts to convert the Object to a Corpse.
---If the Object is not a Corpse, returns nil.
---@return Corpse|nil
function Object:ToCorpse() end

---Attempts to convert the object to Creature
---@return Creature|nil
function Object:ToCreature() end

---Attempts to convert the Object to a GameObject.
---@return GameObject|nil
function Object:ToGameObject() end

---Attempts to convert the Object to a Player.
---@return Player|nil
function Object:ToPlayer() end

---Attempts to convert the Object to a Unit.
---@return Unit|nil
function Object:ToUnit() end

---Sets the data at the specified index to the given value, converted to an unsigned 32-bit integer.
---@param index number
---@param value number
function Object:UpdateUInt32Value(index, value) end