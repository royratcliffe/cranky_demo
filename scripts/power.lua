local _M = {}
local INDEXED = require "indexed"

function _M.supply(...)
  local powersupply = {}
  for _, arg in ipairs { ... } do
    for line in io.lines("/sys/class/power_supply/bq25790-" .. arg .. "/uevent") do
      local first, last = string.find(line, "=", 1, true)
      if first then
        INDEXED.lazy(powersupply, arg, function()
          return {}
        end)[string.sub(line, 1, first - 1)] = string.sub(line, last + 1)
      end
    end
  end
  return powersupply
end

return _M
