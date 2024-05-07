local POWER = require "power"

local vlo, vhi = 5.6, 8.4

gre.timer_set_interval(function()
  gre.thread_create(function()
    local succeeded, powersupply = pcall(POWER.supply, "battery", "charger")
    if succeeded then
      local voltage = powersupply.battery.POWER_SUPPLY_VOLTAGE_NOW / 1e6
      set_battery_percent(100 * (voltage - vlo) / (vhi - vlo))
    end
  end)
end, 2000)
