function onEvent(event, value1, value2, strumTime)
    if event == 'uwu' then
        if value1 == 'sb2' then
            if value2 == 'black' then
                runHaxeCode([[
                    game.camGame.visible = !game.camGame.visible;
                ]])
            end
            if value2 == 'flash' then
                cameraFlash('game', 'FFFFFF', 1)
            end
        end
    end
end
