---@diagnostic disable: duplicate-index
---@meta
---@enum LocaleConstant
local LocaleConstant = {
    LOCALE_enUS = 0,
    LOCALE_koKR = 1,
    LOCALE_frFR = 2,
    LOCALE_deDE = 3,
    LOCALE_zhCN = 4,
    LOCALE_zhTW = 5,
    LOCALE_esES = 6,
    LOCALE_esMX = 7,
    LOCALE_ruRU = 8
}

---@enum TypeID
local TypeID = {
    TYPEID_OBJECT        = 0,
    TYPEID_ITEM          = 1,
    TYPEID_CONTAINER     = 2,
    TYPEID_UNIT          = 3,
    TYPEID_PLAYER        = 4,
    TYPEID_GAMEOBJECT    = 5,
    TYPEID_DYNAMICOBJECT = 6,
    TYPEID_CORPSE        = 7
}

---@enum CorpseType
local CorpseType = {
    CORPSE_BONES             = 0,
    CORPSE_RESURRECTABLE_PVE = 1,
    CORPSE_RESURRECTABLE_PVP = 2
}

---@enum Team
local Team =
{
    HORDE      = 67,
    ALLIANCE   = 469,
    TEAM_OTHER = 0
}

---@enum BGEvents
local BGEvents = {
    BG_EVENT_ON_START       = 1, -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_ON_END         = 2, -- (event, bg, bgId, instanceId, winner) - Needs to be added to TC
    BG_EVENT_ON_CREATE      = 3, -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_ON_PRE_DESTROY = 4, -- (event, bg, bgId, instanceId) - Needs to be added to TC
    BG_EVENT_COUNT          = 5
}

---@enum BattlegroundBracketId
local BattlegroundBracketId = {
    BG_BRACKET_ID_FIRST = 0,
    BG_BRACKET_ID_LAST  = 15
}

---@enum BattlegroundStatus
local BattlegroundStatus =
{
    STATUS_NONE        = 0, --first status, should mean bg is not instance
    STATUS_WAIT_QUEUE  = 1, --means bg is empty and waiting for queue
    STATUS_WAIT_JOIN   = 2, --this means, that BG has already started and it is waiting for more players
    STATUS_IN_PROGRESS = 3, --means bg is running
    STATUS_WAIT_LEAVE  = 4  --means some faction has won BG and it is ending
}

---@enum BattlegroundTypeId
local BattlegroundTypeId = {
    BATTLEGROUND_TYPE_NONE = 0,  -- None
    BATTLEGROUND_AV        = 1,  -- Alterac Valley
    BATTLEGROUND_WS        = 2,  -- Warsong Gulch
    BATTLEGROUND_AB        = 3,  -- Arathi Basin
    BATTLEGROUND_NA        = 4,  -- Nagrand Arena
    BATTLEGROUND_BE        = 5,  -- Blade's Edge Arena
    BATTLEGROUND_AA        = 6,  -- All Arenas
    BATTLEGROUND_EY        = 7,  -- Eye of the Storm
    BATTLEGROUND_RL        = 8,  -- Ruins of Lordaernon
    BATTLEGROUND_SA        = 9,  -- Strand of the Ancients
    BATTLEGROUND_DS        = 10, -- Dalaran Sewers
    BATTLEGROUND_RV        = 11, -- Ring of Valor
    BATTLEGROUND_IC        = 30, -- Isle of Conquest
    BATTLEGROUND_RB        = 32  -- Random Battleground
}

---@enum SelectAggroTarget
local SelectAggroTarget = {
    SELECT_TARGET_RANDOM = 0,      ---Just selects a random target
    SELECT_TARGET_TOPAGGRO = 1,    ---Selects targets from top aggro to bottom
    SELECT_TARGET_BOTTOMAGGRO = 2, ---Selects targets from bottom aggro to top
    SELECT_TARGET_NEAREST = 3,
    SELECT_TARGET_FARTHEST = 4
}

---@enum CreatureFamily
local CreatureFamily =
{
    CREATURE_FAMILY_NONE           = 0, ---TrinityCore only
    CREATURE_FAMILY_WOLF           = 1,
    CREATURE_FAMILY_CAT            = 2,
    CREATURE_FAMILY_SPIDER         = 3,
    CREATURE_FAMILY_BEAR           = 4,
    CREATURE_FAMILY_BOAR           = 5,
    CREATURE_FAMILY_CROCOLISK      = 6,
    CREATURE_FAMILY_CARRION_BIRD   = 7,
    CREATURE_FAMILY_CRAB           = 8,
    CREATURE_FAMILY_GORILLA        = 9,
    CREATURE_FAMILY_HORSE_CUSTOM   = 10, --- Does not exist in DBC but used for horse like beasts in DB
    CREATURE_FAMILY_RAPTOR         = 11,
    CREATURE_FAMILY_TALLSTRIDER    = 12,
    CREATURE_FAMILY_FELHUNTER      = 15,
    CREATURE_FAMILY_VOIDWALKER     = 16,
    CREATURE_FAMILY_SUCCUBUS       = 17,
    CREATURE_FAMILY_DOOMGUARD      = 19,
    CREATURE_FAMILY_SCORPID        = 20,
    CREATURE_FAMILY_TURTLE         = 21,
    CREATURE_FAMILY_IMP            = 23,
    CREATURE_FAMILY_BAT            = 24,
    CREATURE_FAMILY_HYENA          = 25,
    CREATURE_FAMILY_BIRD_OF_PREY   = 26, ---Named CREATURE_FAMILY_OWL in Mangos
    CREATURE_FAMILY_WIND_SERPENT   = 27,
    CREATURE_FAMILY_REMOTE_CONTROL = 28,
    CREATURE_FAMILY_FELGUARD       = 29, ---This and below is TBC+
    CREATURE_FAMILY_DRAGONHAWK     = 30,
    CREATURE_FAMILY_RAVAGER        = 31,
    CREATURE_FAMILY_WARP_STALKER   = 32,
    CREATURE_FAMILY_SPOREBAT       = 33,
    CREATURE_FAMILY_NETHER_RAY     = 34,
    CREATURE_FAMILY_SERPENT        = 35,
    CREATURE_FAMILY_SEA_LION       = 36, ---TBC only
    CREATURE_FAMILY_MOTH           = 37, ---This and below is WotLK+
    CREATURE_FAMILY_CHIMAERA       = 38,
    CREATURE_FAMILY_DEVILSAUR      = 39,
    CREATURE_FAMILY_GHOUL          = 40,
    CREATURE_FAMILY_SILITHID       = 41,
    CREATURE_FAMILY_WORM           = 42,
    CREATURE_FAMILY_RHINO          = 43,
    CREATURE_FAMILY_WASP           = 44,
    CREATURE_FAMILY_CORE_HOUND     = 45,
    CREATURE_FAMILY_SPIRIT_BEAST   = 46
}

