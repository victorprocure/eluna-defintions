---@meta

---@class ItemTemplate
ItemTemplate = {}

---Returns the Player classes allowed to use this ItemTemplate.
---@return number allowableClass
function ItemTemplate:GetAllowableClass() end

---Returns the Player races allowed to use this ItemTemplate.
---@return number allowableRace
function ItemTemplate:GetAllowableRace() end

---Returns the ItemTemplate's default purchase count.
---@return number buyCount
function ItemTemplate:GetBuyCount() end

---Returns the ItemTemplate's purchase price.
---@return number buyPrice
function ItemTemplate:GetBuyPrice() end

---Returns the ItemTemplate's class.
---@return number class
function ItemTemplate:GetClass() end

---Returns the ItemTemplate's display ID.
---@return number displayId
function ItemTemplate:GetDisplayId() end

---Returns the ItemTemplate's extra flags.
---@return number extraFlags
function ItemTemplate:GetExtraFlags() end

---Returns the ItemTemplate's flags.
---@return number flags
function ItemTemplate:GetFlags() end

---Returns the ItemTemplate's inventory type.
---@return number inventoryType
function ItemTemplate:GetInventoryType() end

---Returns the ItemTemplate's ID.
---@return number itemId
function ItemTemplate:GetItemId() end

---Returns the ItemTemplate's item level.
---@return number itemLevel
function ItemTemplate:GetItemLevel() end

---Returns the ItemTemplate's name.
---@return string name
function ItemTemplate:GetName() end

---Returns the ItemTemplate's quality.
---@return number quality
function ItemTemplate:GetQuality() end

---Returns the minimum level required to use this ItemTemplate.
---@return number requiredLevel
function ItemTemplate:GetRequiredLevel() end

---Returns the ItemTemplate's sell price.
---@return number sellPrice
function ItemTemplate:GetSellPrice() end

---Returns the ItemTemplate's subclass.
---@return number subClass
function ItemTemplate:GetSubClass() end
