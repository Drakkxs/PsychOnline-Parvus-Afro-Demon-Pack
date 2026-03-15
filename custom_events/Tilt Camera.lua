function onEvent(name, value1, value2)
    if name == 'Tilt Camera' then
        local tiltAngle = tonumber(value1) or 0
        local duration = tonumber(value2) or 1

        -- まず指定角度にすぐ傾ける
        setProperty('camGame.angle', tiltAngle)

        -- そこから元に戻すトゥウィーン
        doTweenAngle('camTiltBack', 'camGame', 0, duration, 'quartOut')
    end
end