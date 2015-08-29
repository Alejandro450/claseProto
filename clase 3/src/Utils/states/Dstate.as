package Utils.states
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import Utils.start.DStarling;
	
	
	/**
	 * ...
	 * @author Alejandro
	 */
	public class Dstate extends Sprite
	{
		protected var skin:Image;
		protected var clip:String;
		
		public function Dstate(_clip:String) 
		{
			clip = _clip;
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		
		private function added(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, added);
			init();
		}
		
		public function init():void
		{
		 skin = new Image(DStarling.assetsManager.getTexture(clip));
		 addChild(skin);
		}
	}

}