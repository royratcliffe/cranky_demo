local POWER = require "power"

gre.timer_set_interval(function()
  gre.thread_create(function()
    local succeeded, powersupply = pcall(POWER.supply, "battery", "charger")
    if succeeded then
      gre.set_value("battery", powersupply.battery.POWER_SUPPLY_VOLTAGE_NOW / 1e6 .. "V")
    end
  end)
end, 2000)