---@enum CreatureEvents
local CreatureEvents = {
    CREATURE_EVENT_ON_ENTER_COMBAT              = 1,  -- (event, creature, target) - Can return true to stop normal action
    CREATURE_EVENT_ON_LEAVE_COMBAT              = 2,  -- (event, creature) - Can return true to stop normal action
    CREATURE_EVENT_ON_TARGET_DIED               = 3,  -- (event, creature, victim) - Can return true to stop normal action
    CREATURE_EVENT_ON_DIED                      = 4,  -- (event, creature, killer) - Can return true to stop normal action
    CREATURE_EVENT_ON_SPAWN                     = 5,  -- (event, creature) - Can return true to stop normal action
    CREATURE_EVENT_ON_REACH_WP                  = 6,  -- (event, creature, type, id) - Can return true to stop normal action
    CREATURE_EVENT_ON_AIUPDATE                  = 7,  -- (event, creature, diff) - Can return true to stop normal action
    CREATURE_EVENT_ON_RECEIVE_EMOTE             = 8,  -- (event, creature, player, emoteid) - Can return true to stop normal action
    CREATURE_EVENT_ON_DAMAGE_TAKEN              = 9,  -- (event, creature, attacker, damage) - Can return true to stop normal action, can return new damage as second return value.
    CREATURE_EVENT_ON_PRE_COMBAT                = 10, -- (event, creature, target) - Can return true to stop normal action
    CREATURE_EVENT_ON_OWNER_ATTACKED            = 12, -- (event, creature, target) - Can return true to stop normal action            -- Not on mangos
    CREATURE_EVENT_ON_OWNER_ATTACKED_AT         = 13, -- (event, creature, attacker) - Can return true to stop normal action          -- Not on mangos
    CREATURE_EVENT_ON_HIT_BY_SPELL              = 14, -- (event, creature, caster, spellid) - Can return true to stop normal action
    CREATURE_EVENT_ON_SPELL_HIT_TARGET          = 15, -- (event, creature, target, spellid) - Can return true to stop normal action
    CREATURE_EVENT_ON_JUST_SUMMONED_CREATURE    = 19, -- (event, creature, summon) - Can return true to stop normal action
    CREATURE_EVENT_ON_SUMMONED_CREATURE_DESPAWN = 20, -- (event, creature, summon) - Can return true to stop normal action
    CREATURE_EVENT_ON_SUMMONED_CREATURE_DIED    = 21, -- (event, creature, summon, killer) - Can return true to stop normal action    -- Not on mangos
    CREATURE_EVENT_ON_SUMMONED                  = 22, -- (event, creature, summoner) - Can return true to stop normal action
    CREATURE_EVENT_ON_RESET                     = 23, -- (event, creature)
    CREATURE_EVENT_ON_REACH_HOME                = 24, -- (event, creature) - Can return true to stop normal action
    CREATURE_EVENT_ON_CORPSE_REMOVED            = 26, -- (event, creature, respawndelay) - Can return true to stop normal action, can return new respawndelay as second return value
    CREATURE_EVENT_ON_MOVE_IN_LOS               = 27, -- (event, creature, unit) - Can return true to stop normal action. Does not actually check LOS, just uses the sight range
    CREATURE_EVENT_ON_DUMMY_EFFECT              = 30, -- (event, caster, spellid, effindex, creature)
    CREATURE_EVENT_ON_QUEST_ACCEPT              = 31, -- (event, player, creature, quest) - Can return true
    CREATURE_EVENT_ON_QUEST_REWARD              = 34, -- (event, player, creature, quest, opt) - Can return true
    CREATURE_EVENT_ON_DIALOG_STATUS             = 35, -- (event, player, creature)
    CREATURE_EVENT_ON_ADD                       = 36, -- (event, creature)
    CREATURE_EVENT_ON_REMOVE                    = 37, -- (event, creature)
}

---@enum GossipEvents
local GossipEvents =
{
    GOSSIP_EVENT_ON_HELLO  = 1, -- (event, player, object) - Object is the Creature/GameObject/Item. Can return false to do default action. For item gossip can return false to stop spell casting.
    GOSSIP_EVENT_ON_SELECT = 2, -- (event, player, object, sender, intid, code, menu_id) - Object is the Creature/GameObject/Item/Player, menu_id is only for player gossip. Can return false to do default action.
}

---@enum MovementGeneratorType
local MovementGeneratorType =
{
    IDLE_MOTION_TYPE                = 0,
    RANDOM_MOTION_TYPE              = 1,
    WAYPOINT_MOTION_TYPE            = 2,
    MAX_DB_MOTION_TYPE              = 3,
    ANIMAL_RANDOM_MOTION_TYPE       = 3, -- TC
    CONFUSED_MOTION_TYPE            = 4,
    CHASE_MOTION_TYPE               = 5,
    HOME_MOTION_TYPE                = 6,
    FLIGHT_MOTION_TYPE              = 7,
    POINT_MOTION_TYPE               = 8,
    FLEEING_MOTION_TYPE             = 9,
    DISTRACT_MOTION_TYPE            = 10,
    ASSISTANCE_MOTION_TYPE          = 11,
    ASSISTANCE_DISTRACT_MOTION_TYPE = 12,
    TIMED_FLEEING_MOTION_TYPE       = 13,
    FOLLOW_MOTION_TYPE              = 14,
    EFFECT_MOTION_TYPE              = 15, -- mangos
    ROTATE_MOTION_TYPE              = 15, -- TC
    EFFECT_MOTION_TYPE              = 16, -- TC
    NULL_MOTION_TYPE                = 17, -- TC
}


