dofile("WindowManager.lua")

local function openApp(app, path)
  local application = hs.application.find(app)
  if application ~= nil and application:isFrontmost() then
      application:hide()
  else
      hs.application.launchOrFocus(path)
  end
end

-- [[
-- open google chrome
-- ]]
hs.hotkey.bind({"cmd", "shift",}, "g", function()
  openApp("chrome", "/Applications/Google Chrome.app")
end)

-- [[
--open slack
-- ]]
hs.hotkey.bind({"cmd", "shift"}, "s", function()
  openApp("slack", "/Applications/Slack.app")
end)
