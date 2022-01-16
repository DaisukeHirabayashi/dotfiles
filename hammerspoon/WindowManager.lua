--- start move cursor bewteen screens
function show_circle()
  local mousepoint = hs.mouse.getAbsolutePosition()
  local color = {["red"]=0,["blue"]=1,["green"]=0,["alpha"]=0.5}
  local circle = hs.drawing.circle(hs.geometry.rect(mousepoint.x - 40, mousepoint.y - 40, 80, 80))
  circle:setStrokeColor(color)
  circle:setFill(false)
  circle:setStrokeWidth(5)
  circle:bringToFront(true)
  circle:show(0.5)
  hs.timer.doAfter(0.8, function()
    circle:delete()
  end)
end

function move_cursor(direction)
  return function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen
    if direction == "right" then
      nextScreen = screen:next()
    else
      nextScreen = screen:previous()
    end

    local rect = nextScreen:fullFrame()
    -- get the center of the rect
    local center = hs.geometry.rect(rect).center
    hs.mouse.setAbsolutePosition(center)
    show_circle()
  end
end

-- カーソルを右スクリーンに移動 --
hs.hotkey.bind({"cmd"}, "r", move_cursor('right'))

-- カーソルを左スクリーンに移動 --
hs.hotkey.bind({"cmd"}, "l", move_cursor('left'))