package com.ply.core {
		
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	
	public class Base extends Sprite
	{
		public var _hScrollPos:int = 0;
		public var _vScrollPos:int = 0;
		
		protected var preferedWidth:int = width;
		protected var preferedHeight:int = height;
		
		protected var explicitWidth:int;
		protected var explicitHeight:int;
		
		public function Base()
		{
			super();
			this.init();
		}
		protected function init():void
		{
			this.addEventListener(Event.RENDER, updateDisplay);
			this.addEventListener(Event.ADDED_TO_STAGE, updateDisplay);
			if ( this.stage != null ){
				this.stage.scaleMode = StageScaleMode.NO_SCALE;
				this.stage.align = StageAlign.TOP_LEFT;
			}
		}
		
		private function updateDisplay(event:Event):void
		{
			layoutChildren();
			setSize();
		}
		protected function layoutChildren():void{}
		
		protected function setSize():void
		{
			if ( explicitHeight || explicitWidth )
			{
				//if height or width is explicitly set use those values. otherwise use the size of children
				var w:int = explicitWidth > 0 ? explicitWidth : preferedWidth;
				var h:int = explicitHeight > 0 ? explicitHeight : preferedHeight;
				scrollRect = new Rectangle(0,0,w,h);
				
			}
		}
		override public function set width(value:Number):void{
			explicitWidth = value;
		
		}
		override public function get width():Number
		{
			return (explicitWidth != 0)?explicitWidth:super.width;
		}
		override public function get height():Number
		{
			return (explicitHeight != 0)?explicitHeight:super.width;
		}
		override public function set height(value:Number):void{
			explicitHeight = value;
			
		}
	}
	
}