---@meta

---@class Player:Unit
Player = {}

---Adds combo points to the Player
---@param target Unit
---@param count number
function Player:AddComboPoints(target, count) end

---Adds the given amount of the specified item entry to the player.
---@param entry number Entry of the item to add.
---@return Item item
function Player:AddItem(entry) end

---Adds the given amount of the specified item entry to the player.
---@param entry number Entry of the item to add.
---@param itemCount number Amount of the item to add.
---@return Item item
function Player:AddItem(entry, itemCount) end

---Add lifetime kills to player
---@param lifetimeKills number
function Player:AddLifetimeKills(lifetimeKills) end

---Tries to add the given quest entry for the Player.
---@param entry number Quest Entry
function Player:AddQuest(entry) end

---Advances all of the Players skills to the amount specified
---@param skillStep number
function Player:AdvanceAllSkills(skillStep) end

---Advances a Players specific skill to the amount specified
---@param skillId number
---@param skillStep number
function Player:AdvanceSkill(skillId, skillStep) end

---Advances all of the Players weapon skills to the maximum amount available
function Player:AdvanceSkillsToMax() end

---Completes the Quest if a Quest area is explored, or completes the Quest
---@param quest number Entry of a Quest
function Player:AreaExploredOrEventHappens(quest) end

---Returns true if the Player can block incomming attacks, false otherwise.
---@return boolean canBlock
function Player:CanBlock() end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param entry number
---@return boolean canComplete
function Player:CanCompleteQuest(entry) end

---Returns true if the Player satisfies all requirements to complete the quest entry.
---@param questId number
---@return boolean canCompleteRepeatableQuest
function Player:CanCompleteRepeatableQuest(questId) end

---Returns true if the player can equip the given Item or item entry to the given slot, false otherwise.
---@param entry Item|number Item or entry Id of item to equip
---@param slot number Equipment slot to test
---@return boolean canEquip
function Player:CanEquipItem(entry, slot) end

---Returns true if the Player can fly, false otherwise.
---@return boolean canFly
function Player:CanFly() end

---Returns true if the Player can parry incomming attacks, false otherwise.
---@return boolean canParry
function Player:CanParry() end

---Returns true if the Player satisfies all requirements to reward the quest entry.
---@param questId number
---@return boolean canRewardQuest
function Player:CanRewardQuest(questId) end

---Returns true if the Player can share Quest specified by ID, false otherwise.
---@param questId number
---@return boolean canShareQuest
function Player:CanShareQuest(questId) end

---Returns true if the Player can currently communicate through chat, false otherwise.
---@return boolean canSpeak
function Player:CanSpeak() end

---Returns true if the Player can Titan Grip, false otherwise.
---@return boolean canTitanGrip
function Player:CanTitanGrip() end

---Returns true if the Player has permission to uninvite others from the current group, false otherwise.
---@return boolean canUninviteFromGroup
function Player:CanUninviteFromGroup() end

---Returns true if the Player can use the item or item entry specified, false otherwise.
---@param entry Item|number Instance of an item or entry Id of an item
---@return boolean canUse
function Player:CanUseItem(entry) end

---Clears the Players combo points
function Player:ClearComboPoints() end

---Clears all of Players weekly honor status
function Player:ClearHonorInfo() end

---Completes the given quest entry for the Player and tries to satisfy all quest requirements.
---@param entry number Quest ID
function Player:CompleteQuest(entry) end

---Damages specified Item
---@param item Item
---@param percent number
function Player:DurabilityLoss(item, percent) end

---Damages all Items equipped. If inventory is true, damages Items in bags
---@param percent number
function Player:DurabilityLossAll(percent) end

---Damages all Items equipped. If inventory is true, damages Items in bags
---@param percent number
---@param inventory boolean
function Player:DurabilityLossAll(percent, inventory) end

---Sets durability loss for an Item in the specified slot
---@param slot number
function Player:DurabilityPointLossForEquipSlot(slot) end

---Sets durability loss for the specified Item
---@param item Item
---@param points number
function Player:DurabilityPointsLoss(item, points) end

---Sets durability loss on all Items equipped\
---If inventory is true, sets durability loss for Items in bags
---@param points number
function Player:DurabilityPointsLossAll(points) end

---Sets durability loss on all Items equipped\
---If inventory is true, sets durability loss for Items in bags
---@param points number
---@param inventory boolean
function Player:DurabilityPointsLossAll(points, inventory) end

---Repairs Item at specified position.
---@param position number
function Player:DurabilityRepair(position) end

---Repairs Item at specified position.
---@param position number
---@param cost boolean
function Player:DurabilityRepair(position, cost) end

---Repairs Item at specified position.
---@param position number
---@param cost boolean
---@param discountMod number
function Player:DurabilityRepair(position, cost, discountMod) end

---Repairs all Items.
---@param takeCost boolean
function Player:DurabilityRepairAll(takeCost) end