---@enum NPCFlags
local NPCFlags = {
    UNIT_NPC_FLAG_NONE               = 0x00000000, --- SKIP
    UNIT_NPC_FLAG_GOSSIP             = 0x00000001, --- TITLE has gossip menu DESCRIPTION 100%
    UNIT_NPC_FLAG_QUESTGIVER         = 0x00000002, --- TITLE is quest giver DESCRIPTION guessed, probably ok
    UNIT_NPC_FLAG_UNK1               = 0x00000004,
    UNIT_NPC_FLAG_UNK2               = 0x00000008,
    UNIT_NPC_FLAG_TRAINER            = 0x00000010, --- TITLE is trainer DESCRIPTION 100%
    UNIT_NPC_FLAG_TRAINER_CLASS      = 0x00000020, --- TITLE is class trainer DESCRIPTION 100%
    UNIT_NPC_FLAG_TRAINER_PROFESSION = 0x00000040, --- TITLE is profession trainer DESCRIPTION 100%
    UNIT_NPC_FLAG_VENDOR             = 0x00000080, --- TITLE is vendor (generic) DESCRIPTION 100%
    UNIT_NPC_FLAG_VENDOR_AMMO        = 0x00000100, --- TITLE is vendor (ammo) DESCRIPTION 100%, general goods vendor
    UNIT_NPC_FLAG_VENDOR_FOOD        = 0x00000200, --- TITLE is vendor (food) DESCRIPTION 100%
    UNIT_NPC_FLAG_VENDOR_POISON      = 0x00000400, --- TITLE is vendor (poison) DESCRIPTION guessed
    UNIT_NPC_FLAG_VENDOR_REAGENT     = 0x00000800, --- TITLE is vendor (reagents) DESCRIPTION 100%
    UNIT_NPC_FLAG_REPAIR             = 0x00001000, --- TITLE can repair DESCRIPTION 100%
    UNIT_NPC_FLAG_FLIGHTMASTER       = 0x00002000, --- TITLE is flight master DESCRIPTION 100%
    UNIT_NPC_FLAG_SPIRITHEALER       = 0x00004000, --- TITLE is spirit healer DESCRIPTION guessed
    UNIT_NPC_FLAG_SPIRITGUIDE        = 0x00008000, --- TITLE is spirit guide DESCRIPTION guessed
    UNIT_NPC_FLAG_INNKEEPER          = 0x00010000, --- TITLE is innkeeper
    UNIT_NPC_FLAG_BANKER             = 0x00020000, --- TITLE is banker DESCRIPTION 100%
    UNIT_NPC_FLAG_PETITIONER         = 0x00040000, --- TITLE handles guild/arena petitions DESCRIPTION 100% 0xC0000 = guild petitions, 0x40000 = arena team petitions
    UNIT_NPC_FLAG_TABARDDESIGNER     = 0x00080000, --- TITLE is guild tabard designer DESCRIPTION 100%
    UNIT_NPC_FLAG_BATTLEMASTER       = 0x00100000, --- TITLE is battlemaster DESCRIPTION 100%
    UNIT_NPC_FLAG_AUCTIONEER         = 0x00200000, --- TITLE is auctioneer DESCRIPTION 100%
    UNIT_NPC_FLAG_STABLEMASTER       = 0x00400000, --- TITLE is stable master DESCRIPTION 100%
    UNIT_NPC_FLAG_GUILD_BANKER       = 0x00800000, --- TITLE is guild banker DESCRIPTION cause client to send 997 opcode
    UNIT_NPC_FLAG_SPELLCLICK         = 0x01000000, --- TITLE has spell click enabled DESCRIPTION cause client to send 1015 opcode (spell click)
    UNIT_NPC_FLAG_PLAYER_VEHICLE     = 0x02000000, --- TITLE is player vehicle DESCRIPTION players with mounts that have vehicle data should have it set
    UNIT_NPC_FLAG_MAILBOX            = 0x04000000  --- TITLE is mailbox
}


---@enum UnitFlags
local UnitFlags = {
    UNIT_FLAG_SERVER_CONTROLLED             = 0x00000001, -- set only when unit movement is controlled by server - by SPLINE/MONSTER_MOVE packets, together with UNIT_FLAG_STUNNED; only set to units controlled by client; client function CGUnit_C::IsClientControlled returns false when set for owner
    UNIT_FLAG_NON_ATTACKABLE                = 0x00000002, -- not attackable, set when creature starts to cast spells with SPELL_EFFECT_SPAWN and cast time, removed when spell hits caster, original name is UNIT_FLAG_SPAWNING. Rename when it will be removed from all scripts
    UNIT_FLAG_REMOVE_CLIENT_CONTROL         = 0x00000004, -- This is a legacy flag used to disable movement player's movement while controlling other units, SMSG_CLIENT_CONTROL replaces this functionality clientside now. CONFUSED and FLEEING flags have the same effect on client movement asDISABLE_MOVE_CONTROL in addition to preventing spell casts/autoattack (they all allow climbing steeper hills and emotes while moving)
    UNIT_FLAG_PLAYER_CONTROLLED             = 0x00000008, -- controlled by player, use _IMMUNE_TO_PC instead of _IMMUNE_TO_NPC
    UNIT_FLAG_RENAME                        = 0x00000010,
    UNIT_FLAG_PREPARATION                   = 0x00000020, -- don't take reagents for spells with SPELL_ATTR5_NO_REAGENT_WHILE_PREP
    UNIT_FLAG_UNK_6                         = 0x00000040,
    UNIT_FLAG_NOT_ATTACKABLE_1              = 0x00000080, -- ?? (UNIT_FLAG_PLAYER_CONTROLLED | UNIT_FLAG_NOT_ATTACKABLE_1) is NON_PVP_ATTACKABLE
    UNIT_FLAG_IMMUNE_TO_PC                  = 0x00000100, -- disables combat/assistance with PlayerCharacters (PC) - see Unit::IsValidAttackTarget, Unit::IsValidAssistTarget
    UNIT_FLAG_IMMUNE_TO_NPC                 = 0x00000200, -- disables combat/assistance with NonPlayerCharacters (NPC) - see Unit::IsValidAttackTarget, Unit::IsValidAssistTarget
    UNIT_FLAG_LOOTING                       = 0x00000400, -- loot animation
    UNIT_FLAG_PET_IN_COMBAT                 = 0x00000800, -- on player pets: whether the pet is chasing a target to attack || on other units: whether any of the unit's minions is in combat
    UNIT_FLAG_PVP_ENABLING                  = 0x00001000, -- changed in 3.0.3, now UNIT_BYTES_2_OFFSET_PVP_FLAG from UNIT_FIELD_BYTES_2
    UNIT_FLAG_SILENCED                      = 0x00002000, -- silenced, 2.1.1
    UNIT_FLAG_CANNOT_SWIM                   = 0x00004000, -- 2.0.8
    UNIT_FLAG_CAN_SWIM                      = 0x00008000, -- shows swim animation in water
    UNIT_FLAG_NON_ATTACKABLE_2              = 0x00010000, -- removes attackable icon, if on yourself, cannot assist self but can cast TARGET_SELF spells - added by SPELL_AURA_MOD_UNATTACKABLE
    UNIT_FLAG_PACIFIED                      = 0x00020000, -- 3.0.3 ok
    UNIT_FLAG_STUNNED                       = 0x00040000, -- 3.0.3 ok
    UNIT_FLAG_IN_COMBAT                     = 0x00080000,
    UNIT_FLAG_ON_TAXI                       = 0x00100000, -- disable casting at client side spell not allowed by taxi flight (mounted?), probably used with 0x4 flag
    UNIT_FLAG_DISARMED                      = 0x00200000, -- 3.0.3, disable melee spells casting..., "Required melee weapon" added to melee spells tooltip.
    UNIT_FLAG_CONFUSED                      = 0x00400000,
    UNIT_FLAG_FLEEING                       = 0x00800000,
    UNIT_FLAG_POSSESSED                     = 0x01000000, -- under direct client control by a player (possess or vehicle)
    UNIT_FLAG_UNINTERACTIBLE                = 0x02000000,
    UNIT_FLAG_SKINNABLE                     = 0x04000000,
    UNIT_FLAG_MOUNT                         = 0x08000000,
    UNIT_FLAG_UNK_28                        = 0x10000000,
    UNIT_FLAG_PREVENT_EMOTES_FROM_CHAT_TEXT = 0x20000000, -- Prevent automatically playing emotes from parsing chat text, for example "lol" in /say, ending message with ? or !, or using /yell
    UNIT_FLAG_SHEATHE                       = 0x40000000,
    UNIT_FLAG_IMMUNE                        = 0x80000000, -- Immune to damage


    ---(UNIT_FLAG_SERVER_CONTROLLED | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_REMOVE_CLIENT_CONTROL |
    ---UNIT_FLAG_PLAYER_CONTROLLED | UNIT_FLAG_RENAME | UNIT_FLAG_PREPARATION | /* UNIT_FLAG_UNK_6 | */
    ---UNIT_FLAG_NOT_ATTACKABLE_1 | UNIT_FLAG_LOOTING | UNIT_FLAG_PET_IN_COMBAT | UNIT_FLAG_PVP_ENABLING |
    ---UNIT_FLAG_SILENCED | UNIT_FLAG_NON_ATTACKABLE_2 | UNIT_FLAG_PACIFIED | UNIT_FLAG_STUNNED |
    ---UNIT_FLAG_IN_COMBAT | UNIT_FLAG_ON_TAXI | UNIT_FLAG_DISARMED | UNIT_FLAG_CONFUSED | UNIT_FLAG_FLEEING |
    ---UNIT_FLAG_POSSESSED | UNIT_FLAG_SKINNABLE | UNIT_FLAG_MOUNT | UNIT_FLAG_UNK_28 |
    ---UNIT_FLAG_PREVENT_EMOTES_FROM_CHAT_TEXT | UNIT_FLAG_SHEATHE | UNIT_FLAG_IMMUNE)
    UNIT_FLAG_DISALLOWED = 0xFDFF3CBF, -- SKIP


    ---(0xFFFFFFFF & ~UNIT_FLAG_DISALLOWED)
    UNIT_FLAG_ALLOWED = 0x200C340 -- SKIP
};

