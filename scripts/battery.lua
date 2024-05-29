local battery = {}

function set_battery_percent(percentage)
  battery.percentage = percentage
  if not battery.show then return end
  local colour
  if percentage < 25 then
    colour = 25
  elseif percentage < 50 then
    colour = 50
  else
    colour = 75
  end
  local image = "images/" .. colour .. "_battery_icon.png"
  local image1 = "images/" .. colour .. "_battery_icon1.png"
  gre.set_value("battery_image", image)
  gre.set_value("battery_image1", percentage >= 0 and image1 or "")
  gre.set_value("battery_image2", percentage >= 25 and image1 or "")
  gre.set_value("battery_image3", percentage >= 50 and image1 or "")
  gre.set_value("battery_image4", percentage >= 75 and image1 or "")
end

function show_battery_icon(show)
  battery.show = show
  if not show then
    gre.set_value("battery_image", "")
    gre.set_value("battery_image1", "")
    gre.set_value("battery_image2", "")
    gre.set_value("battery_image3", "")
    gre.set_value("battery_image4", "")
  else
    set_battery_percent(battery.percentage or 50)
  end
end
