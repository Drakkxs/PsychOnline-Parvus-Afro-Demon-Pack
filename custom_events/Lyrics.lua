function onEvent(name, value1, value2)
    if name == 'Lyrics' then
		setTextString('lyric', value1)
		setTextSize('lyric', value2)
    end
end

function onCreate()
    makeLuaText('lyric', '', screenWidth, 0, 500)
    addLuaText('lyric')
	setObjectCamera('lyric', 'other')
	setTextFont('lyric', 'times-new-roman.ttf')
end