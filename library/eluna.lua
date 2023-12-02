---@meta

---These functions can be used anywhere at any time, including at start-up.

---Returns Lua engine name
---@return string engineName
function GetLuaEngine() end

---@alias EmulatorName
---| '"MaNGOS"'
---| '"cMaNGOS"'
---| '"TrinityCore"'
---| '"AzerothCore"'
---Returns emulator's name
---@return EmulatorName|string coreName
function GetCoreName() end

---Returns emulator .conf RealmID\
--- for MaNGOS returns the realmID as it is stored in the core.\
--- for TrinityCore returns the realmID as it is in the conf file.
---@return number realmId
function GetRealmID() end

---Returns emulator version
---@return string version
function GetCoreVersion() end

---@alias CoreExpansion
---| 0 # Classic
---| 1 # TBC
---| 2 # WotLK
---| 3 # Cataclysm
---Returns emulator's supported expansion.
---@return CoreExpansion coreExpansion
function GetCoreExpansion() end

---Returns Quest template
---@param questId number Quest entry ID
---@return Quest quest
function GetQuest(questId) end

---Finds and Returns Player by guid if found
---@param guid number Guid of the Player, you can get it with `Object:GetGUID`
---@return Player? player
function GetPlayerByGUID(guid) end

---Get a player by their name if found
---@param name string
---@return Player? player
function GetPlayerByName(name) end

---Returns game time in seconds
---@return number time Game time in seconds
function GetGameTime() end

---Returns a table with all the current Players in the world
---@param team TeamId
---@return table worldPlayers
function GetPlayersInWorld(team) end

---Returns a table with all the current Players in the world
---@param team TeamId
---@param onlyGM boolean
---@return table worldPlayers
function GetPlayersInWorld(team, onlyGM) end

---Returns a guild by the named
---@param name string
---@return Guild? guild Returns guild if found, nil if not
function GetGuildByName(name) end

---Returns a Map by ID.
---@param mapId number See: https://github.com/cmangos/issues/wiki/Map.dbc
---@return Map? map
function GetMapById(mapId) end

---Returns a Map by ID.
---@param mapId number See: https://github.com/cmangos/issues/wiki/Map.dbc
---@param instanceId number Required if the map is an instance, otherwise don't pass anything.
---@return Map? map
function GetMapById(mapId, instanceId) end

---Returns Guild by the leader's GUID
---@param guid number
---@return Guild? guild
function GetGuildByLeaderGUID(guid) end

---Returns the amount of players in the world
---@return number playerCount
function GetPlayerCount() end

---Builds a Player's GUID\
---Player GUID consist of low GUID and type ID\
---Player and Creature for example can have the same low GUID but not GUID.
---@param lowGuid number Low GUID of the Player
---@return number guid
function GetPlayerGUID(lowGuid) end

---Build an items GUID
---@param loqGUID number Low GUID of the Item
---@return number guid
function GetItemGUID(loqGUID) end

---Undocumented\
---**USE AT OWN RISK**
---@param entry number
---@return number itemTemplateId
function GetItemTemplate(entry) end

---Builds a GameObject's GUID.\
---A GameObject's GUID consist of entry ID, low GUID and type ID\
---A Player and GameObject for example can have the same low GUID but not GUID.
---@param lowGUID number Low GUID of the GameObject.
---@param entry number Entry ID of the GameObject.
---@return number guid
function GetObjectGUID(lowGUID, entry) end

---Builds a Creature's GUID.
---Creature GUID consist of entry ID, low GUID and type ID
---Player and Creature for example can have the same low GUID but not GUID.
---@param loqGUID number Low GUID of the Creature.
---@param entry number Entry ID of the Creature.
---@return number Guild
function GetUnitGUID(loqGUID, entry) end

---Returns the low GUID from a GUID.\
---A GUID consists of a low GUID, type ID, and possibly an entry ID depending on the type ID.\
---Low GUID is an ID to distinct the objects of the same type.\
---Player and Creature for example can have the same low GUID but not GUID.\
---On TrinityCore all low GUIDs are different for all objects of the same type. For example creatures in instances are assigned new GUIDs when the Map is created.\
---On MaNGOS and cMaNGOS low GUIDs are unique only on the same map. For example creatures in instances use the same low GUID assigned for that spawn in the database. This is why to identify a creature you have to know the instanceId and low GUID.
---@see Map:GetIntstanceId()
---@param guid number GUID of an Object
---@return number lowGUID Low GUID of the Object
function GetGUIDLow(guid) end

---Returns a chat link for an Items
---@param entry number Entry ID of the item
---@return string itemLink
function GetItemLink(entry) end

---Returns a chat link for an Items
---@param entry number Entry ID of the item
---@param locale LocaleConstant
---@return string itemLink
function GetItemLink(entry, locale) end

---Returns the type ID from a GUID.
---@param guid number GUID of an Object.
---@return number typeId Type ID of the Object.
function GetGUIDType(guid) end

---Returns the entry ID from a GUID.
---@param guid number GUID of an Creature or GameObject.
---@return number entry EntryID or 0 if guid is not a Creature or GameObject
function GetGUIDEntry(guid) end

---Returns the area or zone's name.
---@param areaOrZoneId number
---@return string areaOrZoneName
function GetAreaName(areaOrZoneId) end

