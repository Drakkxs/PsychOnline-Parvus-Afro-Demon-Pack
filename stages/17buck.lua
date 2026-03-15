function onCreate() 

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf_ourple')
	makeLuaSprite('backstage','bg/bckrom', -550,-580)
	scaleObject('backstage', 1.75, 1.75)
	updateHitbox('backstage')
	setProperty('backstage.antialiasing', false)
	addLuaSprite('backstage',false)

	makeLuaSprite('BG',nil,-5000,-5000);
    makeGraphic('BG', 10000, 10000, 'FFFFFF')
    addLuaSprite('BG',false)

end