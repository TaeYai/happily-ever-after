package;

import Song.SwagSong;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;


class Warning2 extends MusicBeatState
{
	public static var leftState:Bool = false;

	public static var needVer:String = "Dating2";
	public static var currChanges:String = "Love2";
	
	private var bgColors:Array<String> = [
		'#314d7f',
		'#4e7093',
		'#70526e',
		'#594465'
	];
	private var colorRotation:Int = 1;

	override function create()
	{
		super.create();

		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"ARE YOU SURE YOU READ IT?"
			+ "\nWHEN YOU START THE GAME"
			+ "\nTHE GAME WILL LOAD THE ASSETS"
			+ "\nDONT SCARE ABOUT IT"
			+ "\nHAVE FUN! -TaeYai"
			+ "\nPress Enter To Go Credit Page",
			32);
		
		txt.setFormat("VCR OSD Mono", 32, FlxColor.fromRGB(200, 200, 200), CENTER);
		txt.borderColor = FlxColor.BLACK;
		txt.borderSize = 3;
		txt.borderStyle = FlxTextBorderStyle.OUTLINE;
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			FlxG.switchState(new Warning3());
		}
		super.update(elapsed);
	}
}