---Returns the area or zone's name.
---@param areaOrZoneId number
---@param locale LocaleConstant
---@return string areaOrZoneName
function GetAreaName(areaOrZoneId, locale) end

---Returns the currently active game events.
---@return table activeEvents
function GetActiveGameEvents() end

---@alias SpawnType
---| 1 # Creature
---| 2 # GameObject
---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType SpawnType
---@param entry number Entry ID of the Creature or GameObject.
---@param mapId number Map ID to spawn the Creature or GameObject in.
---@param instanceId number Instance ID to put the Creature or GameObject in. Non instance is 0.
---@param x number X coordinate of the Creature or GameObject.
---@param y number Y coordinate of the Creature or GameObject.
---@param z number Z coordinate of the Creature or GameObject.
---@param o number O facing/orientation of the Creature or GameObject.
---@return WorldObject? worldObject Creature or GameObject spawned
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o) end

---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType SpawnType
---@param entry number Entry ID of the Creature or GameObject.
---@param mapId number Map ID to spawn the Creature or GameObject in.
---@param instanceId number Instance ID to put the Creature or GameObject in. Non instance is 0.
---@param x number X coordinate of the Creature or GameObject.
---@param y number Y coordinate of the Creature or GameObject.
---@param z number Z coordinate of the Creature or GameObject.
---@param o number O facing/orientation of the Creature or GameObject.
---@param save boolean Optional to save the Creature or GameObject to the database.
---@return WorldObject? worldObject Creature or GameObject spawned
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o, save) end

---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType SpawnType
---@param entry number Entry ID of the Creature or GameObject.
---@param mapId number Map ID to spawn the Creature or GameObject in.
---@param instanceId number Instance ID to put the Creature or GameObject in. Non instance is 0.
---@param x number X coordinate of the Creature or GameObject.
---@param y number Y coordinate of the Creature or GameObject.
---@param z number Z coordinate of the Creature or GameObject.
---@param o number O facing/orientation of the Creature or GameObject.
---@param save boolean Optional to save the Creature or GameObject to the database.
---@param durorresptime number Despawn time of the Creature if it's not saved or respawn time of GameObject.
---@return WorldObject? worldObject Creature or GameObject spawned
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o, save, durorresptime) end

---Performs an in-game spawn and returns the Creature or GameObject spawned.
---@param spawnType SpawnType
---@param entry number Entry ID of the Creature or GameObject.
---@param mapId number Map ID to spawn the Creature or GameObject in.
---@param instanceId number Instance ID to put the Creature or GameObject in. Non instance is 0.
---@param x number X coordinate of the Creature or GameObject.
---@param y number Y coordinate of the Creature or GameObject.
---@param z number Z coordinate of the Creature or GameObject.
---@param o number O facing/orientation of the Creature or GameObject.
---@param save boolean Optional to save the Creature or GameObject to the database.
---@param durorresptime number Despawn time of the Creature if it's not saved or respawn time of GameObject.
---@param phase number Phase to put the Creature or GameObject in.
---@return WorldObject? worldObject Creature or GameObject spawned
function PerformIngameSpawn(spawnType, entry, mapId, instanceId, x, y, z, o, save, durorresptime, phase) end

---Registers a Server event handler
---@param event ServerEvents
---@param callback function Refer to specific ServerEvent enum comment for callback
---@return function cancel Function that will cancel this event handler
function RegisterServerEvent(event, callback) end

---Registers a Server event handler
---@param event ServerEvents
---@param callback function Refer to specific ServerEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function that will cancel this event handler
function RegisterServerEvent(event, callback, shots) end

---Registers a Player event handler
---@param event PlayerEvents
---@param callback function Refer to specific PlayerEvent enum comment for callback
---@return function cancel Function that will cancel this event handler
function RegisterPlayerEvent(event, callback) end

---Registers a Player event handler
---@param event PlayerEvents
---@param callback function Refer to specific PlayerEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function that will cancel this event handler
function RegisterPlayerEvent(event, callback, shots) end

---Registers a Guild event handler
---@param event GuildEvents
---@param callback function Refer to specific GuildEvent enum comment for callback
---@return function cancel Function that will cancel this event handler
function RegisterGuildEvent(event, callback) end

---Registers a Guild event handler
---@param event GuildEvents
---@param callback function Refer to specific GuildEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function that will cancel this event handler
function RegisterGuildEvent(event, callback, shots) end

---Registers a Group event handler
---@param event GroupEvents
---@param callback function Refer to specific GroupEvent enum comment for callback
---@return function cancel Function that will cancel this event handler
function RegisterGroupEvent(event, callback) end

---Registers a Group event handler
---@param event GroupEvents
---@param callback function Refer to specific GroupEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function that will cancel this event handler
function RegisterGroupEvent(event, callback, shots) end

---Registers a BattleGround event handler
---@param event number
---@param callback fun(event: number, bg: BattleGround, bgId: number, instanceId: number)
---@return function cancel A function to cancel this event
function RegisterBGEvent(event, callback) end

---Registers a BattleGround event handler
---@param event number
---@param callback fun(event: number, bg: BattleGround, bgId: number, instanceId: number)
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel A function to cancel this event
function RegisterBGEvent(event, callback, shots) end

