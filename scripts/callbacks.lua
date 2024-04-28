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
  env:set_screen(env:screen_for(transition))
end
