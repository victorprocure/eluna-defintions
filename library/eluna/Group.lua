---@meta

---@class Group
Group = {}

---Returns `true` if the player is the group leader
---@param guid number
---@return boolean isLeader
function Group:IsLeader(guid) end

---Returns 'true' if the Group is full
---@return boolean isFull
function Group:IsFull() end

---Returns 'true' if the Group is a LFG group
---@return boolean isLFGGroup
function Group:IsLFGGroup() end

---Gets whether group is a raid group
---@return boolean isRaidGroup
function Group:IsRaidGroup() end

---Returns `true` if this is a battleground group
---@return boolean isBG
function Group:IsBGGroup() end

---Returns `true` if the player is a member of group
---@param guid number
---@return boolean isMember
function Group:IsMember(guid) end

---Returns `true` if the Player is an assistant of this group
---@param guid number
---@return boolean isAssistant
function Group:IsAssistant(guid) end

---Returns 'true' if the Players are in the same subgroup in this Group
---@param player1 Player
---@param player2 Player
---@return boolean sameSubGroup
function Group:SameSubGroup(player1, player2) end

---Returns 'true' if the subgroup has free slots in this Group
---@param subGroup number subGroup ID to check
---@return boolean hasFreeSlot
function Group:HasFreeSlotSubGroup(subGroup) end

---Adds new member to the group
---@param player Player
---@return boolean isAdded
function Group:AddMember(player) end

---Returns a table with the players in the group
---@return table groupPlayers
function Group:GetMembers() end

---Returns the Group leader GUID
---@return number leaderGUID
function Group:GetLeaderGUID() end

---Returns the groups GUID
---@return number groupGUID
function Group:GetGUID() end

---Returns a group members GUID by name
---@param name string
---@return number memberGUID
function Group:GetMemberGUID(name) end

---Returns the member count of this group
---@return number memberCount
function Group:GetMembersCount() end

---Returns the group type
---@return GroupType groupType
function Group:GetGroupType() end

---Returns the Player's subgroup ID of this Group
---@param guid number Guid of the player
---@return number subGroupGUID
function Group:GetMemberGroup(guid) end

---Sets the leader of this Group
---@param guid number Guid of the new leader
function Group:SetLeader(guid) end

---Sends a specified WorldPacket to this Group
---@param packet WorldPacket The WorldPacket to send. 
---@param ignorePlayersInBg boolean Ignores Players in a battleground. 
---@param ignore number Ignore a Player by their GUID. 
function Group:SendPacket(packet, ignorePlayersInBg, ignore) end

---Removes a player from this group and returns `true` if successful
---@param guid number
---@param method RemoveMethod
---@return boolean removed
function Group:RemoveMember(guid, method) end

---Disbands this group
function Group:Disband() end

---Converts Group to Raid
function Group:ConvertToRaid() end

---Sets the members subGroup
---@param guid number Guid of the player to move.
---@param groupId number The subGroup's ID. 
function Group:SetMembersGroup(guid, groupId) end

---Sets the target icon of an Object for the Group
---@param icon number The icon (Skull, Square, etc). 
---@param target number GUID of the icon target, 0 is to clear the icon. 
---@param setter number GUID of the icon setter. 
function Group:SetTargetIcon(icon, target, setter) end

---Sets or removes a flag for a Group member
---@param target number GUID of the target
---@param apply boolean Add the flag if `true`, remove otherwise
---@param flag GroupMemberFlags the flag to set or unset
function Group:SetMemberFlag(target, apply, flag) end
