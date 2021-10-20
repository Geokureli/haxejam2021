package props;

import flixel.FlxSprite;

/*
var bgCollider:FlxSprite = new FlxSprite(0, 185).loadGraphic("assets/images/collider.png");
				bgCollider.setGraphicSize(FlxG.width, 24);
				bgCollider.updateHitbox();
				bgCollider.x = 0;
				add(bgCollider);
*/
class Collider extends FlxSprite
{
	public function new(X:Float, Y:Float, Width:Int, Height:Int)
	{
		super(X, Y);

		immovable = true;

		loadGraphic("assets/images/collider.png");
		setGraphicSize(Width, Height);
		updateHitbox();
	}

}