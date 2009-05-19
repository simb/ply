package com.ply.components
{
	import com.ply.core.SkinnableComponent;
	import com.ply.layouts.ILayout;
	import flash.display.DisplayObject;
	
	[DefaultProperty("content")]
	public class ItemsComponent extends SkinnableComponent
	{
		public var content:*;
		public var gap:Number = 2;
		public var layout:ILayout;
		public var children:Array;
		
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
			children = [];
			if ( content is Array ) {
				for ( var i:int=0;i<content.length;i++){
					addChild(content[i] as DisplayObject );
				}
			}else if ( content != null ){
				addChild(content as DisplayObject );
			}
		}
		override public function addChild(child:DisplayObject):DisplayObject {
			children.push(child);
			return super.addChild(child);
		}
	
	}
}