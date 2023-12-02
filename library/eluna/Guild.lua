---@meta

---@class Guild
Guild = {}

---Returns a table with the Players in this Guild
---@return table guildPlayers
function Guild:GetMembers() end

---Returns the member count of this Guild
---@return number memberCount
function Guild:GetMemberCount() end

---Finds and returns the Guild leader by their GUID if logged in
---@return Player leader
function Guild:GetLeader() end

---Returns Guild leader GUID
---@return number leaderGUID
function Guild:GetLeaderGUID() end

---Returns the Guild entry Id
---@return number entryId
function Guild:GetId() end

---Returns the Guilds name
---@return string guildName
function Guild:GetName() end

---Returns the Guilds current Message Of The Day
---@return string guildMOTD
function Guild:GetMOTD() end

---Returns the Guild current info
---@return string guildInfo
function Guild:GetInfo() end

---Sets the leader of this Guild
---@param leader Player The player to lead the guild
function Guild:SetLeader(leader) end

---Sets the information of the bank tab specified
---@param tabId number The ID of the tab specified. 
---@param info string The information to be set to the bank tab. 
function Guild:SetBankTabText(tabId, info) end

---Sends a WorldPacket to all the Players in the Guild
---@param packet WorldPacket The world packet sent to the players
function Guild:SendPacket(packet) end

---Sends a WorldPacket to all the Players at the specified rank in the Guild
---@param packet WorldPacket The world packet sent to the players
---@param rankId number The Rank ID
function Guild:SendPacketToRanked(packet, rankId) end

---Disbands the Guild
function Guild:Disband() end

---Adds the specified Player to the Guild at the specified rankId
---@param player Player
---@param rankId number
function Guild:AddMember(player, rankId) end

---Removes the specified Player form the Guild
---@param player Player
---@param isDisbanding boolean? Default 'false', should only be set to 'true' if the guild is triggered to disband. 
function Guild:DeleteMember(player, isDisbanding) end

---Promotes/demotes the Player to the specified rank.
---@param player Player The player to have rank changed
---@param rankId number The Rank ID
function Guild:SetMemberRank(player, rankId) end