---Repairs all Items.
---@param takeCost boolean
---@param discountMod number
function Player:DurabilityRepairAll(takeCost, discountMod) end

---Repairs all Items.
---@param takeCost boolean
---@param discountMod number
---@param guidBank boolean
function Player:DurabilityRepairAll(takeCost, discountMod, guidBank) end

---Equips the given item or item entry to the given slot. Returns the equipped item or nil.
---@param entry Item|number
---@param slot EquipmentSlots|InventorySlots
---@return Item? equippedItem
function Player:EquipItem(entry, slot) end

---Sets the given Quest entry failed for the Player.
---@param entry number Entry of Quest
function Player:FailQuest(entry) end

---Returns the Players account ID
---@return number accountId
function Player:GetAccountId() end

---Returns the Players account name
---@return string accountName
function Player:GetAccountName() end

---Returns the progress of the Player for the specified achievement criteria.
---@param criteriaId number
---@return number? progress
function Player:GetAchievementCriteriaProgress(criteriaId) end

---Returns the Players active spec ID
---@return number specId
function Player:GetActiveSpec() end

---Returns the Players current amount of Arena Points
---@return number arenaPoints
function Player:GetArenaPoints() end

---Returns base skill value
---@param skill number
---@return number baseVal
function Player:GetBaseSkillValue(skill) end

---Returns the Players current BattleGround ID
---@return number battleGroundId
function Player:GetBattlegroundId() end

---Returns the Players current BattleGround type ID
---@return BattlegroundTypeId typeId
function Player:GetBattlegroundTypeId() end

---Returns the faction ID the Player is currently flagged as champion for
---@return number championingFaction
function Player:GetChampioningFaction() end

---Returns active GM chat tag
---@return number tag
function Player:GetChatTag() end

---Returns the Players amount of money in copper
---@return number coinage
function Player:GetCoinage() end

---Returns Player's combo points
---@return number comboPoints
function Player:GetComboPoints() end

---Returns Unit target combo points are on
---@return Unit target
function Player:GetComboTarget() end

---Returns the Players Corpse object
---@return Corpse corpse
function Player:GetCorpse() end

---Returns the Players database locale index
---@return number localeIndex
function Player:GetDbcLocale() end

---Returns the Players game client locale
---@return LocaleConstant locale
function Player:GetDbLocaleIndex() end

---Returns raid or dungeon difficulty
---@param isRaid boolean
---@return number difficulty
function Player:GetDifficulty(isRaid) end

---Returns the Players current level of intoxication
---@return number drunkValue
function Player:GetDrunkValue() end

---Returns a Players Item object by gear slot specified
---@param slot number
---@return Item item
function Player:GetEquippedItemBySlot(slot) end

---Returns the Players free talent point amount
---@return number freeTalentPointAmt
function Player:GetFreeTalentPoints() end

---Returns the Players GM Rank
---@return AccountTypes gmRank
function Player:GetGMRank() end

---Returns the database textID of the WorldObject's gossip header text for the Player
---@param object WorldObject
---@return number textId Key to the npc_text database table
function Player:GetGossipTextId(object) end

---Returns the Players Group object
---@return Group group
function Player:GetGroup() end

---Returns Group invitation
---@return Group group
function Player:GetGroupInvite() end

---Returns the Players Guild object
---@return Guild guild
function Player:GetGuild() end

---Returns the Players current Guild ID
---@return number guildId
function Player:GetGuildId() end

---Returns the name of the Players current Guild
---@return string guildName
function Player:GetGuildName() end

---Returns the Players current guild rank
---@return number guildRank
function Player:GetGuildRank() end

---Returns health bonus from amount of stamina
---@return number bonus
function Player:GetHealthBonusFromStamina() end

---Returns last week's standing position
---@return number standingPos
function Player:GetHonorLastWeekStandingPos() end

---Returns the Players current amount of Honor Points
---@return number honorPoints
function Player:GetHonorPoints() end

---Returns Player kills
---@param honorable boolean If victims are honorable.
---@return number kills
function Player:GetHonorStoredKills(honorable) end

---Returns the amount of time the Player has spent ingame
---@return number inGameTime
function Player:GetInGameTime() end

---Returns an Item from the player by entry.\
---The item can be equipped, in bags or in bank.
---@param entryId number
---@return Item item
function Player:GetItemByEntry(entryId) end

---Returns an Item from the player by guid.\
---The item can be equipped, in bags or in bank.
---@param guid number
---@return Item item An item guid.
function Player:GetItemByGUID(guid) end

---Returns an item in given bag on given slot.\
---Possible and most commonly used combinations:\
---bag = 255\
---slots 0-18 equipment\
---slots 19-22 equipped bag slots\
---slots 23-38 backpack\
---slots 39-66 bank main slots\
---slots 67-74 bank bag slots\
---slots 86-117 keyring\
---bag = 19-22\
---slots 0-35 for equipped bags\
---bag = 67-74\
---slots 0-35 for bank bags
---@param bag number The bag the Item is in, you can get this with `Item:GetBagSlot`.
---@param slot number The slot the Item is in within the bag, you can get this with `Item:GetSlot`.
---@return Item item
function Player:GetItemByPos(bag, slot) end

