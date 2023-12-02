---@meta

---Non-Player controlled Units (i.e. NPCs).
---@class Creature:Unit
Creature = {}

---Adds a loot mode to the Creature
---@param lootMode number
function Creature:AddLootMode(lootMode) end

---Make the Creature attack target.
---@param target Unit
function Creature:AttackStart(target) end

---Make the Creature call for assistance in combat from other nearby Creatures.
function Creature:CallAssistance() end

---Make the Creature call for help in combat from friendly Creatures within radius.
---@param radius number
function Creature:CallForHelp(radius) end

---Returns true if the Creature can start attacking nearby hostile Units, and returns false otherwise.
---@return boolean canAggro
function Creature:CanAggro() end

---Returns true if the Creature can assist friend in combat against enemy, and returns false otherwise.
---@param friend Unit The Unit we will be assisting
---@param enemy Unit The unit that we would attack if we assist `friend`
---@param checkFaction boolean? If `true`, the Creature must be the same faction as `friend` to assist
---@return boolean canAssist
function Creature:CanAssistTo(friend, enemy, checkFaction) end

---Returns true if the Creature completes the Quest with the ID questID, and returns false otherwise.
---@param questId number The ID of a `Quest`
---@return boolean completesQuest
function Creature:CanCompleteQuest(questId) end

---Returns `true` if the `Creature` can fly, and returns `false` otherwise.
---@return boolean canFly
function Creature:CanFly() end

---Returns `true` if the Creature can start attacking specified target
---Does not work on most targets
---@param target Unit
---@param force boolean? Force the `creature` to attack
function Creature:CanStartAttack(target, force) end

---Returns `true` if the Creature can move through deep water, and returns false otherwise.
---@return boolean canSwim
function Creature:CanSwim() end

---Returns `true` if the Creature can move on land, and returns false otherwise.
---@return boolean canWalk
function Creature:CanWalk() end

---Despawn this `Creature`.
---@param delay number Delay to despawn in milliseconds
function Creature:DespawnOrUnsummon(delay) end

---Make the Creature flee combat to get assistance from a nearby friendly Creature.
function Creature:FleeToGetAssistance() end

---Returns the Creature's AI name.
---@return string AIName
function Creature:GetAIName() end

---Returns a target from the Creature's threat list based on the supplied arguments.
---@param targetType SelectAggroTarget How the threat list should be sorted
---@param playerOnly boolean? If `true`, skips targets that aren't players
---@param position number? Used as an offset inot the threat list. If targetType is random, used as the number of players from top of aggro to choose from.
---@param distance number?
---@param aura number? If positive, the target must have this Aura. If negative, the the target must not have this Aura.
---@return Unit? target The target or nil
function Creature:GetAITarget(targetType, playerOnly, position, distance, aura) end

---Returns all Units in the Creature's threat list.
---@return table targets
function Creature:GetAITargets() end

---Returns the number of Units in this Creature's threat list.
---@return number targetsCount
function Creature:GetAITargetsCount() end

---Returns the aggro range of the Creature for target.
---@param target Unit
---@return number aggroRange
function Creature:GetAggroRange(target) end

---Returns the effective aggro range of the Creature for target.
---If this is smaller than the minimum aggro range set in the config file, that is used as the aggro range instead.
---@param target Unit
---@return number attackDistance
function Creature:GetAttackDistance(target) end

---Returns the delay between when the Creature dies and when its body despawns.
---@return number corpseDelay The delay in seconds
function Creature:GetCorpseDelay() end

---Returns the Creature's creature family ID (enumerated in CreatureFamily.dbc).
---@return CreatureFamily creatureFamily
function Creature:GetCreatureFamily() end

---Returns the Creature's cooldown for spellID.
---@param spellId number
---@return number cooldown
function Creature:GetCreatureSpellCooldownDelay(spellId) end

---Returns the current waypoint ID of the Creature.
---@return number wpId
function Creature:GetCurrentWaypointId() end

---Returns the guid of the Creature that is used as the ID in the database
---@return number dbguid
function Creature:GetDBTableGUIDLow() end

---Returns the default movement type for this Creature.
---@return MovementGeneratorType defaultMovementType
function Creature:GetDefaultMovementType() end

---@alias ExtraFlags number
---Returns the Creature's Extra flags.
---These are used to control whether the NPC is a civilian, uses pathfinding, if it's a guard, etc.
---@return ExtraFlags extraFlags
function Creature:GetExtraFlags() end

