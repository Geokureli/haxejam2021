package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import props.Collider;
import props.Player;
import utils.GameInfo;
import utils.Paths;

class PlayState extends FlxState
{
	public var colliderGroup:FlxTypedGroup<Collider>;

	var player:Player;

	override public function create()
	{
		colliderGroup = new FlxTypedGroup<Collider>();
		player = new Player(250, 250);

		generateRoom(0);
		add(colliderGroup);
		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		collisionCheck();
		super.update(elapsed);
	}

	function collisionCheck()
	{
		if (FlxG.collide(player, colliderGroup))
		{
			trace("colliseien???");
		}
	}

	function generateRoom(curLevel:Int)
	{
		if (curLevel > GameInfo.maxLevels || curLevel < 0)
		{
			// error out here
		}

		switch (curLevel)
		{
			case 0:
			{
				trace ("level 0");
				var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("levels/" + curLevel + "/bg"));
				add(bg);

				var bgCollider:Collider = new Collider(0, 185, FlxG.width, 24);
				add(bgCollider);
				colliderGroup.add(bgCollider);

				/*
				var bgCollider:FlxSprite = new FlxSprite(0, 185).loadGraphic("assets/images/collider.png");
				bgCollider.setGraphicSize(FlxG.width, 24);
				bgCollider.updateHitbox();
				bgCollider.x = 0;
				add(bgCollider);
				*/
			}
		}
	}
}