---Returns amount of the specified Item the Player has.
---@param entry number
---@return number itemAmount
function Player:GetItemCount(entry) end

---Returns amount of the specified Item the Player has.
---@param entry number
---@param checkinBank boolean
---@return number itemAmount
function Player:GetItemCount(entry, checkinBank) end

---Returns the Players current latency in MS
---@return number latency
function Player:GetLatency() end

---Returns the Players time played at current level
---@return number currLevelPlayTime
function Player:GetLevelPlayedTime() end

---Returns the Players lifetime Honorable Kills
---@return number lifetimeKills
function Player:GetLifetimeKills() end

---Returns the amount of mails in the player's mailbox.
---@return number mailCount
function Player:GetMailCount() end

---Returns a mailed Item by guid.
---@param guid number An Item Guid
---@return Item item
function Player:GetMailItem(guid) end

---Returns mana bonus from amount of intellect
---@return number bonus
function Player:GetManaBonusFromIntellect() end

---Returns max value of specified skill
---@param skill number
---@return number value
function Player:GetMaxSkillValue(skill) end

---Returns a random Raid Member Player object within radius specified of Player
---@param radius number
---@return Player player
function Player:GetNextRandomRaidMember(radius) end

---Returns Players original Group object
---@return Group group
function Player:GetOriginalGroup() end

---Returns Players original sub group
---@return number subGroup
function Player:GetOriginalSubGroup() end

---Returns the normal phase of the player instead of the actual phase possibly containing GM phase
---@return number phaseMask
function Player:GetPhaseMaskForSpawn() end

---Returns the Players IP address
---@return string IP
function Player:GetPlayerIP() end

---Gets a setting value for the Player
---@param source string
---@param index number
function Player:GetPlayerSettingValue(source, index) end

---Returns max value of specified skill without bonus'
---@param skill number
---@return number pureVal
function Player:GetPureMaxSkillValue(skill) end

---Returns skill value without bonus'
---@param skill number
---@return number pureval
function Player:GetPureSkillValue(skill) end

---Returns the quest level of the Players Quest specified by object
---@param questId number
---@return QuestStatus questRewardStatus
function Player:GetQuestLevel(questId) end

---Returns true if the Players Quest specified by entry ID has been rewarded, false otherwise.
---@param questId number
---@return boolean questRewardStatus
function Player:GetQuestRewardStatus(questId) end

---Returns the status of the Players Quest specified by entry ID
---@param questId number
---@return QuestStatus questStatus
function Player:GetQuestStatus(questId) end

---Returns rank points
---@return number rankPoints
function Player:GetRankPoints() end

---Returns the amount of reputation the Player has with the faction specified
---@param faction number
---@return number reputationAmount
function Player:GetReputation(faction) end

---Returns the Players reputation rank of faction specified
---@param faction number
---@return ReputationRank rank
function Player:GetReputationRank(faction) end

---Returns Quest required Creature or GameObject count
---@param quest number Entry of a quest. 
---@param entry number Entry of required Creature. 
---@return number count
function Player:GetReqKillOrCastCurrentCount(quest, entry) end

---Returns the Players current resting bonus
---@return number restBonus
function Player:GetRestBonus() end

---Returns the Players currently selected Unit object
---@return Unit unit
function Player:GetSelection() end

---Returns the Players current shield block value
---@return number blockValue
function Player:GetShieldBlockValue() end

---Returns skill permanent bonus value
---@param skill number
---@param bonusVal number
function Player:GetSkillPermBonusValue(skill, bonusVal) end

---Returns skill temporary bonus value
---@param skill number
---@param bonusVal number
function Player:GetSkillTempBonusValue(skill, bonusVal) end

---Returns Skill value
---@param skill number Skill ID
---@return number value
function Player:GetSkillValue(skill) end

---Returns the amount of available specs the Player currently has
---@return number specCount
function Player:GetSpecsCount() end

---Returns the Players cooldown delay by specified Spell ID
---@param spellId number The spell Id
---@return number spellCooldownDelay
function Player:GetSpellCooldownDelay(spellId) end

---Get the Players current sub-group
---@return number subGroup
function Player:GetSubGroup() end

---Returns the Players current teamId
---@return TeamId teamId
function Player:GetTeam() end

---Gets the Players total played time
---@return number totalPlayTime
function Player:GetTotalPlayedTime() end

---Returns the Player that is currently trading with the player
---@return Player trader
function Player:GetTrader() end

---Returns the players experience points
---@return number xp
function Player:GetXP() end

