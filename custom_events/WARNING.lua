warning = false

function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'WARNING' then
        if not warning then
            makeLuaSprite("warning", "game/WARNING", -1250, -280)
            setProperty("warning.antialiasing", false)
            addLuaSprite("warning", false)
            scaleObject('warning', 1.7, 1.7);
            warning = true
        else
            removeLuaSprite('warning', true);
            warning = false
        end
    end
end