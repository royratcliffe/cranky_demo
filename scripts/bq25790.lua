local POWER = require "power"

gre.timer_set_interval(function()
  gre.thread_create(function()
    local succeeded, powersupply = pcall(POWER.supply, "battery", "charger")
    if succeeded then
      local voltage = powersupply.battery.POWER_SUPPLY_VOLTAGE_NOW / 1e6
      set_battery_percent(100 * (voltage - 5.4) / (8.4 - 5.4))
    end
  end)
end, 2000)
