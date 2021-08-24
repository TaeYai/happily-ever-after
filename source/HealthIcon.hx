package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;
	public var character:String = "";

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 0], 0, false, isPlayer);		
		animation.add('gf', [1, 1], 0, false, isPlayer);
		animation.add('gfplay', [1, 1], 0, false, isPlayer);
		animation.add('dad', [2, 2], 0, false, isPlayer);
		animation.add('mom', [3, 3], 0, false, isPlayer);
		animation.add('bob', [4, 4], 0, false, isPlayer);
		animation.add('op', [5, 5], 0, false, isPlayer);
		animation.add('cj', [6, 6], 0, false, isPlayer);
		animation.add('ruby', [7, 7], 0, false, isPlayer);
		animation.add('garcello', [8, 8], 0, false, isPlayer);
		animation.add('annie', [9, 9], 0, false, isPlayer);
		animation.add('annie2', [9, 9], 0, false, isPlayer);
		animation.add('playablesenpai', [10, 10], 0, false, isPlayer);
		animation.add('monika', [11, 11], 0, false, isPlayer);
		animation.add('zardy', [12, 12], 0, false, isPlayer);
		animation.add('tricky', [13, 13], 0, false, isPlayer);
		animation.add('sarv', [14, 14], 0, false, isPlayer);
		animation.add('ruv', [15, 15], 0, false, isPlayer);
		animation.add('carol_date', [16, 16], 0, false, isPlayer);
		animation.add('whitty_date', [17, 17], 0, false, isPlayer);
		animation.add('selv', [18, 18], 0, false, isPlayer);
		animation.add('sunday', [19, 19], 0, false, isPlayer);
		animation.add('shaggy', [20, 20], 0, false, isPlayer);
		animation.add('matt', [21, 21], 0, false, isPlayer);
		animation.add('tabi', [22, 22], 0, false, isPlayer);
		animation.add('exgf', [23, 23], 0, false, isPlayer);
		animation.add('miku', [24, 24], 0, false, isPlayer);
		animation.add('hex', [25, 25], 0, false, isPlayer);
		animation.add('imposter', [26, 26], 0, false, isPlayer);
		animation.add('pierogii', [27, 27], 0, false, isPlayer);
		animation.add('bob2', [28, 28], 0, false, isPlayer);
		animation.add('bosip', [29, 29], 0, false, isPlayer);
		animation.play(char);
		
		switch(char)
		{
			case 'monika' | 'senpai':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
