function onEvent(name:String, value1:String, value2:String, strumTime:Float)
{
	if (name == "Add Default Camera Zoom")
	{
		if (value2.toLowerCase() != 'true')
			game.defaultCamZoom += Std.parseFloat(value1);
		else
			game.defaultCamZoom = Std.parseFloat(value1);
		game.camZooming = true;
	}
}