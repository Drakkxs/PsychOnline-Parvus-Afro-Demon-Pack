var isHiding:Bool = false;

function onEvent(name:String, value1:String, value2:String, strumTime:Float)
{
	if (name == 'hide hud')
	{
		var isDownScroll:Bool = ClientPrefs.data.downScroll;
		isHiding = !isHiding;

		var objectsUpper:Array<FlxObject> = [game.healthBar, game.iconP1, game.iconP2, game.scoreTxt];
		var objectsLower:Array<FlxObject> = [game.timeBar, game.timeTxt];
		for (obj in objectsUpper)
		{
			if (!isHiding)
			{
				// 隠れる
				FlxTween.tween(obj, {y: obj.y + (isDownScroll ? 400 : -400)}, Std.parseFloat(value1), {ease: FlxEase.cubeOut});
			}
			else
			{
				// 現れる
				FlxTween.tween(obj, {y: obj.y + (isDownScroll ? -400 : 400)}, Std.parseFloat(value1), {ease: FlxEase.cubeOut});
			}
		}
		for (obj in objectsLower)
		{
			if (!isHiding)
			{
				// 隠れる
				FlxTween.tween(obj, {y: obj.y + (isDownScroll ? -400 : 400)}, Std.parseFloat(value1), {ease: FlxEase.cubeOut});
			}
			else
			{
				// 現れる
				FlxTween.tween(obj, {y: obj.y + (isDownScroll ? 400 : -400)}, Std.parseFloat(value1), {ease: FlxEase.cubeOut});
			}
		}
	}
}