---Registers a WorldPacket event handler
---@param entry Opcodes
---@param event PacketEvents
---@param callback function refer to picked PacketEvents enum value for correct callback
---@return function cancel Function to cancel this event handlers
function RegisterPacketEvent(entry, event, callback) end

---Registers a WorldPacket event handler
---@param entry Opcodes
---@param event PacketEvents
---@param callback function refer to picked PacketEvents enum value for correct callback
---@param shots number of times function will be called, 0 means always call
---@return function cancel Function to cancel this event handlers
function RegisterPacketEvent(entry, event, callback, shots) end

---Registers a creature gossip event handler
---@param entry number Creature Entry ID to add event to
---@param event GossipEvents Creature gossip event id
---@param callback function Callback to register for this event, GossipEvents enum to see specific callback
---@return function cancel Function to call to cancel this event
function RegisterCreatureGossipEvent(entry, event, callback) end

---Registers a creature gossip event handler
---@param entry number Creature Entry ID to add event to
---@param event GossipEvents Creature gossip event id
---@param callback function Callback to register for this event, GossipEvents enum to see specific callback
---@param shots number The number of times to call this event
---@return function cancel Function to call to cancel this event
function RegisterCreatureGossipEvent(entry, event, callback, shots) end

---Registers a GameObject gossip event handler
---@param entry number Creature Entry ID to add event to
---@param event GossipEvents Creature gossip event id
---@param callback function Callback to register for this event, GossipEvents enum to see specific callback
---@return function cancel Function to call to cancel this event
function RegisterGameObjectGossipEvent(entry, event, callback) end

---Registers a GameObject gossip event handler
---@param entry number Creature Entry ID to add event to
---@param event GossipEvents Creature gossip event id
---@param callback function Callback to register for this event, GossipEvents enum to see specific callback
---@param shots number The number of times to call this event
---@return function cancel Function to call to cancel this event
function RegisterGameObjectGossipEvent(entry, event, callback, shots) end

---Registers an Item event handler.
---@param entry number The ID of one or more Items.
---@param event ItemEvents
---@param callback function Refer to ItemEvents for specific callback
---@return function cancel Function to cancel event
function RegisterItemEvent(entry, event, callback) end

---Registers an Item event handler.
---@param entry number The ID of one or more Items.
---@param event ItemEvents
---@param callback function Refer to ItemEvents for specific callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel event
function RegisterItemEvent(entry, event, callback, shots) end

---Registers an Item gossip event handler.
---@param entry number The ID of one or more Items.
---@param event GossipEvents
---@param callback function Refer to GossipEvents for specific callback
---@return function cancel Function to cancel event
function RegisterItemGossipEvent(entry, event, callback) end

---Registers an Item gossip event handler.
---@param entry number The ID of one or more Items.
---@param event GossipEvents
---@param callback function Refer to GossipEvents for specific callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel event
function RegisterItemGossipEvent(entry, event, callback, shots) end

---Registers a Map event handler for one map of a Map.
---@param mapId number ID of an map of a Map.
---@param event InstanceEvents
---@param callback function Refer to specific InstanceEvent enum comment for callback
function RegisterMapEvent(mapId, event, callback) end

---Registers a Map event handler for one map of a Map.
---@param mapId number ID of an map of a Map.
---@param event InstanceEvents
---@param callback function Refer to specific InstanceEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
function RegisterMapEvent(mapId, event, callback, shots) end

---Registers a Map event handler for one instance of a Map.
---@param instanceId number ID of an instance of a Map.
---@param event InstanceEvents
---@param callback function Refer to specific InstanceEvent enum comment for callback
---@return function cancel Function that will cancel this event handler
function RegisterInstanceEvent(instanceId, event, callback) end

---Registers a Map event handler for one instance of a Map.
---@param instanceId number ID of an instance of a Map.
---@param event InstanceEvents
---@param callback function Refer to specific InstanceEvent enum comment for callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function that will cancel this event handler
function RegisterInstanceEvent(instanceId, event, callback, shots) end

---Registers a player gossip event handler\
--- NOTE: *You cannot use GOSSIP_EVENT_ON_HELLO with this hook. It does nothing since players don't have an "on hello"
---@param menu_id number
---@param event GossipEvents
---@param callback function Refer to GossipEvent selection comments for the correct callback
---@return function cancel Function to cancel event
function RegisterPlayerGossipEvent(menu_id, event, callback) end

---Registers a player gossip event handler\
--- NOTE: *You cannot use GOSSIP_EVENT_ON_HELLO with this hook. It does nothing since players don't have an "on hello"
---@param menu_id number
---@param event GossipEvents
---@param callback function Refer to GossipEvent selection comments for the correct callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel event
function RegisterPlayerGossipEvent(menu_id, event, callback, shots) end

---Registers a Creature event handler.
---@param entry number The ID of one or more Creatures.
---@param event CreatureEvents
---@param callback function Refer to CreatureEvents for specific callback
---@return function cancel Function to cancel event
function RegisterCreatureEvent(entry, event, callback) end