---Returns the rested experience bonus
---@param xp number xp
---@return number xpBonus
function Player:GetXPRestBonus(xp) end

---Gives the Player experience
---@param xp number Experience to give
function Player:GiveXP(xp) end

---Gives the Player experience
---@param xp number Experience to give
---@param victim Unit?
function Player:GiveXP(xp, victim) end

---Adds the gossip items to the Players gossip for the quests, the given WorldObject can offer to the players
---@param source WorldObject
function Player:GossipAddQuests(source) end

---Clears the Players current gossip item list.\
---`Note: This is needed when you show a gossip menu without using gossip hello or select hooks which do this automatically. Usually this is needed when using Player is the sender of a Gossip Menu.`
function Player:GossipClearMenu() end

---Closes the Players currently open Gossip Menu.
function Player:GossipComplete() end

---Adds a new item to the gossip menu shown to the Player on next call to Player:GossipSendMenu.\
---sender and intid are numbers which are passed directly to the gossip selection handler. Internally they are partly used for the database gossip handling.
---code specifies whether to show a box to insert text to. The player inserted text is passed to the gossip selection handler.
---money specifies an amount of money the player needs to have to click the option. An error message is shown if the player doesn't have enough money.\
---Note that the money amount is only checked client side and is not removed from the player either. You will need to check again in your code before taking action.
---@param icon number Number that specifies used icon
---@param msg string Label on the gossip item
---@param sender number Number passed to the gossip handlers
---@param intid number Number passed to the gossip handlers
function Player:GossipMenuAddItem(icon, msg, sender, intid) end

---Adds a new item to the gossip menu shown to the Player on next call to Player:GossipSendMenu.\
---sender and intid are numbers which are passed directly to the gossip selection handler. Internally they are partly used for the database gossip handling.
---code specifies whether to show a box to insert text to. The player inserted text is passed to the gossip selection handler.
---money specifies an amount of money the player needs to have to click the option. An error message is shown if the player doesn't have enough money.\
---Note that the money amount is only checked client side and is not removed from the player either. You will need to check again in your code before taking action.
---@param icon number Number that specifies used icon
---@param msg string Label on the gossip item
---@param sender number Number passed to the gossip handlers
---@param intid number Number passed to the gossip handlers
---@param code boolean Show text input on click if true
function Player:GossipMenuAddItem(icon, msg, sender, intid, code) end

---Adds a new item to the gossip menu shown to the Player on next call to Player:GossipSendMenu.\
---sender and intid are numbers which are passed directly to the gossip selection handler. Internally they are partly used for the database gossip handling.
---code specifies whether to show a box to insert text to. The player inserted text is passed to the gossip selection handler.
---money specifies an amount of money the player needs to have to click the option. An error message is shown if the player doesn't have enough money.\
---Note that the money amount is only checked client side and is not removed from the player either. You will need to check again in your code before taking action.
---@param icon number Number that specifies used icon
---@param msg string Label on the gossip item
---@param sender number Number passed to the gossip handlers
---@param intid number Number passed to the gossip handlers
---@param code boolean Show text input on click if true
---@param popup string If non empty string, aa popup with the given text shown on click
function Player:GossipMenuAddItem(icon, msg, sender, intid, code, popup) end

---Adds a new item to the gossip menu shown to the Player on next call to Player:GossipSendMenu.\
---sender and intid are numbers which are passed directly to the gossip selection handler. Internally they are partly used for the database gossip handling.
---code specifies whether to show a box to insert text to. The player inserted text is passed to the gossip selection handler.
---money specifies an amount of money the player needs to have to click the option. An error message is shown if the player doesn't have enough money.\
---Note that the money amount is only checked client side and is not removed from the player either. You will need to check again in your code before taking action.
---@param icon number Number that specifies used icon
---@param msg string Label on the gossip item
---@param sender number Number passed to the gossip handlers
---@param intid number Number passed to the gossip handlers
---@param code boolean Show text input on click if true
---@param popup string If non empty string, aa popup with the given text shown on click
---@param money number Required money in Copper
function Player:GossipMenuAddItem(icon, msg, sender, intid, code, popup, money) end

---Sends the current gossip items of the player to him as a gossip menu with header text from the given textId.\
---If sender is a Player then menu_id is mandatory, otherwise it is not used for anything. menu_id is the ID used to trigger the OnGossipSelect registered for players. See Global:RegisterPlayerGossipEvent
---@param npcText number Entry ID of a heaader text in npc_text database table, common default is 100
---@param sender Object Object acting as the source of the sent gossip menu
function Player:GossipSendMenu(npcText, sender) end

---Sends the current gossip items of the player to him as a gossip menu with header text from the given textId.\
---If sender is a Player then menu_id is mandatory, otherwise it is not used for anything. menu_id is the ID used to trigger the OnGossipSelect registered for players. See Global:RegisterPlayerGossipEvent
---@param npcText number Entry ID of a heaader text in npc_text database table, common default is 100
---@param sender Object Object acting as the source of the sent gossip menu
---@param menu_id number? If sender is a player then menuId is mandatory
function Player:GossipSendMenu(npcText, sender, menu_id) end

