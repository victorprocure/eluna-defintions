---@meta

---@class Item:Object
Item = {}


---Returns 'true' if the Item is soulbound, 'false' otherwise
---@return boolean isSoulBound
function Item:IsSoulBound() end

---Returns 'true' if the Item is account bound, 'false' otherwise
---@return boolean isAccountBound
function Item:IsBoundAccountWide() end

---Returns 'true' if the Item is bound to a Player by an enchant, 'false' otehrwise
---@return boolean isBoundByEnchant
function Item:IsBoundByEnchant() end

---Returns 'true' if the Item is not bound to the Player specified, 'false' otherwise
---@param player Player
---@return boolean isNotBound
function Item:IsNotBoundToPlayer(player) end

---Returns 'true' if the Item is locked, 'false' otherwise
---@return boolean isLocked
function Item:IsLocked() end

---Returns 'true' if the Item is a bag, 'false' otherwise
---@return boolean isBag
function Item:IsBag() end

---Returns 'true' if the Item is a currency token, 'false' otherwise
---@return boolean isCurrencyToken
function Item:IsCurrencyToken() end

---Returns 'true' if the Item is a not an empty bag, 'false' otherwise
---@return boolean isNotEmptyBag
function Item:IsNotEmptyBag() end

---Returns 'true' if the Item is broken, 'false' otherwise
---@return boolean isBroken
function Item:IsBroken() end

---Is the item tradeable
---@return boolean isTradeable
function Item:CanBeTraded() end

---Returns 'true' if the Item is currently in a trade window, 'false' otherwise
---@return boolean isInTrade
function Item:IsInTrade() end

---Returns 'true' if the Item is currently in a bag, 'false' otherwise
---@return boolean isInBag
function Item:IsInBag() end

---Returns 'true' if the Item is currently equipped, 'false' otherwise
---@return boolean isEquipped
function Item:IsEquipped() end

---Returns 'true' if the Item has the Quest specified tied to it, 'false' otherwise
---@param questId number The quest Id to be checked
---@return boolean hasQuest
function Item:HasQuest(questId) end

---Returns 'true' if the Item is a potion, 'false' otherwise
---@return boolean isPotion
function Item:IsPotion() end

---Returns 'true' if the Item is a weapon vellum, 'false' otherwise
---@return boolean isWeaponVellum
function Item:IsWeaponVellum() end

---Returns 'true' if the Item is an armor vellum, 'false' otherwise
---@return boolean isArmorVellum
function Item:IsArmorVellum() end

---Returns 'true' if the Item is a conjured consumable, 'false' otherwise
---@return boolean isConjuredConsumable
function Item:IsConjuredConsumable() end

---Get the chat link for an Item
---@return string itemLink
function Item:GetItemLink() end

---Get the chat link for an Item
---@param locale LocaleConstant
---@return string itemLink
function Item:GetItemLink(locale) end

---Get owner GUID
---@return number ownerGuid
function Item:GetOwnerGUID() end

---Returns the Player who currently owns the Item
---@return Player player
function Item:GetOwner() end

---Returns the count of an Item stack
---@return number count
function Item:GetCount() end

---Returns the Items max stack count
---@return number maxCount
function Item:GetMaxStackCount() end

---Returns the Items current slot
---@return number slot
function Item:GetSlot() end

---Returns the Item current bag slot
---@return number bagSlot
function Item:GetBagSlot() end

---Returns the Items enchantment ID by enchant slot specified
---@param enchantSlot EnchantmentSlot
---@return number enchantId
function Item:GetEnchantmentId(enchantSlot) end

---Returns the spell ID tied to the Item by spell index
---@param spellIndex number the spell index specified
---@return number spellId The ID of the spell
function Item:GetSpellId(spellIndex) end

---Returns the spell trigger tied to the Item by spell index
---@param spellIndex number The spell index specified
---@return number spellTrigger The spell trigger of the specified index
function Item:GetSpellTrigger(spellIndex) end

---Get the item Class
---@return number class
function Item:GetClass() end

---Returns subclass of the Item
---@return number subClass
function Item:GetSubClass() end

---Returns the name of the Item
---@return string name
function Item:GetName() end

---Returns the display Id of the item
---@return number displayId
function Item:GetDisplayId() end

---Returns the quality of the Item
---@return number quality
function Item:GetQuality() end

---Returns the default purchase count
---@return number count
function Item:GetBuyCount() end

---Returns the purchase price of an Item
---@return number price
function Item:GetBuyPrice() end

---Returns the sell price of the Item
---@return number price
function Item:GetSellPrice() end

---Returns the inventory type of the Item
---@return number inventoryType
function Item:GetInventoryType() end

---Returns the Player classes allowed to use this item
---@return number allowableClass
function Item:GetAllowableClass() end

---Returns the player races allowed to use this item
---@return number allowableRace
function Item:GetAllowableRace() end

---Get the Items level
---@return number iLvl
function Item:GetItemLevel() end

---Returns the minimum level required to use this Item
---@return number requiredLevel
function Item:GetRequiredLevel() end

---@deprecated Undocumented method, use at own risk
function Item:GetStatsCount() end

---Returns the random property ID of this Item
---@return number randomPropertyId
function Item:GetRandomProperty() end

---@deprecated Undocumented, use at own risk
function Item:GetRandomSuffix() end

---Returns the item set ID of this Item
---@return number itemSetId
function Item:GetItemSet() end

---Returns the bag size of this item, 0 if item is not a bag
---@return number bagSize
function Item:GetBagSize() end

---Returns the ItemTemplate for this Item.
---@return ItemTemplate itemTemplate
function Item:GetItemTemplate() end

---Sets the Player specified as the owner of the Item
---@param player Player
function Item:SetOwner(player) end

---Sets the binding of the Item to 'true' or 'false'
---@param setBinding boolean
function Item:SetBinding(setBinding) end

---Sets the stack count of the Item
---@param count number
function Item:SetCount(count) end

---Sets the specified enchantment of the Item to the specified slot
---@param enchantId number The ID of the enchantment to apply
---@param enchantSlot number enchant slow to apply to
---@return boolean enchantmentSuccess
function Item:SetEnchantment(enchantId, enchantSlot) end

---Removes an enchant from the Item by the specified slot
---@param enchantmentSlot number The Slot for the enchantment to be removed from
---@return boolean enchantmentRemoved
function Item:ClearEnchantment(enchantmentSlot) end

---Saves the Item to the database
function Item:SaveToDB() end
