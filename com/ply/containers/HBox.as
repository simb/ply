package com.ply.containers
{
	import com.ply.components.ItemsComponent;
	import com.ply.layouts.HorizontalLayout;

	public class HBox extends ItemsComponent
	{
		public function HBox()
		{
			super();
			layout = new HorizontalLayout();
		}
		override protected function layoutChildren():void
		{
			super.layoutChildren();
			layout.layout(this);
			setSize();
		}
	}
}