---Sends POI to the location on your map
---@param x number
---@param y number
---@param icon number
---@param flags number
---@param data number
---@param iconText string
function Player:GossipSendPOI(x, y, icon, flags, data, iconText) end

---Creates a new [Group] with the creator [Player] as leader.
---@param invited Player
---@return Group group
function Player:GroupCreate(invited) end

---Completes a [Quest] if in a [Group]
---@param quest number quest Id
---@param object WorldObject
function Player:GroupEventHappens(quest, object) end

---Makes the [Player] invite another player to a group.
---@param invited Player player to invite
---@return boolean `true` if invitable
function Player:GroupInvite(invited) end

---Returns 'true' if the [Player] has completed the specified achievement, 'false' otherwise.
---@param achievementId number
---@return boolean hasAchieved
function Player:HasAchieved(achievementId) end

---Returns true if [Player] has specified login flag
---@param flag number
---@return boolean hasAtLoginFlag
function Player:HasAtLoginFlag(flag) end

---Returns 'true' if the [Player] has the given amount of item entry specified, 'false' otherwise.
---@param itemId number
---@param count number
---@return boolean hasItem
function Player:HasItem(itemId, count) end

---Returns 'true' if the [Player] has the given amount of item entry specified, 'false' otherwise.
---@param itemId number
---@param count number
---@param check_bank boolean?
---@return boolean hasItem
function Player:HasItem(itemId, count, check_bank) end

---Returns 'true' if the [Player] has an active [Quest] by specific ID, 'false' otherwise.
---@param questId number
---@return boolean hasQuest
function Player:HasQuest(questId) end

---Returns true if [Player] has [Quest] for [GameObject]
---@param entry number
---@return boolean hasQuest
function Player:HasQuestForGO(entry) end

---Returns 'true' if the [Player] has a quest for the item entry specified, 'false' otherwise.
---@param entry number
---@return boolean hasQuest
function Player:HasQuestForItem(entry) end

---Returns 'true' if the [Player] has a skill by specific ID, 'false' otherwise.
---@param skill number
---@return boolean
function Player:HasSkill(skill) end

---Returns 'true' if the [Player] has a [Spell] by specific ID, 'false' otherwise.
---@param spellId number
---@return boolean
function Player:HasSpell(spellId) end

---Returns true if the Spell specified by ID is currently on cooldown for the Player, false otherwise.
---@param spellId number
---@return boolean hasSpellCooldown
function Player:HasSpellCooldown(spellId) end

---Returns true if the Player has a talent by ID in specified spec, false otherwise.
---@param spellId number Talent spellId to check
---@param spec number Specified spec 0 for primary 1 for secondary
---@return boolean hasTalent
function Player:HasTalent(spellId, spec) end

---Returns true if the Player has a title by specific ID, false otherwise.
---@param titleId number
---@return boolean hasTitle
function Player:HasTitle(titleId) end

---Returns true if the Player is currently in an arena, false otherwise.
---@return boolean inArena
function Player:InArena() end

---Returns true if the Player is currently in a BattleGround, false otherwise.
---@return boolean inBattleGround
function Player:InBattleground() end

---Returns true if the Player is currently in a BattleGround queue, false otherwise.
---@return boolean inBattleGroundQueue
function Player:InBattlegroundQueue() end

---Sets the given quest entry incomplete for the Player.
---@param entry number Quest Entry
function Player:IncompleteQuest(entry) end

---Returns true if the Player is accepting whispers, false otherwise.
---@return boolean isAcceptingWhispers
function Player:IsAcceptingWhispers() end

---Returns true if the Player is 'Away From Keyboard' flagged, false otherwise.
---@return boolean isAFK
function Player:IsAFK() end

---Returns true if the Player is a part of the Alliance faction, false otherwise.
---@return boolean isAlliance
function Player:IsAlliance() end

---Returns true if the Player is 'Do Not Disturb' flagged, false otherwise.
---@return boolean isDND
function Player:IsDND() end

---Returns true if the Player is currently falling, false otherwise.
---@return boolean isFalling
function Player:IsFalling() end

---Returns true if the Player is currently flying, false otherwise.
---@return boolean isFlying
function Player:IsFlying() end

---Returns true if the Player is a Game Master, false otherwise.-
---Note: *This is only true when GM tag is activated! For alternative see Player:GetGMRank*
---@return boolean isGM
function Player:IsGM() end

---**DO NOT USE, UNDOCUMENTED**
function Player:IsGMChat() end

---**DO NOT USE, UNDOCUMENTED**
function Player:IsGMVisible() end

---**DO NOT USE, UNDOCUMENTED**
function Player:IsGroupVisibleFor() end