---Registers a Creature event handler.
---@param entry number The ID of one or more Creatures.
---@param event CreatureEvents
---@param callback function Refer to CreatureEvents for specific callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel event
function RegisterCreatureEvent(entry, event, callback, shots) end

---Registers a Unique Creature event handler.
---@param guid number The GUID of a single creature
---@param instanceId number The instance ID of a single Creature
---@param event CreatureEvents
---@param callback function Refer to CreatureEvents for specific callback
---@return function cancel Function to cancel event
function RegisterUniqueCreatureEvent(guid, instanceId, event, callback) end

---Registers a Unique Creature event handler.
---@param guid number The GUID of a single creature
---@param instanceId number The instance ID of a single Creature
---@param event CreatureEvents
---@param callback function Refer to CreatureEvents for specific callback
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel event
function RegisterUniqueCreatureEvent(guid, instanceId, event, callback, shots) end

---Registers a GameObject event handler
---@param entry number GameObject Entry ID
---@param event GameObjectEvents
---@param callback function Callback for the event handler, see GameObjectEvents enum for correct callback to use
---@return function cancel Function to cancel this event handler
function RegisterGameObjectEvent(entry, event, callback) end

---Registers a GameObject event handler
---@param entry number GameObject Entry ID
---@param event GameObjectEvents
---@param callback function Callback for the event handler, see GameObjectEvents enum for correct callback to use
---@param shots number The number of times the function will be called, 0 means "always call this function".
---@return function cancel Function to cancel this event handler
function RegisterGameObjectEvent(entry, event, callback, shots) end

---Reloads the LUA engine
function ReloadEluna() end

---Runs a command
---@param command string The command to running
function RunCommand(command) end

---Sends a message to all players online
---@param message string
function SendWorldMessage(message) end

---Executes a SQL query on the world database
---@param sql string
---@return ElunaQuery results
function WorldDBQuery(sql) end

---Executes a SQL query asynchronously on the world database
---@param sql string Query to execute. 
---@param callback fun(results: ElunaQuery) Function that will be called when the results are available
function WorldDBQueryAsync(sql, callback) end

---Executes a SQL statement on the world database
---@param sql string
function WorldDBExecute(sql) end

---Executes a SQL query on the character database and returns an ElunaQuery.\
---The query is always executed synchronously (i.e. execution halts until the query has finished and then results are returned). If you need to execute the query asynchronously, use `Global:CharDBQueryAsync` instead.\
---For an example see `Global:WorldDBQuery`.
---@param sql string
---@return ElunaQuery results
function CharDBQuery(sql) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.\
---The query is executed asynchronously (i.e. the server keeps running while the query is executed in parallel, and results are passed to a callback function). If you need to execute the query synchronously, use `Global:CharDBQuery` instead.\
---For an example see `Global:WorldDBQueryAsync`.
---@param sql string
---@param callback fun(results:ElunaQuery)
function CharDBQueryAsync(sql, callback) end

---Executes a SQL query on the character database.\
---The query may be executed asynchronously (at a later, unpredictable time). If you need to execute the query synchronously, use `Global:CharDBQuery` instead.\
---Any results produced are ignored. If you need results from the query, use `Global:CharDBQuery` or `Global:CharDBQueryAsync` instead.
---@param sql string Query to execute
function CharDBExecute(sql) end

---Executes a SQL query on the login database and returns an ElunaQuery.\
---The query is always executed synchronously (i.e. execution halts until the query has finished and then results are returned). If you need to execute the query asynchronously, use `Global:AuthDBQueryAsync` instead.\
---For an example see `Global:WorldDBQuery`.
---@param sql string Query to execute
---@return ElunaQuery results
function AuthDBQuery(sql) end

---Executes an asynchronous SQL query on the character database and passes an ElunaQuery to a callback function.\
---The query is executed asynchronously (i.e. the server keeps running while the query is executed in parallel, and results are passed to a callback function). If you need to execute the query synchronously, use `Global:AuthDBQuery` instead.\
---For an example see `Global:WorldDBQueryAsync`.
---@param sql string
---@param callback fun(results: ElunaQuery)
function AuthDBQueryAsync(sql, callback) end

---Executes a SQL query on the login database.\
---The query may be executed asynchronously (at a later, unpredictable time). If you need to execute the query synchronously, use `Global:AuthDBQuery` instead.\
---*Any results produced are ignored. If you need results from the query, use `Global:AuthDBQuery` or `Global:AuthDBQueryAsync` instead.*
---@param sql string Query to execute
function AuthDBExecute(sql) end

---Registers a global timed event.\
---When the passed function is called, the parameters (eventId, delay, repeats) are passed to it.\
---Repeats will decrease on each call if the event does not repeat indefinitely
---@param callback function Function to trigger when the time has passed.
---@param delay number|table If number Set time in milliseconds for the event to trigger. If table a table {min, max} containing the minimum and maximum delay time.
---@return number? eventId Unique ID for the timed event used to cancel it
function CreateLuaEvent(callback, delay) end

---Registers a global timed event.\
---When the passed function is called, the parameters (eventId, delay, repeats) are passed to it.\
---Repeats will decrease on each call if the event does not repeat indefinitely
---@param callback function Function to trigger when the time has passed.
---@param delay number|table If number Set time in milliseconds for the event to trigger. If table a table {min, max} containing the minimum and maximum delay time.
---@param repeats number How many times for the event to repeat, 0 is infinite.
---@return number? eventId Unique ID for the timed event used to cancel it
function CreateLuaEvent(callback, delay, repeats) end

