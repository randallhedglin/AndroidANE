package com.wb.software
{
	import flash.external.ExtensionContext;
	
	public class AndroidANE
	{
		// extension context
		private static var m_extContext :ExtensionContext = null;
		
		// class constructor
		public function AndroidANE()
		{
			// create context
			if(!m_extContext)
				m_extContext = ExtensionContext.createExtensionContext(
								   "com.wb.software.AndroidANE",
								   "general");
			
			// check for error
			if(!m_extContext)
				trace("com.wb.software.AndroidANE.AndroidANE(): " +
					  "Failed to create extension context");
		}
		
		// detectFocusChanges() -- register callback to listen for focus changes
		public function detectFocusChanges() :void
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("detectFocusChanges");
		}
		
		// getExtensionContext() -- get reference to context
		public function getExtensionContext() :ExtensionContext
		{
			// return the object
			return(m_extContext);
		}

		// getLongestDisplaySide() -- retrieve longest resolution for device
		public function getLongestDisplaySide() :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("getLongestDisplaySide") as int;
			
			// return it
			return(ret);
		}
		
		// hideSystemBar() -- hide Android system bar
		public function hideSystemBar() :void
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("hideSystemBar");
		}
		
		// keepScreenOn() -- prevent device sleep
		public function keepScreenOn() :void
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("keepScreenOn");
		}
		
		// messageBox() -- display simple message box
		public function messageBox(title :String, message :String) :void		
		{
			// pass it on
			if(m_extContext)
				m_extContext.call("messageBox", title, message);
		}
		
		// testANE() -- verify functionality
		public function testANE(val :int) :int
		{
			// check for context
			if(!m_extContext)
				return(0);
			
			// get return value
			var ret :int = m_extContext.call("testANE", val) as int;
			
			// return it
			return(ret);
		}
	}
}