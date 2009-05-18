package com.ply.containers
{
	import com.ply.components.ItemsComponent;
	import com.ply.layouts.VerticalLayout;

	public class VBox extends ItemsComponent
	{
		public function VBox()
		{
			super();
			layout = new VerticalLayout();
		}
		override protected function layoutChildren():void
		{
			super.layoutChildren();
			layout.layout(this);
			setSize();
		}	
	}
}