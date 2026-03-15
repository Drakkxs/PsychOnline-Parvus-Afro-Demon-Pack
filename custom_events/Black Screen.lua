black = false

function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'Black Screen' then
        if not black then
            setProperty('camGame.visible', false)
            --setProperty('camHUD.visible', false)
            black = true
        else
            setProperty('camGame.visible', true)
            --setProperty('camHUD.visible', true)
            black = false
        end
    end
end