---@enum UnitFlags2
local UnitFlags2 = {
    UNIT_FLAG2_FEIGN_DEATH = 0x00000001,
    UNIT_FLAG2_HIDE_BODY = 0x00000002, -- Hide unit model (show only player equip)
    UNIT_FLAG2_IGNORE_REPUTATION = 0x00000004,
    UNIT_FLAG2_COMPREHEND_LANG = 0x00000008,
    UNIT_FLAG2_MIRROR_IMAGE = 0x00000010,
    UNIT_FLAG2_DO_NOT_FADE_IN = 0x00000020, -- Unit model instantly appears when summoned (does not fade in)
    UNIT_FLAG2_FORCE_MOVEMENT = 0x00000040,
    UNIT_FLAG2_DISARM_OFFHAND = 0x00000080,
    UNIT_FLAG2_DISABLE_PRED_STATS = 0x00000100,         -- Player has disabled predicted stats (Used by raid frames)
    UNIT_FLAG2_UNK_1 = 0x00000200,
    UNIT_FLAG2_DISARM_RANGED = 0x00000400,              -- this does not disable ranged weapon display (maybe additional flag needed?)
    UNIT_FLAG2_REGENERATE_POWER = 0x00000800,
    UNIT_FLAG2_RESTRICT_PARTY_INTERACTION = 0x00001000, -- Restrict interaction to party or raid
    UNIT_FLAG2_PREVENT_SPELL_CLICK = 0x00002000,        -- Prevent spellclick
    UNIT_FLAG2_ALLOW_ENEMY_INTERACT = 0x00004000,
    UNIT_FLAG2_CANNOT_TURN = 0x00008000,
    UNIT_FLAG2_UNK2 = 0x00010000,
    UNIT_FLAG2_PLAY_DEATH_ANIM = 0x00020000,    -- Plays special death animation upon death
    UNIT_FLAG2_ALLOW_CHEAT_SPELLS = 0x00040000, -- Allows casting spells with AttributesEx7 & SPELL_ATTR7_IS_CHEAT_SPELL
    UNIT_FLAG2_UNUSED_1 = 0x00080000,
    UNIT_FLAG2_UNUSED_2 = 0x00100000,
    UNIT_FLAG2_UNUSED_3 = 0x00200000,
    UNIT_FLAG2_UNUSED_4 = 0x00400000,
    UNIT_FLAG2_UNUSED_5 = 0x00800000,
    UNIT_FLAG2_UNUSED_6 = 0x01000000,
    UNIT_FLAG2_UNUSED_7 = 0x02000000,
    UNIT_FLAG2_UNUSED_8 = 0x04000000,
    UNIT_FLAG2_UNUSED_9 = 0x08000000,
    UNIT_FLAG2_UNUSED_10 = 0x10000000,
    UNIT_FLAG2_UNUSED_11 = 0x20000000,
    UNIT_FLAG2_UNUSED_12 = 0x40000000,
    UNIT_FLAG2_UNUSED_13 = 0x80000000,

    ---(UNIT_FLAG2_FEIGN_DEATH | UNIT_FLAG2_IGNORE_REPUTATION | UNIT_FLAG2_COMPREHEND_LANG |
    ---UNIT_FLAG2_MIRROR_IMAGE | UNIT_FLAG2_FORCE_MOVEMENT | UNIT_FLAG2_DISARM_OFFHAND |
    ---UNIT_FLAG2_DISABLE_PRED_STATS | UNIT_FLAG2_UNK_1 | UNIT_FLAG2_DISARM_RANGED |
    --- UNIT_FLAG2_RESTRICT_PARTY_INTERACTION |
    ---UNIT_FLAG2_PREVENT_SPELL_CLICK | UNIT_FLAG2_ALLOW_ENEMY_INTERACT | /* UNIT_FLAG2_UNK2 | */
    --- UNIT_FLAG2_ALLOW_CHEAT_SPELLS | UNIT_FLAG2_UNUSED_1 |
    ---UNIT_FLAG2_UNUSED_2 | UNIT_FLAG2_UNUSED_3 | UNIT_FLAG2_UNUSED_4 | UNIT_FLAG2_UNUSED_5 |
    ---UNIT_FLAG2_UNUSED_6 | UNIT_FLAG2_UNUSED_7 | UNIT_FLAG2_UNUSED_8 | UNIT_FLAG2_UNUSED_9 |
    ---UNIT_FLAG2_UNUSED_10 | UNIT_FLAG2_UNUSED_11 | UNIT_FLAG2_UNUSED_12 | UNIT_FLAG2_UNUSED_13)
    UNIT_FLAG2_DISALLOWED = 0xFFFC77DD,

    ---(0xFFFFFFFF & ~UNIT_FLAG2_DISALLOWED)
    UNIT_FLAG2_ALLOWED = 0x38822
}

---@enum DeathState
local DeathState =
{
    ALIVE          = 0,
    JUST_DIED      = 1,
    CORPSE         = 2,
    DEAD           = 3,
    JUST_RESPAWNED = 4
}

