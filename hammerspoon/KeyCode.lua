local simpleCmd = false
local map = hs.keycodes.map
local function eikanaEvent(event)
  local c = event:getKeyCode()
  local f = event:getFlags()
  if event:getType() == hs.eventtap.event.types.keyDown then
    if f['cmd'] then
      simpleCmd = true
    end
  elseif event:getType() == hs.eventtap.event.types.flagsChanged then
    if not f['cmd'] then
      if simpleCmd == false then
        if c == map['cmd'] then
          hs.keycodes.setLayout('ABC')
        elseif c == map['rightcmd'] then
          hs.keycodes.setMethod('Hiragana')
        end
      end
      simpleCmd = false
    end
  end
end

eikana = hs.eventtap.new({hs.eventtap.event.types.keyDown, hs.eventtap.event.types.flagsChanged}, eikanaEvent)
eikana:start()
