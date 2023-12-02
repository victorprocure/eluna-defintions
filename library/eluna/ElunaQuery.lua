---@meta


---The result of a database query.
---@class ElunaQuery
ElunaQuery = {}

---Returns the data in the specified column of the current row, casted to a boolean.
---@param column number
---@return boolean data
function ElunaQuery:GetBool(column) end

---Returns the number of columns in the result set.
---@return number columnCount
function ElunaQuery:GetColumnCount() end

---Returns the data in the specified column of the current row, casted to a 64-bit floating point value.
---@param column number
---@return number data
function ElunaQuery:GetDouble(column) end

---Returns the data in the specified column of the current row, casted to a 32-bit floating point value.
---@param column number
---@return number data
function ElunaQuery:GetFloat(column) end

---Returns the data in the specified column of the current row, casted to a signed 16-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetInt16(column) end

---Returns the data in the specified column of the current row, casted to a signed 32-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetInt32(column) end

---Returns the data in the specified column of the current row, casted to a signed 64-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetInt64(column) end

---Returns the data in the specified column of the current row, casted to a signed 8-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetInt8(column) end

---Returns a table from the current row where keys are field names and values are the row's values.\
---All numerical values will be numbers and everything else is returned as a string.\
---    For example, the query:\
---      `SELECT entry, name FROM creature_template`\
---    would result in a table like:\
---      `{ entry = 123, name = "some creature name" }`
---@return table rowData Table filled with row columns and data where T[column] = data. 
function ElunaQuery:GetRow() end

---Returns the number of rows in the result set.
---@return number rowCount
function ElunaQuery:GetRowCount() end

---Returns the data in the specified column of the current row, casted to a string value.
---@param column number
---@return string data
function ElunaQuery:GetString(column) end

---Returns the data in the specified column of the current row, casted to a unsigned 16-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetUInt16(column) end

---Returns the data in the specified column of the current row, casted to a unsigned 32-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetUInt32(column) end

---Returns the data in the specified column of the current row, casted to a unsigned 64-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetUInt64(column) end

---Returns the data in the specified column of the current row, casted to a unsigned 8-bit integer value.
---@param column number
---@return number data
function ElunaQuery:GetUInt8(column) end

---Returns true if the specified column of the current row is NULL, otherwise false.
---@param column number
---@return boolean isNull
function ElunaQuery:IsNull(column) end

---Advances the ElunaQuery to the next row in the result set.\
---**Do not call this immediately after a query**, or you'll skip the first row.\
---Returns `false` if there was no new row, otherwise `true`.
---@return boolean hadNextRow
function ElunaQuery:NextRow() end