---Returns position the Creature returns to when evading from combat or respawning.
---@return { x:number, y: number, z: number, o: number }
function Creature:GetHomePosition() end

---This method is **undocumented**. Use at your own risk.
---@return number
function Creature:GetLootMode() end

---Returns the Player that can loot this Creature.
---@return Player? lootRecipient
function Creature:GetLootRecipient() end

---Returns the Group that can loot this Creature.
---@return Group? lootRecipientGroup
function Creature:GetLootRecipientGroup() end

---Returns the Creature's NPC flags.
---@return NPCFlags npcFlags
function Creature:GetNPCFlags() end

---Returns the time it takes for this Creature to respawn once killed.
---@return number respawnDelay The respawn delay, in seconds
function Creature:GetRespawnDelay() end

---Returns the Creature's script ID.
---Every C++ script name is assigned unique ID by the core. This returns the ID for this Creature's script name.
---@return number scriptID
function Creature:GetScriptId() end

---Returns the Creature's script name.
---This is used by the core to apply C++ scripts to the Creature.
---It is not used by Eluna. Eluna will override AI scripts.
---@return string scriptName
function Creature:GetScriptName() end

---Returns the Creature's shield block value.
---@return number shieldBlockValue
function Creature:GetShieldBlockValue() end

---Returns the Creature's Unit flags.
---@return UnitFlags unitFlags
function Creature:GetUnitFlags() end

---Returns the Creature's Unit flags.
---@return UnitFlags2 unitFlags2
function Creature:GetUnitFlags2() end

---Returns the radius the Creature is permitted to wander from its respawn point.
---@return number wanderRadius
function Creature:GetWanderRadius() end

---Returns the current waypoint path ID of the Creature.
---@return number pathId
function Creature:GetWaypointPath() end

---Returns true if the Creature cannot cast spellId due to a category cooldown, and returns false otherwise.
---@param spellId number The ID of a `Spell`
---@return boolean hasCooldown
function Creature:HasCategoryCooldown(spellId) end

---Returns true if Creature has the specified loot mode
---@param lootMode number
---@return boolean hasLootMode
function Creature:HasLootMode(lootMode) end

---Returns true if the Creature will give its loot to a Player or Group, and returns false otherwise.
---@return boolean hasLootRecipient
function Creature:HasLootRecipient() end

---Returns true if the Creature starts the Quest questId, and returns false otherwise.
---@param questId number The ID of a `Quest`
---@return boolean hasQuest
function Creature:HasQuest(questId) end

---Returns true if the Creature has searched for combat assistance already, and returns false otherwise.
---@return boolean searchedForAssistance
function Creature:HasSearchedAssistance() end

---Returns true if the Creature can cast spellId when mind-controlled, and returns false otherwise.
---@param spellId number The ID of a `Spell`
---@return boolean hasSpell
function Creature:HasSpell(spellId) end

---Returns true if the Creature has spellId on cooldown, and returns false otherwise.
---@param spellId number The ID of a `Spell`
---@return boolean hasCooldown
function Creature:HasSpellCooldown(spellId) end

---Returns true if the Creature is a civilian, and returns false otherwise.
---@return boolean isCivilian
function Creature:IsCivilian() end

---Returns true if the Creature is damaged enough for looting
---@return boolean isDamagedEnough
function Creature:IsDamageEnoughForLootingAndReward() end

---Returns `true` if the [Creature]'s flags_extra includes Dungeon Boss (0x1000000), and returns `false` otherwise.
---@return boolean isDungeonBoss
function Creature:IsDungeonBoss() end

---Returns true if the Creature's rank is Elite or Rare Elite, and returns false otherwise.
---@return boolean isElite
function Creature:IsElite() end

---Returns true if the Creature is a city guard, and returns false otherwise.
---@return boolean isGuard
function Creature:IsGuard() end

---Returns true if the Creature is returning to its spawn position from combat, and returns false otherwise.
---@return boolean inEvadeMode
function Creature:IsInEvadeMode() end

---Returns true if the Creature is the leader of a player faction, and returns false otherwise.
---@return boolean isLeader
function Creature:IsRacialLeader() end

---Returns true if the Creature can regenerate health, and returns false otherwise.
---@return boolean isRegenerating
function Creature:IsRegeneratingHealth() end

---Returns true if the Creature is set to not give reputation when killed, and returns false otherwise.
---@return boolean reputationDisabled
function Creature:IsReputationGainDisabled() end

---Returns true if the Creature will give its loot to player, and returns false otherwise.
---@return boolean tapped
function Creature:IsTappedBy() end

