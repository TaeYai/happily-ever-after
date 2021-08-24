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


class Warning3 extends MusicBeatState
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
			+ "\nThe Date Week"
			+ "\nSarvente's Mid-Fight Masses"
			+ "\nSalty's Sunday Night"
			+ "\nVs Bob"
			+ "\nOpheeBob "
			+ "\nEx-GF Over Mom"
			+ "\nV.S. TABI Ex Boyfriend"
			+ "\nVS Annie OC Week"
			+ "\nSmoke 'Em Out Struggle VS Garcello"
			+ "\nVS Sunday Remastered"
			+ "\nCosmo Calamity VS. Yukichi"
			+ "\nVS Impostor V2"
			+ "\nShaggy x Matt"
			+ "\nVS Bob and Bosip"
			+ "\nStarlight Mayhem VS CJ"
			+ "\nHatsune Miku Full Week"
			+ "\nVS Hex"
			+ "\nMonika Full Week Rebooted"
			+ "\nDate with GF"
			+ "\nNeonight Song Cover"
			+ "\nPress Enter To Go Page 2",
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
			FlxG.switchState(new Warning4());
		}
		super.update(elapsed);
	}
}
