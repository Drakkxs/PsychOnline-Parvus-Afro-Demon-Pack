function onCreate()
    -- setProperty('camGame.alpha', 0)
    -- setProperty('camHUD.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('camZooming', true)
    setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.8)
end

function onSongStart()
    startVideo('ahuro', false, true)
    cameraFlash('other', '000000', 1)
end

function onBeatHit()
    if curBeat == 7 then
        setProperty('opponentCameraOffset[0]', -150)
        setProperty('opponentCameraOffset[1]', -150)
        setProperty('camGame.alpha', 1)
        setProperty('cameraSpeed', 100)
        setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.2)
        setProperty('camZoomingDecay', 3)
        cameraFlash('game', 'FFFFFF', 0.5)
    end
    if curBeat == 8 then
        setProperty('opponentCameraOffset[0]', 0)
        setProperty('opponentCameraOffset[1]', 0)
        startTween('HUDTween', 'camHUD', {
            alpha = 1
        }, 0.25);
        setProperty('cameraSpeed', 1)
        setProperty('camZoomingDecay', 1.5)
        setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.9)
    end
    if curBeat == 24 then
        setProperty('opponentCameraOffset[0]', 0)
        setProperty('opponentCameraOffset[1]', 0)
    end
end