---@enum ReactState
local ReactState = {
    REACT_PASSIVE    = 0,
    REACT_DEFENSIVE  = 1,
    REACT_AGGRESSIVE = 2
}

---@enum GOState
local GOState =
{
    GO_STATE_ACTIVE             = 0, -- show in world as used and not reset (closed door open)
    GO_STATE_READY              = 1, -- show in world as ready (closed door close)
    GO_STATE_ACTIVE_ALTERNATIVE = 2  -- show in world as used in alt way and not reset (closed door open by cannon fire)
}

---@enum GameObjectEvents
local GameObjectEvents =
{
    GAMEOBJECT_EVENT_ON_AIUPDATE          = 1,  -- (event, go, diff)
    GAMEOBJECT_EVENT_ON_SPAWN             = 2,  -- (event, go)
    GAMEOBJECT_EVENT_ON_DUMMY_EFFECT      = 3,  -- (event, caster, spellid, effindex, go) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_QUEST_ACCEPT      = 4,  -- (event, player, go, quest) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_QUEST_REWARD      = 5,  -- (event, player, go, quest, opt) - Can return true to stop normal action
    GAMEOBJECT_EVENT_ON_DIALOG_STATUS     = 6,  -- (event, player, go)
    GAMEOBJECT_EVENT_ON_DESTROYED         = 7,  -- (event, go, attacker)
    GAMEOBJECT_EVENT_ON_DAMAGED           = 8,  -- (event, go, attacker)
    GAMEOBJECT_EVENT_ON_LOOT_STATE_CHANGE = 9,  -- (event, go, state)
    GAMEOBJECT_EVENT_ON_GO_STATE_CHANGED  = 10, -- (event, go, state)
    -- UNUSED                                       = 11,   -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_ADD               = 12, -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_REMOVE            = 13, -- (event, gameobject)
    GAMEOBJECT_EVENT_ON_USE               = 14, -- (event, go, player) - Can return true to stop normal action
}

---@enum LootState
local LootState =
{
    GO_NOT_READY = 0,
    GO_READY = 1, -- can be ready but despawned, and then not possible activate until spawn
    GO_ACTIVATED = 2,
    GO_JUST_DEACTIVATED = 3
}

---@enum BanMode
local BanMode = {
    BAN_ACCOUNT = 1,
    BAN_CHARACTER = 2,
    BAN_IP = 3
}


---@enum TeamId
local TeamId =
{
    TEAM_ALLIANCE = 0,
    TEAM_HORDE = 1,
    TEAM_NEUTRAL = 2
}

---@enum GroupEvents
local GroupEvents = {
    GROUP_EVENT_ON_MEMBER_ADD    = 1, --- (event, group, guid)
    GROUP_EVENT_ON_MEMBER_INVITE = 2, --- (event, group, guid)
    GROUP_EVENT_ON_MEMBER_REMOVE = 3, --- (event, group, guid, method, kicker, reason)
    GROUP_EVENT_ON_LEADER_CHANGE = 4, --- (event, group, newLeaderGuid, oldLeaderGuid)
    GROUP_EVENT_ON_DISBAND       = 5, --- (event, group)
    GROUP_EVENT_ON_CREATE        = 6, --- (event, group, leaderGuid, groupType)
}

---@enum GroupType
local GroupType = {
    GROUPTYPE_NORMAL         = 0,
    GROUPTYPE_BG             = 1,
    GROUPTYPE_RAID           = 2,
    GROUPTYPE_LFG_RESTRICTED = 4,
    GROUPTYPE_LFG            = 8
}

---@enum RemoveMethod
local RemoveMethod = {
    GROUP_REMOVEMETHOD_DEFAULT  = 0,
    GROUP_REMOVEMETHOD_KICK     = 1,
    GROUP_REMOVEMETHOD_LEAVE    = 2,
    GROUP_REMOVEMETHOD_KICK_LFG = 3
}

---@enum GroupMemberFlags
local GroupMemberFlags = {
    MEMBER_FLAG_ASSISTANT  = 0x01,
    MEMBER_FLAG_MAINTANK   = 0x02,
    MEMBER_FLAG_MAINASSIST = 0x04,
}

---@enum GuildEvents
local GuildEvents = {
    GUILD_EVENT_ON_ADD_MEMBER     = 1,  -- (event, guild, player, rank)
    GUILD_EVENT_ON_REMOVE_MEMBER  = 2,  -- (event, guild, player, isDisbanding)
    GUILD_EVENT_ON_MOTD_CHANGE    = 3,  -- (event, guild, newMotd)
    GUILD_EVENT_ON_INFO_CHANGE    = 4,  -- (event, guild, newInfo)
    GUILD_EVENT_ON_CREATE         = 5,  -- (event, guild, leader, name)  -- Not on TC
    GUILD_EVENT_ON_DISBAND        = 6,  -- (event, guild)
    GUILD_EVENT_ON_MONEY_WITHDRAW = 7,  -- (event, guild, player, amount, isRepair) - Can return new money amount
    GUILD_EVENT_ON_MONEY_DEPOSIT  = 8,  -- (event, guild, player, amount) - Can return new money amount
    GUILD_EVENT_ON_ITEM_MOVE      = 9,  -- (event, guild, player, item, isSrcBank, srcContainer, srcSlotId, isDestBank, destContainer, destSlotId)   -- TODO
    GUILD_EVENT_ON_EVENT          = 10, -- (event, guild, eventType, plrGUIDLow1, plrGUIDLow2, newRank)  -- TODO
    GUILD_EVENT_ON_BANK_EVENT     = 11, -- (event, guild, eventType, tabId, playerGUIDLow, itemOrMoney, itemStackCount, destTabId)
}

---@enum InstanceEvents
local InstanceEvents = {
    INSTANCE_EVENT_ON_INITIALIZE                  = 1, -- (event, instance_data, map)
    INSTANCE_EVENT_ON_LOAD                        = 2, -- (event, instance_data, map)
    INSTANCE_EVENT_ON_UPDATE                      = 3, -- (event, instance_data, map, diff)
    INSTANCE_EVENT_ON_PLAYER_ENTER                = 4, -- (event, instance_data, map, player)
    INSTANCE_EVENT_ON_CREATURE_CREATE             = 5, -- (event, instance_data, map, creature)
    INSTANCE_EVENT_ON_GAMEOBJECT_CREATE           = 6, -- (event, instance_data, map, go)
    INSTANCE_EVENT_ON_CHECK_ENCOUNTER_IN_PROGRESS = 7, -- (event, instance_data, map)
}

---@enum ItemEvents
local ItemEvents = {
    ITEM_EVENT_ON_DUMMY_EFFECT = 1, -- (event, caster, spellid, effindex, item)
    ITEM_EVENT_ON_USE          = 2, -- (event, player, item, target) - Can return false to stop the spell casting
    ITEM_EVENT_ON_QUEST_ACCEPT = 3, -- (event, player, item, quest) - Can return true
    ITEM_EVENT_ON_EXPIRE       = 4, -- (event, player, itemid) - Can return true
    ITEM_EVENT_ON_REMOVE       = 5, -- (event, player, item) - Can return true
}