---Returns true if the Player is eligible for Honor or XP gain by Unit specified, false otherwise.
---@param unit Unit
---@return boolean isHonorOrXPTarget
function Player:IsHonorOrXPTarget(unit) end

---Returns true if the Player is a part of the Horde faction, false otherwise.
---@return boolean isHorde
function Player:IsHorde() end

---Returns true if the Player is immune to everything.
---@return boolean isImmune
function Player:IsImmuneToDamage() end

---Returns true if the Player is in an arena team specified by type, false otherwise.
---@param type number
---@return boolean isInArenaTeam
function Player:IsInArenaTeam(type) end

---Returns true if the Player is in a Group, false otherwise.
---@return boolean isInGroup
function Player:IsInGroup() end

---Returns true if the Player is in a Guild, false otherwise.
---@return boolean isInGuild
function Player:IsInGuild() end

---Returns true if the Player is currently in the same Group as another Player by object, false otherwise.
---@param player Player
---@return boolean isInSameGroupWith
function Player:IsInSameGroupWith(player) end

---Returns true if the Player is currently in the same raid as another Player by object, false otherwise.
---@param player Player
---@return boolean isInSameRaidWith
function Player:IsInSameRaidWith(player) end

---Returns true if the Player is currently in water, false otherwise.
---@return boolean isInWater
function Player:IsInWater() end

---Returns true if the Player is currently moving, false otherwise.
---@return boolean isMoving
function Player:IsMoving() end

---Returns true if the Player is currently rested, false otherwise.
---@return boolean isRested
function Player:IsRested() end

---Returns true if the Player has taxi cheat activated, false otherwise.
---@return boolean isTaxiCheater
function Player:IsTaxiCheater() end

---Returns true if the Player can see anoter Player specified by object, false otherwise.
---@param player Player
---@return boolean isVisibleForPlayer
function Player:IsVisibleForPlayer(player) end

---Kicks the Player from the server
function Player:KickPlayer() end

---Gives Quest monster killed credit
---@param entry number Entry of a creature
function Player:KilledMonsterCredit(entry) end

---Kills the Player
function Player:KillPlayer() end

---Teaches the Player the Spell specified by entry ID
---@param spellId number
function Player:LearnSpell(spellId) end

---Learn the Player the talent specified by talent_id and talentRank
---@param talent_id number
---@param talentRank number
function Player:LearnTalent(talent_id, talentRank) end

---Forces the Player to leave a BattleGround
---@param teleToEntry boolean
function Player:LeaveBattleground(teleToEntry) end

---Forces the Player to log out
---@param saveToDB boolean
function Player:LogoutPlayer(saveToDB) end

---Adds or detracts from the Players current Arena Points
---@param amount number
function Player:ModifyArenaPoints(amount) end

---Adds or detracts from the Players current Honor Points
---@param amount number
function Player:ModifyHonorPoints(amount) end

---Adds or subtracts from the Players money in copper
---@param copperAmount number Negative to remove, positive to add. 
function Player:ModifyMoney(copperAmount) end

---Mutes the Player for the amount of seconds specified
---@param muteTime number
function Player:Mute(muteTime) end

---Remove cooldowns on spells that have less than 10 minutes of cooldown from the Player, similarly to when you enter an arena.
function Player:RemoveArenaSpellCooldowns() end

---Loots Player's bones for insignia
---@param looter Player
function Player:RemovedInsignia(looter) end

---Forcefully removes the Player from a BattleGround raid group
function Player:RemoveFromBattlegroundRaid() end

---Forces the Player to leave a Group
function Player:RemoveFromGroup() end

---Removes the given amount of the specified Item from the player.
---@param entry Item | number Item or entry of item to remove
---@param itemCount number amount of item to remove
function Player:RemoveItem(entry, itemCount) end

---Removes specified amount of lifetime kills
---@param amount number Kills to remove
function Player:RemoveLifetimeKills(amount) end

---Removes the given quest entry from the Player.
---@param entry number Quest entry
function Player:RemoveQuest(entry) end

---Removes the Spell from the Player
---@param entry number entry of spell
function Player:RemoveSpell(entry) end

---Reset the Players completed achievements
function Player:ResetAchievements() end

---Resets all of the Player's cooldowns
function Player:ResetAllCooldowns() end

---Resets the Players weekly honor status
function Player:ResetHonor() end

---Resets the Players pets talent points
function Player:ResetPetTalents() end

---Resets cooldown of the specified spell
---@param spellId number
function Player:ResetSpellCooldown(spellId) end

---Resets cooldown of the specified spell
---@param spellId number
---@param update boolean
function Player:ResetSpellCooldown(spellId, update) end

---Resets the Players talents
---@param noCost boolean
function Player:ResetTalents(noCost) end

---Returns the Players accumulated talent reset cost
function Player:ResetTalentsCost() end

---Resets cooldown of the specified category
---@param category number
function Player:ResetTypeCooldowns(category) end

