env = {}

--- Sets a new screen.
-- Updates the `Screen.image` variable bound to the image control.
-- @tparam ?string screen New screen.
function env:set_screen(screen)
  if screen then
    self.screen = screen
    local sub_env = self.screens[screen]
    gre.set_value("Screen.image", sub_env.image)
    if sub_env.battery ~= nil then
      show_battery_icon(sub_env.battery)
    end
  end
end

--- Answers new screen for given transition.
-- @tparam ?string transition Transition to search for.
-- @treturn ?string New screen for transition.
function env:screen_for(transition)
  return transition and self.screens[self.screen][transition]
end