---@enum PacketEvents
local PacketEvents = {
    PACKET_EVENT_ON_PACKET_RECEIVE         = 5, -- (event, packet, player) - Player only if accessible. Can return false, newPacket
    PACKET_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6, -- Not Implemented
    PACKET_EVENT_ON_PACKET_SEND            = 7, -- (event, packet, player) - Player only if accessible. Can return false, newPacket
}

---@enum PlayerEvents
local PlayerEvents = {
    PLAYER_EVENT_ON_CHARACTER_CREATE       = 1,  --- (event, player)
    PLAYER_EVENT_ON_CHARACTER_DELETE       = 2,  --- (event, guid)
    PLAYER_EVENT_ON_LOGIN                  = 3,  --- (event, player)
    PLAYER_EVENT_ON_LOGOUT                 = 4,  --- (event, player)
    PLAYER_EVENT_ON_SPELL_CAST             = 5,  --- (event, player, spell, skipCheck)
    PLAYER_EVENT_ON_KILL_PLAYER            = 6,  --- (event, killer, killed)
    PLAYER_EVENT_ON_KILL_CREATURE          = 7,  --- (event, killer, killed)
    PLAYER_EVENT_ON_KILLED_BY_CREATURE     = 8,  --- (event, killer, killed)
    PLAYER_EVENT_ON_DUEL_REQUEST           = 9,  --- (event, target, challenger)
    PLAYER_EVENT_ON_DUEL_START             = 10, --- (event, player1, player2)
    PLAYER_EVENT_ON_DUEL_END               = 11, --- (event, winner, loser, type)
    PLAYER_EVENT_ON_GIVE_XP                = 12, --- (event, player, amount, victim, source) - Can return new XP amount
    PLAYER_EVENT_ON_LEVEL_CHANGE           = 13, --- (event, player, oldLevel)
    PLAYER_EVENT_ON_MONEY_CHANGE           = 14, --- (event, player, amount) - Can return new money amount
    PLAYER_EVENT_ON_REPUTATION_CHANGE      = 15, --- (event, player, factionId, standing, incremental) - Can return new standing -> if standing == -1, it will prevent default action (rep gain)
    PLAYER_EVENT_ON_TALENTS_CHANGE         = 16, --- (event, player, points)
    PLAYER_EVENT_ON_TALENTS_RESET          = 17, --- (event, player, noCost)
    PLAYER_EVENT_ON_CHAT                   = 18, --- (event, player, msg, Type, lang) - Can return false, newMessage
    PLAYER_EVENT_ON_WHISPER                = 19, --- (event, player, msg, Type, lang, receiver) - Can return false, newMessage
    PLAYER_EVENT_ON_GROUP_CHAT             = 20, --- (event, player, msg, Type, lang, group) - Can return false, newMessage
    PLAYER_EVENT_ON_GUILD_CHAT             = 21, --- (event, player, msg, Type, lang, guild) - Can return false, newMessage
    PLAYER_EVENT_ON_CHANNEL_CHAT           = 22, --- (event, player, msg, Type, lang, channel) - channel is negative for custom channels. Can return false, newMessage
    PLAYER_EVENT_ON_EMOTE                  = 23, --- (event, player, emote) - Not triggered on any known emote
    PLAYER_EVENT_ON_TEXT_EMOTE             = 24, --- (event, player, textEmote, emoteNum, guid)
    PLAYER_EVENT_ON_SAVE                   = 25, --- (event, player)
    PLAYER_EVENT_ON_BIND_TO_INSTANCE       = 26, --- (event, player, difficulty, mapid, permanent)
    PLAYER_EVENT_ON_UPDATE_ZONE            = 27, --- (event, player, newZone, newArea)
    PLAYER_EVENT_ON_MAP_CHANGE             = 28, --- (event, player)
    PLAYER_EVENT_ON_EQUIP                  = 29, --- (event, player, item, bag, slot)
    PLAYER_EVENT_ON_FIRST_LOGIN            = 30, --- (event, player)
    PLAYER_EVENT_ON_CAN_USE_ITEM           = 31, --- (event, player, itemEntry) - Can return InventoryResult enum value
    PLAYER_EVENT_ON_LOOT_ITEM              = 32, --- (event, player, item, count)
    PLAYER_EVENT_ON_ENTER_COMBAT           = 33, --- (event, player, enemy)
    PLAYER_EVENT_ON_LEAVE_COMBAT           = 34, --- (event, player)
    PLAYER_EVENT_ON_REPOP                  = 35, --- (event, player)
    PLAYER_EVENT_ON_RESURRECT              = 36, --- (event, player)
    PLAYER_EVENT_ON_LOOT_MONEY             = 37, --- (event, player, amount)
    PLAYER_EVENT_ON_QUEST_ABANDON          = 38, --- (event, player, questId)
    PLAYER_EVENT_ON_LEARN_TALENTS          = 39, --- (event, player, talentId, talentRank, spellid)
    PLAYER_EVENT_ON_COMMAND                = 42, --- (event, player, command, chatHandler) - player is nil if command used from console. Can return false
    PLAYER_EVENT_ON_PET_ADDED_TO_WORLD     = 43, --- (event, player, pet)
    PLAYER_EVENT_ON_LEARN_SPELL            = 44, --- (event, player, spellId)
    PLAYER_EVENT_ON_ACHIEVEMENT_COMPLETE   = 45, --- (event, player, achievement)
    PLAYER_EVENT_ON_FFAPVP_CHANGE          = 46, --- (event, player, hasFfaPvp)
    PLAYER_EVENT_ON_UPDATE_AREA            = 47, --- (event, player, oldArea, newArea)
    PLAYER_EVENT_ON_CAN_INIT_TRADE         = 48, --- (event, player, target) - Can return false to prevent the trade
    PLAYER_EVENT_ON_CAN_SEND_MAIL          = 49, --- (event, player, receiverGuid, mailbox, subject, body, money, cod, item) - Can return false to prevent sending the mail
    PLAYER_EVENT_ON_CAN_JOIN_LFG           = 50, --- (event, player, roles, dungeons, comment) - Can return false to prevent queueing
    PLAYER_EVENT_ON_QUEST_REWARD_ITEM      = 51, ---  (event, player, item, count)
    PLAYER_EVENT_ON_CREATE_ITEM            = 52, ---  (event, player, item, count)
    PLAYER_EVENT_ON_STORE_NEW_ITEM         = 53, ---  (event, player, item, count)
    PLAYER_EVENT_ON_COMPLETE_QUEST         = 54, --- (event, player, quest)
    PLAYER_EVENT_ON_CAN_GROUP_INVITE       = 55, --- (event, player, memberName) - Can return false to prevent inviting
    PLAYER_EVENT_ON_GROUP_ROLL_REWARD_ITEM = 56, --- (event, player, item, count, voteType, roll)
    PLAYER_EVENT_ON_BG_DESERTION           = 57, --- (event, player, type)
}

