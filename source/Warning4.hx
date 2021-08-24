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


class Warning4 extends MusicBeatState
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
			"THIS MOD USED"
			+ "\nZardy MKp Song Cover"
			+ "\nZardy Remastered"
			+ "\nTricky Mod"
			+ "\nHD Senpai over Dad"
			+ "\nHD Monika over Dad "
			+ "\nWeek 6 HD "
			+ "\nFriday Night Vibin' "
			+ "\nPress Enter To Leave This Page",
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
			if (FlxG.save.data.credit)
				{
					FlxG.switchState(new CreditState2());
					FlxG.save.data.credit = false;
				}
			else
				{
					FlxG.switchState(new MainMenuState());
				}
			
		}
		super.update(elapsed);
	}
}
