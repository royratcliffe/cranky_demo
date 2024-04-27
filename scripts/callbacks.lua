local env = {}

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

--- Initialises application.
-- Loads the demo environment.
-- @tparam gre#context mapargs GRE arguments.
function init_cb(mapargs)
  assert(pcall(setfenv(assert(loadfile(gre.APP_ROOT .. "/env.lua")), env)))
end

--- Pre-shows the initial screen.
-- @tparam gre#context mapargs GRE arguments.
function pre_show_screen_cb(mapargs)
  env:set_screen(env.screen)
end

--- Responds to key-down actions.
-- @tparam gre#context mapargs GRE arguments.
function key_down_cb(mapargs)
  local key = mapargs.context_event_data.key
  local transition = env.keys[key]
  print("key_down: " .. (transition or key))
  if transition then
    env:set_screen(env:screen_for(transition))
  end
end
