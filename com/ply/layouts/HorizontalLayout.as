package com.ply.layouts
{
	import com.ply.components.ItemsComponent;
	
	import flash.display.DisplayObject;
	
	public class HorizontalLayout implements ILayout
	{
		public function layout(container:ItemsComponent):void
		{
			var u:int = 0;
			for (var i:int=0;i<container.children.length;i++){
				var item:DisplayObject = container.getChildAt(i);
				item.x = u;
				u += item.width + container.gap;
				container.height = Math.max(container.height,item.height);
			}
			container.width = u;
		}
		
	}
}