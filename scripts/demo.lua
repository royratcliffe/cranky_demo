env = {}

--- Sets a new screen.
-- Updates the `Screen.image` variable bound to the image control.
-- @tparam ?string screen New screen.
function env:set_screen(screen)
  if screen then
    self.screen = screen
    gre.set_value("Screen.image", self.screens[screen].image)
  end
end

--- Answers new screen for given transition.
-- @tparam ?string transition Transition to search for.
-- @treturn ?string New screen for transition.
function env:screen_for(transition)
  return transition and self.screens[self.screen][transition]
end
