package com.ply.layouts
{
	import com.ply.components.ItemsComponent;
	
	import flash.display.DisplayObject;
	
	public class VerticalLayout implements ILayout
	{
		public function layout(container:ItemsComponent):void
		{
			var u:int = 0;
			for (var i:int=0;i<container.children.length;i++){
				var item:DisplayObject = container.getChildAt(i);
				item.y = u;
				item.x = 0;
				u += item.height + container.gap;	
				container.width = Math.max(container.width,item.width);
			}
			container.height = u;
		}
		
	}
}