---Returns true if the Creature can be targeted for attack, and returns false otherwise.
---@param mustBeDead boolean If true, only returns true if the Creature is also dead. Otherwise, it must be alive.. 
---@return boolean targetable
function  Creature:IsTargetableForAttack(mustBeDead) end

---Returns true if the Creature is an invisible trigger, and returns false otherwise.
---@return boolean isTrigger
function Creature:IsTrigger() end

---Returns true if the Creature's rank is Boss, and returns false otherwise.
---@return boolean isWorldBoss
function Creature:IsWorldBoss() end

---Make the Creature start following its waypoint path.
function Creature:MoveWaypoint() end

---Remove this Creature's corpse.
function Creature:RemoveCorpse() end

---Removes specified loot mode from Creature
---@param lootMode number
function Creature:RemoveLootMode(lootMode) end

---Resets Creature's loot mode to default
function Creature:ResetLootMode() end

---Respawn this Creature.
function Creature:Respawn() end

---Save the Creature in the database.
function Creature:SaveToDB() end

---Make the Creature try to find a new target.\
---*This should be called every update cycle for the Creature's AI.*
function Creature:SelectVictim() end


---Sets whether the Creature can be aggroed.
---@param allow boolean `true` to allow aggro
function Creature:SetAggroEnabled(allow) end

---Sets the Creature's death state to deathState.
---@param deathState DeathState
function Creature:SetDeathState(deathState) end


---Sets the default movement type of the Creature.
---@param type MovementGeneratorType
function Creature:SetDefaultMovementType(type) end

---Makes the Creature able to fly if enabled.
---@param disable boolean
function Creature:SetDisableGravity(disable) end

---Sets whether the Creature gives reputation or not. 
---@param disable boolean `true` to disable reputation, `false` to enable.
function Creature:SetDisableReputationGain(disable) end

---Equips given Items to the Unit. Using 0 removes the equipped Item
---@param main_hand number Main hand `Item`s entry
---@param off_hand number Off hand `Item`s entry
---@param ranged number Ranged `Item`s entry
function Creature:SetEquipmentSlots(main_hand, off_hand, ranged) end

---Sets the position the Creature returns to when evading from combat or respawning.
---@param x number
---@param y number
---@param z number
---@param o number
function Creature:SetHomePosition(x, y, z, o) end

---Sets whether the creature is hovering / levitating or not.
---@param enable boolean `true` to enable hovering, `false` to disable. 
function Creature:SetHover(enable) end

---Sets the Creature as in combat with all Players in the dungeon instance.
---*This is used by raid bosses to prevent Players from using out-of-combat actions once the encounter has begun.*
function Creature:SetInCombatWithZone() end

---This method is undocumented.\ **Use at your own risk.**
---@param lootMode number
function Creature:SetLootMode(lootMode) end

---Sets the Creature's NPC flags to flags.
---@param flags NPCFlags
function Creature:SetNPCFlags(flags) end

---Sets whether the Creature can call nearby enemies for help in combat or not.
---@param enable boolean `true` to disable calling for help, `false` to enable. 
function Creature:SetNoCallAssistance(enable) end

---Sets whether the Creature can search for assistance at low health or not.
---@param enable boolean `true` to disable searching, `false` to enable. 
function Creature:SetNoSearchAssistance(enable) end

---Sets the Creature's ReactState to state.
---@param state ReactState
function Creature:SetReactState(state) end

---Sets whether the Creature can regenerate health or not.
---@param enable boolean
function Creature:SetRegeneratingHealth(enable) end

---Sets the time it takes for the Creature to respawn when killed.
---@param delay number The delay in seconds
function Creature:SetRespawnDelay(delay) end

---Sets the Creature's Unit flags to flags.
---@param flags UnitFlags
function Creature:SetUnitFlags(flags) end

---Sets the Creature's Unit flags2 to flags.
---@param flags UnitFlags2
function Creature:SetUnitFlagsTwo(flags) end

---Sets whether the Creature is currently walking or running.
---@param enable boolean `true` to enable walking, `false` for running
function Creature:SetWalk(enable) end

---Sets the distance the Creature can wander from it's spawn point.
---@param distance number
function Creature:SetWanderRadius(distance) end

---Transform the Creature into another Creature.
---@param entry number The Creature ID to transform into
function Creature:UpdateEntry(entry) end

---Transform the Creature into another Creature.
---@param entry number The Creature ID to transform into
---@param dataGUIDLow number Use this creature's model and equipment instead of the defaults
function Creature:UpdateEntry(entry, dataGUIDLow) end

