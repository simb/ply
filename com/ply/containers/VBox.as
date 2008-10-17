package com.ply.containers
{
	import com.ply.components.ItemsComponent;
	
	import flash.display.DisplayObject;

	public class VBox extends ItemsComponent
	{
		public function VBox()
		{
			super();
		}
		override protected function layoutChildren():void
		{
			super.layoutChildren();
			var u:int = 0;
			for (var i:int=0;i<numChildren;i++){
				var item:DisplayObject = getChildAt(i);
				item.y = u;
				item.x = 0;
				u += item.height + gap;	
					preferedWidth = Math.max(preferedWidth,item.width);
			}
			preferedHeight = u;
			setSize();
		}	
	}
}