---@enum ServerEvents
local ServerEvents = {
    SERVER_EVENT_ON_NETWORK_START          = 1,  --- Not Implemented
    SERVER_EVENT_ON_NETWORK_STOP           = 2,  --- Not Implemented
    SERVER_EVENT_ON_SOCKET_OPEN            = 3,  --- Not Implemented
    SERVER_EVENT_ON_SOCKET_CLOSE           = 4,  --- Not Implemented
    SERVER_EVENT_ON_PACKET_RECEIVE         = 5,  --- (event, packet, player) - Player only if accessible. Can return false, newPacket
    SERVER_EVENT_ON_PACKET_RECEIVE_UNKNOWN = 6,  --- Not Implemented
    SERVER_EVENT_ON_PACKET_SEND            = 7,  --- (event, packet, player) - Player only if accessible. Can return false, newPacket
    WORLD_EVENT_ON_OPEN_STATE_CHANGE       = 8,  --- (event, open) - Needs core support on Mangos
    WORLD_EVENT_ON_CONFIG_LOAD             = 9,  --- (event, reload)
    WORLD_EVENT_ON_SHUTDOWN_INIT           = 11, --- (event, code, mask)
    WORLD_EVENT_ON_SHUTDOWN_CANCEL         = 12, --- (event)
    WORLD_EVENT_ON_UPDATE                  = 13, --- (event, diff)
    WORLD_EVENT_ON_STARTUP                 = 14, --- (event)
    WORLD_EVENT_ON_SHUTDOWN                = 15, --- (event)
    ELUNA_EVENT_ON_LUA_STATE_CLOSE         = 16, --- (event) - triggers just before shutting down eluna (on shutdown and restart)
    MAP_EVENT_ON_CREATE                    = 17, --- (event, map)
    MAP_EVENT_ON_DESTROY                   = 18, --- (event, map)
    MAP_EVENT_ON_GRID_LOAD                 = 19, --- Not Implemented
    MAP_EVENT_ON_GRID_UNLOAD               = 20, --- Not Implemented
    MAP_EVENT_ON_PLAYER_ENTER              = 21, --- (event, map, player)
    MAP_EVENT_ON_PLAYER_LEAVE              = 22, --- (event, map, player)
    MAP_EVENT_ON_UPDATE                    = 23, --- (event, map, diff)
    TRIGGER_EVENT_ON_TRIGGER               = 24, --- (event, player, triggerId) - Can return true
    WEATHER_EVENT_ON_CHANGE                = 25, --- (event, zoneId, state, grade)
    AUCTION_EVENT_ON_ADD                   = 26, --- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_REMOVE                = 27, --- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_SUCCESSFUL            = 28, --- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    AUCTION_EVENT_ON_EXPIRE                = 29, --- (event, auctionId, owner, item, expireTime, buyout, startBid, currentBid, bidderGUIDLow)
    ADDON_EVENT_ON_MESSAGE                 = 30, --- (event, sender, type, prefix, msg, target) - target can be nil/whisper_target/guild/group/channel. Can return false
    WORLD_EVENT_ON_DELETE_CREATURE         = 31, --- (event, creature)
    WORLD_EVENT_ON_DELETE_GAMEOBJECT       = 32, --- (event, gameobject)
    ELUNA_EVENT_ON_LUA_STATE_OPEN          = 33, --- (event) - triggers after all scripts are loaded
    GAME_EVENT_START                       = 34, --- (event, gameeventid)
    GAME_EVENT_STOP                        = 35, --- (event, gameeventid)
}


---@enum MailStationary
local MailStationary = {
    MAIL_STATIONERY_TEST = 1,
    MAIL_STATIONERY_DEFAULT = 41,
    MAIL_STATIONERY_GM = 61,
    MAIL_STATIONERY_AUCTION = 62,
    MAIL_STATIONERY_VAL = 64, -- Valentine
    MAIL_STATIONERY_CHR = 65, -- Christmas
    MAIL_STATIONERY_ORP = 67  -- Orphan
}


---@enum EnchantmentSlot
local EnchantmentSlot = {
    ENCHANTMENT_CAN_SOULBOUND = 0x01,
    ENCHANTMENT_UNK1 = 0x02,
    ENCHANTMENT_UNK2 = 0x04,
    ENCHANTMENT_UNK3 = 0x08
}


---@enum WeatherType
local WeatherType = {
    WEATHER_TYPE_FINE      = 0,
    WEATHER_TYPE_RAIN      = 1,
    WEATHER_TYPE_SNOW      = 2,
    WEATHER_TYPE_STORM     = 3,
    WEATHER_TYPE_THUNDERS  = 86,
    WEATHER_TYPE_BLACKRAIN = 90
}

---@enum EquipmentSlots
local EquipmentSlots = {
    EQUIPMENT_SLOT_START     = 0,
    EQUIPMENT_SLOT_HEAD      = 0,
    EQUIPMENT_SLOT_NECK      = 1,
    EQUIPMENT_SLOT_SHOULDERS = 2,
    EQUIPMENT_SLOT_BODY      = 3,
    EQUIPMENT_SLOT_CHEST     = 4,
    EQUIPMENT_SLOT_WAIST     = 5,
    EQUIPMENT_SLOT_LEGS      = 6,
    EQUIPMENT_SLOT_FEET      = 7,
    EQUIPMENT_SLOT_WRISTS    = 8,
    EQUIPMENT_SLOT_HANDS     = 9,
    EQUIPMENT_SLOT_FINGER1   = 10,
    EQUIPMENT_SLOT_FINGER2   = 11,
    EQUIPMENT_SLOT_TRINKET1  = 12,
    EQUIPMENT_SLOT_TRINKET2  = 13,
    EQUIPMENT_SLOT_BACK      = 14,
    EQUIPMENT_SLOT_MAINHAND  = 15,
    EQUIPMENT_SLOT_OFFHAND   = 16,
    EQUIPMENT_SLOT_RANGED    = 17,
    EQUIPMENT_SLOT_TABARD    = 18,
    EQUIPMENT_SLOT_END       = 19
}

---@enum InventorySlots
local InventorySlots = {
    INVENTORY_SLOT_BAG_START = 19,
    INVENTORY_SLOT_BAG_END   = 23
}


---@enum AccountTypes
local AccountTypes = {
    SEC_PLAYER        = 0,
    SEC_MODERATOR     = 1,
    SEC_GAMEMASTER    = 2,
    SEC_ADMINISTRATOR = 3,
    SEC_CONSOLE       = 4
}