---Removes a global timed event specified by ID
---@param eventId number The Event ID to remove
function RemoveEventById(eventId) end

---Removes a global timed event specified by ID
---@param eventId number The Event ID to remove
---@param allEvents boolean Remove from all events, not just global
function RemoveEventById(eventId, allEvents) end

---Removes all global timed events
---@param allEvents boolean Remove all events not just global
function RemoveEvents(allEvents) end

---Creates a WorldPacket.
---@see WorldPacket
---@param opcode Opcodes The opcode of the packet.
---@param size number The size of the packet.
---@return WorldPacket packet
function CreatePacket(opcode, size) end

---Adds an Item to a vendor and updates the world database.
---@param entry number Creature entry id
---@param item number Item entry id
---@param maxcount number Max item stack count
---@param incrtime number Combine with max count, incrtime tells how often, in seconds, the vendor list is refereshed with the limited item
---@param extendedcost number Unique cost of an item , such as conquest points or honor
function AddVendorItem(entry, item, maxcount, incrtime, extendedcost) end

---Removes an Item from a vendor and updates the database
---@param entry number The Creature entry Id
---@param item number The Item entry Id
function VendorRemoveItem(entry, item) end

---Removes all items from a vendor and updates the database
---@param entry number Creature entry Id
function VendorRemoveAllItems(entry) end

---Kicks a player from the server
---@param player Player
function Kick(player) end

---Ban a Player's account, character or IP
---@param banMode BanMode Method of ban
---@param nameOrIp string If BanMode is 0 then account name, if 1 then character name, if 2 then IP
---@param duration number Duration, in seconds, of the ban
---@param reason string Reason for ban
---@param whoBanned string Name of GM who banned
---@return number? result Status of ban. 0 if success, 1 if syntax error, 2 if target not found, 3 if a longer band already exists, null if unknown result
function Ban(banMode, nameOrIp, duration, reason, whoBanned) end

---Saves all Players
function SaveAllPlayers() end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@param delay number Mail send delay in milliseconds.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@param delay number Mail send delay in milliseconds.
---@param money number Money to send.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@param delay number Mail send delay in milliseconds.
---@param money number Money to send.
---@param cod number Cod money amount.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money, cod) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@param delay number Mail send delay in milliseconds.
---@param money number Money to send.
---@param cod number Cod money amount.
---@param entry number Entry of an Item to send with mail.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money, cod, entry) end

---Sends mail to a player
---@param subject string Title (subject) of the mail.
---@param text string Contents of the mail.
---@param receiverGUIDLow number Low GUID of the receiver.
---@param senderGUIDLow number Low GUID of the sender.
---@param stationary MailStationary Type of mail that is being sent as, refer to MailStationery above.
---@param delay number Mail send delay in milliseconds.
---@param money number Money to send.
---@param cod number Cod money amount.
---@param entry number Entry of an Item to send with mail.
---@param amount number Amount of the Item to send with mail.
---@return number? itemGUIDLow Low GUID of the item. Up to 12 values returned, returns nil if no further items are sent.
function SendMail(subject, text, receiverGUIDLow, senderGUIDLow, stationary, delay, money, cod, entry, amount) end

---Performs a bitwise AND (a & b).
---@param a number
---@param b number
---@return number result
function bit_and(a, b) end

---Performs a bitwise OR (a|b)
---@param a number
---@param b number
---@return number result
function bit_or(a, b) end

---Performs a bitwise left-shift (a << b).
---@param a number
---@param b number
---@return number result
function bit_lshift(a, b) end

---Performs a bitwise right-shift (a >> b).
---@param a number
---@param b number
---@return number result
function bit_rshift(a, b) end

---Performs a bitwise XOR (a ^ b).
---@param a number
---@param b number
---@return number result
function bit_xor(a, b) end

---Performs a bitwise NOT (~a)
---@param a number
---@return number result
function bit_not(a) end

---Adds a taxi path to a specified map, returns the used pathId.
---@param waypoints table Table containing waypoints: {map, x, y, z[, actionFlag, delay]}.
---@param mountA number Alliance Creature entry.
---@param mountH number Horde Creature entry.
---@return number actualPathId
function AddTaxiPath(waypoints, mountA, mountH) end

---Adds a taxi path to a specified map, returns the used pathId.
---@param waypoints table Table containing waypoints: {map, x, y, z[, actionFlag, delay]}.
---@param mountA number Alliance Creature entry.
---@param mountH number Horde Creature entry.
---@param price number
---@return number actualPathId
function AddTaxiPath(waypoints, mountA, mountH, price) end

---Adds a taxi path to a specified map, returns the used pathId.
---@param waypoints table Table containing waypoints: {map, x, y, z[, actionFlag, delay]}.
---@param mountA number Alliance Creature entry.
---@param mountH number Horde Creature entry.
---@param price number
---@param pathId number PathID of the taxi path
---@return number actualPathId
function AddTaxiPath(waypoints, mountA, mountH, price, pathId) end

