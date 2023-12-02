---@meta

---@class ChatHandler
ChatHandler = {}

---Returns the Player associated with the handler. Returns nil in the case of a console handler
---@return Player player
function ChatHandler:GetPlayer() end

---Returns the selected Creature
--@see Creature
---@return Creature creature
function ChatHandler:GetSelectedCreature() end

---Returns the selected WorldObject
---@see WorldObject
---@return WorldObject object
function ChatHandler:GetSelectedObject() end

---Returns the selected Player
---@see Player
---@return Player player
function ChatHandler:GetSelectedPlayer() end

---Returns the selected Player or the current Player if nothing is targeted or the target is not a player
---@see Player
---@return Player player
function ChatHandler:GetSelectedPlayerOrSelf() end

---Returns the selected Unit
---@see Unit
---@return Unit unit
function ChatHandler:GetSelectedUnit() end

---Checks if the current security level is lower than the specified Player's account
---@param player Player
---@return boolean lower
function ChatHandler:HasLowerSecurity(player) end

---Checks if the current security level is lower than the specified Player's account
---@param player Player
---@param strong boolean Forces non-player accounts (security level greater than 0) to go through the regular check if set to true.Also, if set to true, the current security level will be considered as lower than the Player's security level if the two levels are equal. 
---@return boolean lower
function ChatHandler:HasLowerSecurity(player, strong) end

---Checks if the current security level is lower than the specified account's level
---@param account number
---@return boolean
function ChatHandler:HasLowerSecurityAccount(account) end

---Checks if the current security level is lower than the specified account's level
---@param account number
---@param strong boolean Forces non-player accounts (security level greater than 0) to go through the regular check if set to true. Also, if set to true, the current security level will be considered as lower than the account's security level if the two levels are equal. 
---@return boolean
function ChatHandler:HasLowerSecurityAccount(account, strong) end

---Returns true if other previously called ChatHandler methods sent an error
---@return boolean sentErrorMessage
function ChatHandler:HasSentErrorMessage() end

---Checks if the securityLevel is available
---@param securityLevel number
---@return boolean isAvailable
function ChatHandler:IsAvailable(securityLevel) end

---Returns true if the ChatHandler comes from the console, false if it comes from a player
---@return boolean isConsole
function ChatHandler:IsConsole() end

---Sends a message to all connected Game Masters
---@param text string Text to send
function ChatHandler:SendGlobalGMSysMessage(text) end

---Sends a message to all connected players
---@param text string Text to send
function ChatHandler:SendGlobalSysMessage(text) end

---Sends text to the chat handler
---@param text string Text to display in chat or console
function ChatHandler:SendSysMessage(text) end

---Sends text to the chat handler
---@param entry number Id of the string to display. 
function ChatHandler:SendSysMessage(entry) end