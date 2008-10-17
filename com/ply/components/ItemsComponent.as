package com.ply.components
{
	import com.ply.core.SkinnableComponent;
	
	import flash.display.DisplayObject;
	
	[DefaultProperty("content")]
	public class ItemsComponent extends SkinnableComponent
	{
		public var content:*;
		public var gap:Number = 2;
		
		public function ItemsComponent()
		{
			super();
			this.init();
		}
		
		override protected function init():void
		{
			super.init();
		}
		
		override protected function layoutChildren():void
		{
			if ( content is Array ) {
				for ( var i:int=0;i<content.length;i++){
					addChild(content[i] as DisplayObject );
				}
			}else{
				addChild(content as DisplayObject );
			}
		}
	
	}
}