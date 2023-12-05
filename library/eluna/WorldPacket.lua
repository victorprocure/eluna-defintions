---@meta

---A packet used to pass messages between the server and a client.\
---Each packet has an opcode that determines the type of message being sent, e.g. if a CMSG_LOGOUT_REQUEST packet is sent to the server, the client has sent a message that its Player wants to logout.\
---The packet can contain further data, the format of which depends on the opcode.
---@see Opcodes
---@class WorldPacket
WorldPacket = {}

---Returns the opcode of the WorldPacket.
---@return Opcodes
function WorldObject:GetOpcode() end

---Returns the size of the WorldPacket.
---@return number size
function WorldObject:GetSize() end

---Reads and returns a signed 8-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadByte() end

---Reads and returns a double-precision floating-point value from the WorldPacket.
---@return number
function WorldObject:ReadDouble() end

---Reads and returns a single-precision floating-point value from the WorldPacket.
---@return number
function WorldObject:ReadFloat() end

---Reads and returns an unsigned 64-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadGUID() end

---Reads and returns a signed 32-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadLong() end

---Reads and returns a signed 16-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadShort() end

---Reads and returns a string value from the WorldPacket.
---@return string
function WorldObject:ReadString() end

---Reads and returns an unsigned 8-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadUByte() end

---Reads and returns an unsigned 32-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadULong() end

---Reads and returns an unsigned 16-bit integer value from the WorldPacket.
---@return number
function WorldObject:ReadUShort() end

---Sets the OpCode for the WorldPacket
---@param opCode Opcodes
function WorldObject:SetOpcode(opCode) end

---Writes a signed 8-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteByte(value) end

---Writes a 64-bit floating-point value to the WorldPacket.
---@param value number
function WorldObject:WriteDouble(value) end

---Writes a 32-bit floating-point value to the WorldPacket.
---@param value number
function WorldObject:WriteFloat(value) end

---Writes an unsigned 64-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteGUID(value) end

---Writes a signed 32-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteLong(value) end

---Writes a signed 16-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteShort(value) end

---Writes a string to the WorldPacket.
---@param value string
function WorldObject:WriteString(value) end

---Writes an unsigned 8-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteUByte(value) end

---Writes an unsigned 32-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteULong(value) end

---Writes an unsigned 16-bit integer value to the WorldPacket.
---@param value number
function WorldObject:WriteUShort(value) end