---Resets cooldown of the specified category
---@param category number
---@param update boolean
function Player:ResetTypeCooldowns(category, update) end

---Resurrects the Player.
---@param healthPercent number
function Player:ResurrectPlayer(healthPercent) end

---Resurrects the Player.
---@param healthPercent number
---@param ressSickness boolean Add rez sickness
function Player:ResurrectPlayer(healthPercent, ressSickness) end

---Rewards the given quest entry for the Player if he has completed it.
---@param entry number Quest entry
function Player:RewardQuest(entry) end

---Saves the Player to the database
function Player:SaveToDB() end

---Sends say text from the Player
---@param text string
---@param lang number Language the Player will speak
function Player:Say(text, lang) end

---Sends addon message to the Player receiver
---@param prefix string
---@param message string
---@param channel ChatMsg
---@param receiver Player
function Player:SendAddonMessage(prefix, message, channel, receiver) end

---Sends an Area Trigger Message to the Player
---@param message string
function Player:SendAreaTriggerMessage(message) end

---Sends an auction house window to the Player from the Unit specified
---@param sender Unit
function Player:SendAuctionMenu(sender) end

---Sends a Broadcast Message to the Player
---@param message string
function Player:SendBroadcastMessage(message) end

---Starts a cinematic for the Player
---@param cinematicSequenceId number Entry of cinematic
function Player:SendCinematicStart(cinematicSequenceId) end

---Sends a guild invitation from the Players Guild to the Player object specified
---@param invitee Player
function Player:SendGuildInvite(invitee) end

---Sends a vendor window to the Player from the WorldObject specified.
---@param sender WorldObject
function Player:SendListInventory(sender) end

---Sends a vendor window to the Player from the WorldObject specified.
---@param sender WorldObject
---@param vendorEntryId number the vendor entry id from npc_vendor table
function Player:SendListInventory(sender, vendorEntryId) end

---Starts a movie for the Player
---@param movieId number entry of the movie
function Player:SendMovieStart(movieId) end

---Sends a Notification to the Player
---@param message string
function Player:SendNotification(message) end

---Sends a WorldPacket to the Player
---@param packet WorldPacket
function Player:SendPacket(packet) end

---Sends a WorldPacket to the Player
---@param packet WorldPacket
---@param selfOnly boolean
function Player:SendPacket(packet, selfOnly) end

---Shows a quest accepting window to the Player for the given quest.
---@param questId number entry of a quest
function Player:SendQuestTemplate(questId) end

---Shows a quest accepting window to the Player for the given quest.
---@param questId number entry of a quest
---@param activateAccept boolean Auto finisht the quest
function Player:SendQuestTemplate(questId, activateAccept) end

---Sends a bank window to the Player from the WorldObject specified.
---@param sender WorldObject
function Player:SendShowBank(sender) end

---Shows the mailbox window to the player from specified guid.
---@param guid number Guid of the mailbox window sender
function Player:SendShowMailBox(guid) end

---Sends a spirit resurrection request to the Player
function Player:SendSpiritResurrect() end

---Sends a tabard vendor window to the Player from the WorldObject specified
---@param sender WorldObject
function Player:SendTabardVendorActivate(sender) end

---Sends a flightmaster window to the Player from the Creature specified
---@param sender Creature
function Player:SendTaxiMenu(sender) end

---Sends a trainer window to the Player from the Creature specified
---@param sender Creature
function Player:SendTrainerList(sender) end

---Sends an update for the world state to the Player
---@param field number
---@param value number
function Player:SendUpdateWorldState(field, value) end

---Toggles whether the Player accepts whispers or not
---@param acceptWhispers boolean
function Player:SetAcceptWhispers(acceptWhispers) end

---Adds the specified achievement to the Players
---@param achievementId number
function Player:SetAchievement(achievementId) end

---Sets the Players Arena Points to the amount specified
---@param arenaPoints number
function Player:SetArenaPoints(arenaPoints) end

---Sets the Players login flag to the flag specified
---@param flag number
function Player:SetAtLoginFlag(flag) end

---Sets the Players home location to the location specified
---@param x number
---@param y number
---@param z number
---@param mapId number
---@param areaId number
function Player:SetBindPoint(x, y, z, mapId, areaId) end

---Sets the Players amount of money to copper specified
---@param copperAmount number
function Player:SetCoinage(copperAmount) end

---Sets the Players intoxication level to the level specified
---@param drunkValue number
function Player:SetDrunkValue(drunkValue) end

---Sets the Players faction standing to that of the race specified
---@param raceId number
function Player:SetFactionForRace(raceId) end

---Toggle the Players FFA flag
---@param applyFFA boolean
function Player:SetFFA(applyFFA) end

---Sets the Players free talent points to the amount specified for the current spec
---@param talentPointAmt number
function Player:SetFreeTalentPoints(talentPointAmt) end