---Returns true if the bag and slot is a valid inventory position, otherwise false.\
---Some commonly used combinations:\
---Bag 255 (common character inventory)\
---    Slots 0-18: equipment\
---    Slots 19-22: bag slots\
---    Slots 23-38: backpack\
---    Slots 39-66: bank main slots\
---    Slots 67-74: bank bag slots\
---    Slots 86-117: keyring\
---Bags 19-22 (equipped bags)\
--- Slots 0-35\
---Bags 67-74 (bank bags)\
--- Slots 0-35
---@param bag number The bag the Item is in, you can get this with `Item:GetBagSlot`.
---@param slot number The slot the Item is in within the bag, you can get this with `Item:GetSlot`.
---@return boolean isInventoryPosition
function IsInventoryPos(bag, slot) end

---Returns true if the bag and slot is a valid equipment position, otherwise false\
---See `Global:IsInventoryPos` for bag/slot combination examples.
---@param bag number The bag the Item is in, you can get this with `Item:GetBagSlot`.
---@param slot number The slot the Item is in within the bag, you can get this with `Item:GetSlot`.
---@return boolean isEquipmentPosition
function IsEquipmentPos(bag, slot) end

---Returns true if the bag and slot is a valid bank position, otherwise false.\
---See `Global:IsInventoryPos` for bag/slot combination examples.
---@param bag number The bag the Item is in, you can get this with `Item:GetBagSlot`.
---@param slot number The slot the Item is in within the bag, you can get this with `Item:GetSlot`.
---@return boolean isBankPositionValid
function IsBankPos(bag, slot) end

---Returns true if the bag and slot is a valid bag position, otherwise false.
---@param bag number The bag the Item is in, you can get this with `Item:GetBagSlot`.
---@param slot number The slot the Item is in within the bag, you can get this with `Item:GetSlot`.
---@return boolean isBagPositionValid
function IsBagPos(bag, slot) end

---Returns true if the event is currently active, otherwise false.
---@param eventId number The event id to check..
---@return boolean isActive
function IsGameEventActive(eventId) end

---Returns the server's current time
---@return number currTime The current time in milliseconds
function GetCurrTime() end

---Returns the difference between an old timestamp and the current times
---@param oldTime number An old timestamp, in milliseconds.
---@return number timeDiff The difference, in milliseconds.
function GetTimeDiff(oldTime) end

---Prints given parameters to the Information log.
---@param ... any Parameters to print
function PrintInfo(...) end

---Prints given parameters to the Error log.
---@param ... any Parameters to print
function PrintError(...) end

---Prints given parameters to the debug log.
---@param ... any Parameters to print
function PrintDebug(...) end

---Starts the event by EventId if force is set the event will force start regardless of previous state
---@param eventId number The event id to start..
function StartGameEvent(eventId) end

---Starts the event by EventId if force is set the event will force start regardless of previous state
---@param eventId number The event id to start..
---@param force boolean Set true to force start the event..
function StartGameEvent(eventId, force) end

---Stops the event by EventId if force is set the event will force stop regardless of previous state
---@param eventId number The event id to stop..
function StopGameEvent(eventId) end

---Stops the event by EventId if force is set the event will force stop regardless of previous state
---@param eventId number The event id to stop..
---@param force boolean Set true to force stop the event..
function StopGameEvent(eventId, force) end

---@alias HttpMethod
---| '"GET"'
---| '"HEAD"'
---| '"POST"'
---| '"PUT"'
---| '"PATCH"'
---| '"DELETE"'
---| '"OPTIONS"'

---Performs a non-blocking HTTP request.
---@param httpMethod HttpMethod
---@param url string
---@param callback fun(status: string, body: string, headers: table) Function that will be called when the request is executed
function HttpRequest(httpMethod, url, callback) end

---Performs a non-blocking HTTP request.
---@param httpMethod HttpMethod
---@param url string
---@param headers table A table with string key-value pairs containing the request headers
---@param callback fun(status: string, body: string, headers: table) Function that will be called when the request is executed
function HttpRequest(httpMethod, url, headers, callback) end

---Performs a non-blocking HTTP request.
---@param httpMethod HttpMethod
---@param url string
---@param body string
---@param contentType string
---@param callback fun(status: string, body: string, headers: table) Function that will be called when the request is executed
function HttpRequest(httpMethod, url, body, contentType, callback) end

---Performs a non-blocking HTTP request.
---@param httpMethod HttpMethod
---@param url string
---@param body string
---@param contentType string
---@param headers table A table with string key-value pairs containing the request headers
---@param callback fun(status: string, body: string, headers: table) Function that will be called when the request is executed
function HttpRequest(httpMethod, url, body, contentType, headers, callback) end

---Returns an object representing a long long (64-bit) value.\
---The value by default is 0, but can be initialized to a value by passing a number or long long as a string.
---@return 0
function CreateLongLong() end

---Returns an object representing a long long (64-bit) value.\
---The value by default is 0, but can be initialized to a value by passing a number or long long as a string.
---@param parseValue string|number
---@return number value integers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
function CreateLongLong(parseValue) end

---Returns an object representing an unsigned long long (64-bit) value.\
---The value by default is 0, but can be initialized to a value by passing a number or unsigned long long as a string.
---@return 0
function CreateULongLong() end