---@enum QuestStatus
local QuestStatus = {
    QUEST_STATUS_NONE       = 0,
    QUEST_STATUS_COMPLETE   = 1,
    --QUEST_STATUS_UNAVAILABLE    = 2,
    QUEST_STATUS_INCOMPLETE = 3,
    --QUEST_STATUS_AVAILABLE      = 4,
    QUEST_STATUS_FAILED     = 5,
    QUEST_STATUS_REWARDED   = 6,
}

---@enum ReputationRank
local ReputationRank = {
    REP_HATED      = 0,
    REP_HOSTILE    = 1,
    REP_UNFRIENDLY = 2,
    REP_NEUTRAL    = 3,
    REP_FRIENDLY   = 4,
    REP_HONORED    = 5,
    REP_REVERED    = 6,
    REP_EXALTED    = 7
}

---@enum ChatMsg
local ChatMsg = {
    CHAT_MSG_ADDON                 = 0xFF, -- -1
    CHAT_MSG_SYSTEM                = 0x00,
    CHAT_MSG_SAY                   = 0x01,
    CHAT_MSG_PARTY                 = 0x02,
    CHAT_MSG_RAID                  = 0x03,
    CHAT_MSG_GUILD                 = 0x04,
    CHAT_MSG_OFFICER               = 0x05,
    CHAT_MSG_YELL                  = 0x06,
    CHAT_MSG_WHISPER               = 0x07,
    CHAT_MSG_WHISPER_FOREIGN       = 0x08,
    CHAT_MSG_WHISPER_INFORM        = 0x09,
    CHAT_MSG_EMOTE                 = 0x0A,
    CHAT_MSG_TEXT_EMOTE            = 0x0B,
    CHAT_MSG_MONSTER_SAY           = 0x0C,
    CHAT_MSG_MONSTER_PARTY         = 0x0D,
    CHAT_MSG_MONSTER_YELL          = 0x0E,
    CHAT_MSG_MONSTER_WHISPER       = 0x0F,
    CHAT_MSG_MONSTER_EMOTE         = 0x10,
    CHAT_MSG_CHANNEL               = 0x11,
    CHAT_MSG_CHANNEL_JOIN          = 0x12,
    CHAT_MSG_CHANNEL_LEAVE         = 0x13,
    CHAT_MSG_CHANNEL_LIST          = 0x14,
    CHAT_MSG_CHANNEL_NOTICE        = 0x15,
    CHAT_MSG_CHANNEL_NOTICE_USER   = 0x16,
    CHAT_MSG_AFK                   = 0x17,
    CHAT_MSG_DND                   = 0x18,
    CHAT_MSG_IGNORED               = 0x19,
    CHAT_MSG_SKILL                 = 0x1A,
    CHAT_MSG_LOOT                  = 0x1B,
    CHAT_MSG_MONEY                 = 0x1C,
    CHAT_MSG_OPENING               = 0x1D,
    CHAT_MSG_TRADESKILLS           = 0x1E,
    CHAT_MSG_PET_INFO              = 0x1F,
    CHAT_MSG_COMBAT_MISC_INFO      = 0x20,
    CHAT_MSG_COMBAT_XP_GAIN        = 0x21,
    CHAT_MSG_COMBAT_HONOR_GAIN     = 0x22,
    CHAT_MSG_COMBAT_FACTION_CHANGE = 0x23,
    CHAT_MSG_BG_SYSTEM_NEUTRAL     = 0x24,
    CHAT_MSG_BG_SYSTEM_ALLIANCE    = 0x25,
    CHAT_MSG_BG_SYSTEM_HORDE       = 0x26,
    CHAT_MSG_RAID_LEADER           = 0x27,
    CHAT_MSG_RAID_WARNING          = 0x28,
    CHAT_MSG_RAID_BOSS_EMOTE       = 0x29,
    CHAT_MSG_RAID_BOSS_WHISPER     = 0x2A,
    CHAT_MSG_FILTERED              = 0x2B,
    CHAT_MSG_BATTLEGROUND          = 0x2C,
    CHAT_MSG_BATTLEGROUND_LEADER   = 0x2D,
    CHAT_MSG_RESTRICTED            = 0x2E,
    CHAT_MSG_BATTLENET             = 0x2F,
    CHAT_MSG_ACHIEVEMENT           = 0x30,
    CHAT_MSG_GUILD_ACHIEVEMENT     = 0x31,
    CHAT_MSG_ARENA_POINTS          = 0x32,
    CHAT_MSG_PARTY_LEADER          = 0x33
}

---@enum QuestFlags
local QuestFlags = {
    QUEST_FLAGS_NONE                    = 0x00000000,
    QUEST_FLAGS_STAY_ALIVE              = 0x00000001, --- Not used currently
    QUEST_FLAGS_PARTY_ACCEPT            = 0x00000002, --- Not used currently. If player in party, all players that can accept this quest will receive confirmation box to accept quest CMSG_QUEST_CONFIRM_ACCEPT/SMSG_QUEST_CONFIRM_ACCEPT
    QUEST_FLAGS_EXPLORATION             = 0x00000004, --- Not used currently
    QUEST_FLAGS_SHARABLE                = 0x00000008, --- Can be shared: Player::CanShareQuest()
    QUEST_FLAGS_HAS_CONDITION           = 0x00000010, --- Not used currently
    QUEST_FLAGS_HIDE_REWARD_POI         = 0x00000020, --- Not used currently: Unsure of content
    QUEST_FLAGS_RAID                    = 0x00000040, --- Can be completed while in raid
    QUEST_FLAGS_TBC                     = 0x00000080, --- Not used currently: Available if TBC expansion enabled only
    QUEST_FLAGS_NO_MONEY_FROM_XP        = 0x00000100, --- Not used currently: Experience is not converted to gold at max level
    QUEST_FLAGS_HIDDEN_REWARDS          = 0x00000200, --- Items and money rewarded only sent in SMSG_QUESTGIVER_OFFER_REWARD (not in SMSG_QUEST_GIVER_QUEST_DETAILS or in client quest log(SMSG_QUEST_QUERY_RESPONSE))
    QUEST_FLAGS_TRACKING                = 0x00000400, --- These quests are automatically rewarded on quest complete and they will never appear in quest log client side.
    QUEST_FLAGS_DEPRECATE_REPUTATION    = 0x00000800, --- Not used currently
    QUEST_FLAGS_DAILY                   = 0x00001000, --- Used to know quest is Daily one
    QUEST_FLAGS_FLAGS_PVP               = 0x00002000, --- Having this quest in log forces PvP flag
    QUEST_FLAGS_UNAVAILABLE             = 0x00004000, --- Used on quests that are not generically available
    QUEST_FLAGS_WEEKLY                  = 0x00008000,
    QUEST_FLAGS_AUTOCOMPLETE            = 0x00010000, --- auto complete
    QUEST_FLAGS_DISPLAY_ITEM_IN_TRACKER = 0x00020000, --- Displays usable item in quest tracker
    QUEST_FLAGS_OBJ_TEXT                = 0x00040000, --- use Objective text as Complete text
    QUEST_FLAGS_AUTO_ACCEPT             = 0x00080000
}
