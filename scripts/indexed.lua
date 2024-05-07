local _M = {}

--- Gets or puts if not found.
-- @tparam tab indexed Table of index-value pairs.
-- @param index Index to find.
-- @tparam func default Answers the default if not found.
-- @return Found value else new value.
function _M.lazy(indexed, index, default)
  local value = indexed[index]
  if value == nil then
    value = default()
    indexed[index] = value
  end
  return value
end

return _M