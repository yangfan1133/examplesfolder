package com.framework.demo.view.mediator
{
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;

	public class ApplicationMediator extends Mediator implements IMediator
	{
		public static const NAME:String              = "ApplicationMediator"
		
		public function ApplicationMediator ( viewComponent:Object = null )
		{
			super( NAME, viewComponent );
		}
		
		override public function onRegister( ):void
		{
		    facade.registerMediator( new DemoWorldMediator( viewComponent ) );
			facade.registerMediator( new Away3DMediator( viewComponent ) );
		}
		
	}
}