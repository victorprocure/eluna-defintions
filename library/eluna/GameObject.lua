---@meta

---@class GameObject:WorldObject
GameObject = {}

---Adds an [Item] to the loot of a [GameObject]\
---Requires an gameobject with loot_template set to 0.
---@param entry number The Entry of the item
---@param amount number Amount of the item to add to loot
---@param itemGUIDLow string Low GUID of the item
function GameObject:AddLoot(entry, amount, itemGUIDLow) end

---Adds an [Item] to the loot of a [GameObject]\
---Requires an gameobject with loot_template set to 0.
---@param entry number The Entry of the item
---@param amount number Amount of the item to add to loot
function GameObject:AddLoot(entry, amount) end

---Adds an [Item] to the loot of a [GameObject]\
---Requires an gameobject with loot_template set to 0.
---@param entry number The Entry of the item
function GameObject:AddLoot(entry) end

---Despawns a GameObject
function GameObject:Despawn() end

---Returns the guid of the GameObject that is used as the ID in the database
---@return number dbGuid
function GameObject:GetDBTableGUIDLow() end

---Returns display ID of the GameObject
---@return number displayId
function GameObject:GetDisplayId() end

---Returns the state of a GameObject Below are client side [GOState]s off of 3.3.5a
---@return GOState goState
function GameObject:GetGoState() end

---Returns the Player that can loot the GameObject
---@return Player? player
function GameObject:GetLootRecipient() end

---Returns the Group that can loot the GameObject
---@return Group group
function GameObject:GetLootRecipientGroup() end

---Returns the [LootState] of a GameObject Below are [LootState]s off of 3.3.5a
---@return LootState lootState
function GameObject:GetLootState() end

---Returns 'true' if the GameObject can give the specified Quest
---@param questId number Quest entry Id to check
---@return boolean hasQuest
function GameObject:HasQuest(questId) end

---Returns 'true' if the GameObject is active
---@return boolean isActive
function GameObject:IsActive() end

---Returns 'true' if the GameObject is spawned
---@return boolean isSpawned
function GameObject:IsSpawned() end

---Returns 'true' if the GameObject is a transport
---@return boolean isTransport
function GameObject:IsTransport() end

---Removes GameObject from the world\
---**The object is no longer reachable after this and it is not respawned.**
---@param deleteFromDB boolean If `true` it will delete the GameObject from the database
function GameObject:RemoveFromWorld(deleteFromDB) end

---Respawns a GameObject
function GameObject:Respawn() end

---Saves GameObject to the database
function GameObject:SaveToDB() end

---Sets the state of a GameObject
---@param state GOState
function GameObject:SetGoState(state) end

---Sets the loot state of a GameObject
---@param state LootState
function GameObject:SetLootState(state) end

---Sets the respawn or despawn time for the gameobject.
---*Respawn time is also used as despawn time depending on gameobject settings*
---@param delay number cooldown time in seconds
function GameObject:SetRespawnTime(delay) end

---Activates a door or a button/lever
---@param delay number Cooldown time in seconds to restore the GameObject back to normal. 0 for infinite duration. 
function GameObject:UseDoorOrButton(delay) end