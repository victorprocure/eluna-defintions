---@meta

---A packet used to pass messages between the server and a client.\
---Each packet has an opcode that determines the type of message being sent, e.g. if a CMSG_LOGOUT_REQUEST packet is sent to the server, the client has sent a message that its Player wants to logout.\
---The packet can contain further data, the format of which depends on the opcode.
---@see Opcodes
---@class WorldPacket
WorldPacket = {}