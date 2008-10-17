package com.ply.containers
{
	import com.ply.components.ItemsComponent;
	
	import flash.display.DisplayObject;

	public class HBox extends ItemsComponent
	{
		public function HBox()
		{
			super();
		}
		override protected function layoutChildren():void
		{
			super.layoutChildren();
			var u:int = 0;
			for (var i:int=0;i<numChildren;i++){
				var item:DisplayObject = getChildAt(i);
				item.x = u;
				u += item.width + gap;
				preferedHeight = Math.max(preferedHeight,item.height);
			}
			preferedWidth = u;
			setSize();
		}
	}
}