---Toggles the Players GM mode on or off
---@param setGmMode boolean
function Player:SetGameMaster(setGmMode) end

---@alias Gender
---| 0 # GENDER_MALE
---| 1 # GENDER_FEMALE

---Sets the Players gender to gender specified
---@param gender Gender
function Player:SetGender(gender) end

---Adds a glyph specified by glyphId to the Player's current talent specialization into the slot with the index slotIndex
---@param glyphId number
---@param slotIndex number
function Player:SetGlyph(glyphId, slotIndex) end

---Toggle Blizz (GM) tag
---@param on boolean
function Player:SetGMChat(on) end

---Toggles whether the Player has GM visibility on or off
---@param gmVisible boolean
function Player:SetGMVisible(gmVisible) end

---Sets the Players guild rank to the rank specified
---@param rank number
function Player:SetGuildRank(rank) end

---Sets last week's honor standing position
---@param standingPos number
function Player:SetHonorLastWeekStandingPos(standingPos) end

---Sets the Players Honor Points to the amount specified
---@param honorPoints number
function Player:SetHonorPoints(honorPoints) end

---Sets kills
---@param kills number
function Player:SetHonorStoredKills(kills) end

---Sets kills
---@param kills number
---@param honorable boolean If victims were honorable
function Player:SetHonorStoredKills(kills, honorable) end

---Adds the specified title to the Players list of known titles
---@param titleId number
function Player:SetKnownTitle(titleId) end

---Sets the Players amount of Lifetime Honorable Kills to the value specified
---@param honorableKills number
function Player:SetLifetimeKills(honorableKills) end

---Locks the player controls and disallows all movement and casting.
---@param apply boolean
function Player:SetPlayerLock(apply) end

---Toggles PvP Death
---@param on boolean
function Player:SetPvPDeath(on) end

---Sets Quest state
---@param entry number
---@param status number
function Player:SetQuestStatus(entry, status) end

---Sets rank points
---@param rankPoints number
function Player:SetRankPoints(rankPoints) end

---Sets the Players reputation amount for the faction specified
---@param factionId number
---@param reputationValue number
function Player:SetReputation(factionId, reputationValue) end

---Sets the Players rest bonus to the amount specified
---@param restBonus number
function Player:SetRestBonus(restBonus) end

---Sets the Players sheathe state to the state specified
---@param sheatheState number
function Player:SetSheath(sheatheState) end

---Sets (increases) skill of the Player
---@param id number
---@param step number
---@param currVal number
---@param maxVal number
function Player:SetSkill(id, step, currVal, maxVal) end

---Toggles whether the Player has taxi cheat enabled or not
---@param taxiCheat boolean
function Player:SetTaxiCheat(taxiCheat) end

---Converts Player's corpse to bones
function Player:SpawnBones() end

---Attempts to start the taxi/flying to the given pathID
---@param pathId number pathId from DBC or Global:AddTaxiPath
function Player:StartTaxi(pathId) end

---Sends a summon request to the player from the given summoner
---@param summoner Unit
function Player:SummonPlayer(summoner) end

---Gives Quest monster talked to credit
---@param entry number
---@param creature Creature
function Player:TalkedToCreature(entry, creature) end

---Teleports a Player to the location specified
---@param mappId number
---@param xCoord number
---@param yCoord number
---@param zCoord number
---@param orientation number
function Player:Teleport(mappId, xCoord, yCoord, zCoord, orientation) end

---Sends a text emote from the Player
---@param emoteText string
function Player:TextEmote(emoteText) end

---Toggle the Players 'Away From Keyboard' flag
function Player:ToggleAFK() end

---Toggle the Players 'Do Not Disturb' flag
function Player:ToggleDND() end

---Unbinds the Player from his instances except the one he currently is in.
function Player:UnbindAllInstances() end

---Unbinds the Player from his instances except the one he currently is in.\
---Difficulty is not used on classic.
---@param map number
function Player:UnbindInstance(map) end

---Unbinds the Player from his instances except the one he currently is in.\
---Difficulty is not used on classic.
---@param map number
---@param difficulty number
function Player:UnbindInstance(map, difficulty) end

---Removes a title by ID from the Players list of known titles
---@param titleId number
function Player:UnsetKnownTitle(titleId) end

---Updates the Players weekly honor status
function Player:UpdateHonor() end

---Sets a setting value for the Player
---@param source string
---@param index number
---@param value number
function Player:UpdatePlayerSetting(source, index, value) end

---Sends whisper text from the Player
---@param text string
---@param lang number Lnaguage the Player will speak
---@param receiver Player Is the Player that will receive the whisper, if TrinityCore
---@param guid number Is the GUID of the player that will receive the whisper, not TrinityCore
function Player:Whisper(text, lang, receiver, guid) end

---Sends yell text from the Player
---@param text string Text for the Player to yells
---@param lang number Lnaguage the Player will speak
function Player:Yell(text, lang) end