---Returns an object representing an unsigned long long (64-bit) value.\
---The value by default is 0, but can be initialized to a value by passing a number or unsigned long long as a string.
---@param parseValue number|string
---@return number value  integers from 0 to 18,446,744,073,709,551,615.
function CreateULongLong(parseValue) end

---Unbinds event handlers for either all BattleGround events, or one type of event.\
---If event_type is nil, all BattleGround event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
function ClearBattleGroundEvents() end

---Unbinds event handlers for either all BattleGround events, or one type of event.\
---If event_type is nil, all BattleGround event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param event_type number The event whose handlers will be cleared, see Global:RegisterBGEvent.
function ClearBattleGroundEvents(event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.\
---If event_type is nil, all the Creature's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *this will affect all instances of the Creature, not just one. To bind and unbind events to a single Creature, see `Global:RegisterUniqueCreatureEvent` and `Global:ClearUniqueCreatureEvents`.*
---@param entry number The ID of one or more Creatures whose handlers will be cleared.
function ClearCreatureEvents(entry) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.\
---If event_type is nil, all the Creature's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *this will affect all instances of the Creature, not just one. To bind and unbind events to a single Creature, see `Global:RegisterUniqueCreatureEvent` and `Global:ClearUniqueCreatureEvents`.*
---@param entry number The ID of one or more Creatures whose handlers will be cleared.
---@param event_type number  The event whose handlers will be cleared, see `Global:RegisterCreatureEvent`.
function ClearCreatureEvents(entry, event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.\
---If event_type is nil, all the Creature's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: this will affect only a single Creature. To bind and unbind events to all instances of a Creature, see `Global:RegisterCreatureEvent` and `Global:ClearCreatureEvent`.
---@param entry number The GUID of a single Creature whose handlers will be cleared.
function ClearUniqueCreatureEvents(entry) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.\
---If event_type is nil, all the Creature's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: this will affect only a single Creature. To bind and unbind events to all instances of a Creature, see `Global:RegisterCreatureEvent` and `Global:ClearCreatureEvent`.
---@param entry number The GUID of a single Creature whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see Global:RegisterCreatureEvent.
function ClearUniqueCreatureEvents(entry, event_type) end

---Unbinds event handlers for either all of a Creature's events, or one type of event.\
---If event_type is nil, all the Creature's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: this will affect only a single Creature. To bind and unbind events to all instances of a Creature, see `Global:RegisterCreatureEvent` and `Global:ClearCreatureEvent`.
---@param entry number The GUID of a single Creature whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see Global:RegisterCreatureEvent.
---@param instance_id number The instance ID of a single Creature whose handlers will be cleared.
function ClearUniqueCreatureEvents(entry, event_type, instance_id) end

---Unbinds event handlers for either all of a Creature's gossip events, or one type of event.\
---If event_type is nil, all the Creature's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the Creature, not just one. To bind and unbind gossip events to a single Creature, tell the Eluna developers to implement that.*
---@param entry number The ID of a Creature whose handlers will be cleared.
function ClearCreatureGossipEvents(entry) end

---Unbinds event handlers for either all of a Creature's gossip events, or one type of event.\
---If event_type is nil, all the Creature's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the Creature, not just one. To bind and unbind gossip events to a single Creature, tell the Eluna developers to implement that.*
---@param entry number The ID of a Creature whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterCreatureGossipEvent`.
function ClearCreatureGossipEvents(entry, event_type) end

---Unbinds event handlers for either all of a GameObject's events, or one type of event.\
---If event_type is nil, all the GameObject's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the GameObject, not just one. To bind and unbind events to a single GameObject, tell the Eluna developers to implement that.*
---@param entry number The ID of a GameObject whose handlers will be cleared.
function ClearGameObjectEvents(entry) end

---Unbinds event handlers for either all of a GameObject's events, or one type of event.\
---If event_type is nil, all the GameObject's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the GameObject, not just one. To bind and unbind events to a single GameObject, tell the Eluna developers to implement that.*
---@param entry number The ID of a GameObject whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterGameObjectEvent`.
function ClearGameObjectEvents(entry, event_type) end

---Unbinds event handlers for either all of a GameObject's gossip events, or one type of event.\
---If event_type is nil, all the GameObject's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: this will affect all instances of the GameObject, not just one. To bind and unbind gossip events to a single GameObject, tell the Eluna developers to implement that.
---@param entry number The ID of a GameObject whose handlers will be cleared.
function ClearGameObjectGossipEvents(entry) end

---Unbinds event handlers for either all of a GameObject's gossip events, or one type of event.\
---If event_type is nil, all the GameObject's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: this will affect all instances of the GameObject, not just one. To bind and unbind gossip events to a single GameObject, tell the Eluna developers to implement that.
---@param entry number The ID of a GameObject whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterGameObjectGossipEvent`.
function ClearGameObjectGossipEvents(entry, event_type) end

---Unbinds event handlers for either all Group events, or one type of Group event.\
---If event_type is nil, all Group event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
function ClearGroupEvents() end

---Unbinds event handlers for either all Group events, or one type of Group event.\
---If event_type is nil, all Group event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterGroupEvent`.
function ClearGroupEvents(event_type) end

---Unbinds event handlers for either all Guild events, or one type of Guild event.
---If event_type is nil, all Guild event handlers are cleared.
---Otherwise, only event handlers for event_type are cleared.
function ClearGuildEvents() end

---Unbinds event handlers for either all Guild events, or one type of Guild event.
---If event_type is nil, all Guild event handlers are cleared.
---Otherwise, only event handlers for event_type are cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterGuildEvent`.
function ClearGuildEvents(event_type) end

---Unbinds event handlers for either all of an Item's events, or one type of event\
---If event_type is nil, all the Item's event handlers are cleared\
---Otherwise, only event handlers for event_type are cleared\
---NOTE: *This will affect all instances of the Item, not just one. To bind and unbind events to a single Item, tell the Eluna developers to implement that*.
---@param entry any The ID of an Item whose handlers will be cleared.
function ClearItemEvents(entry) end

---Unbinds event handlers for either all of an Item's events, or one type of event\
---If event_type is nil, all the Item's event handlers are cleared\
---Otherwise, only event handlers for event_type are cleared\
---NOTE: *This will affect all instances of the Item, not just one. To bind and unbind events to a single Item, tell the Eluna developers to implement that*.
---@param entry any The ID of an Item whose handlers will be cleared.
---@param event_type any The event whose handlers will be cleared, see `Global:RegisterItemEvent`.
function ClearItemEvents(entry, event_type) end

---Unbinds event handlers for either all of an Item's gossip events, or one type of event.\
---If event_type is nil, all the Item's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the Item, not just one. To bind and unbind gossip events to a single Item, tell the Eluna developers to implement that.*
---@param entry number The ID of an Item whose handlers will be cleared.
function ClearItemGossipEvents(entry) end

---Unbinds event handlers for either all of an Item's gossip events, or one type of event.\
---If event_type is nil, all the Item's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---NOTE: *This will affect all instances of the Item, not just one. To bind and unbind gossip events to a single Item, tell the Eluna developers to implement that.*
---@param entry number The ID of an Item whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterItemGossipEvent`.
function ClearItemGossipEvents(entry, event_type) end

---Unbinds event handlers for either all of a WorldPacket opcode's events, or one type of event.\
---If event_type is nil, all the WorldPacket opcode's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param opcode number The type of WorldPacket whose handlers will be cleared.
function ClearPacketEvents(opcode) end

---Unbinds event handlers for either all of a WorldPacket opcode's events, or one type of event.\
---If event_type is nil, all the WorldPacket opcode's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param opcode number The type of WorldPacket whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterPacketEvent`.
function ClearPacketEvents(opcode, event_type) end

---Unbinds event handlers for either all Player events, or one type of Player event.\
---If event_type is nil, all Player event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
function ClearPlayerEvents() end

---Unbinds event handlers for either all Player events, or one type of Player event.\
---If event_type is nil, all Player event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterPlayerEvent`.
function ClearPlayerEvents(event_type) end

---Unbinds event handlers for either all of a Player's gossip events, or one type of event.\
---If event_type is nil, all the Player's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param entry number The low GUID of a Player whose handlers will be cleared.
function ClearPlayerGossipEvents(entry) end

---Unbinds event handlers for either all of a Player's gossip events, or one type of event.\
---If event_type is nil, all the Player's gossip event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param entry number The low GUID of a Player whose handlers will be cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterPlayerGossipEvent`.
function ClearPlayerGossipEvents(entry, event_type) end

---Unbinds event handlers for either all server events, or one type of event.\
---If event_type is nil, all server event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
function ClearServerEvents() end

---Unbinds event handlers for either all server events, or one type of event.\
---If event_type is nil, all server event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterServerEvent`.
function ClearServerEvents(event_type) end

---Unbinds event handlers for either all of a non-instanced Map's events, or one type of event.\
---If event_type is nil, all the non-instanced Map's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param map_id number The ID of a Map.
function ClearMapEvents(map_id) end

---Unbinds event handlers for either all of a non-instanced Map's events, or one type of event.\
---If event_type is nil, all the non-instanced Map's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param map_id number The ID of a Map.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterPlayerGossipEvent`.
function ClearMapEvents(map_id, event_type) end

---Unbinds event handlers for either all of an instanced Map's events, or one type of event.\
---If event_type is nil, all the instanced Map's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.\
---@param instance_id number The ID of an instance of a Map.
function ClearInstanceEvents(instance_id) end

---Unbinds event handlers for either all of an instanced Map's events, or one type of event.\
---If event_type is nil, all the instanced Map's event handlers are cleared.\
---Otherwise, only event handlers for event_type are cleared.
---@param instance_id number The ID of an instance of a Map.
---@param event_type number The event whose handlers will be cleared, see `Global:RegisterInstanceEvent`.
function ClearInstanceEvents(instance_id, event_type) end

---Gets the faction which is the current owner of Halaa in Nagrand 0 = Alliance 1 = Horde\
---600 = slider max Alliance -600 = slider max Horde
---@return {the: number, the: number}
function GetOwnerHalaa() end

---Sets the owner of Halaa in Nagrand to respective faction 0 = Alliance, 1 = Horde
---@param teamId TeamId
function SetOwnerHalaa(teamId) end
