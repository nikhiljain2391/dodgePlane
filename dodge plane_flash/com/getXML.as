
package com {
	
	// Static Class
	import com.staticClass;
    import flash.display.MovieClip;
	import flash.xml.XMLDocument;
    import flash.xml.XMLNode;
    import flash.xml.XMLNodeType;
	import flash.events.*
	import flash.net.URLLoader
	import flash.net.URLRequest;

    public class getXML extends MovieClip
	{
		var xmlData:XML;	
		
		//cunstructor with parameter moviel clip
		function getXML()
		{
				trace("getXML.constructor")
				var xmlLoader:URLLoader = new URLLoader();
				xmlData = new XML();
				//Event listener for XML parsing 
				xmlLoader.addEventListener(Event.COMPLETE, LoadXML);
				//main XML of the application.
				xmlLoader.load(new URLRequest(staticClass.XMLserverPath));//("xml/Business.xml"));		staticClass.glb_xmlPath	
				//xmlLoader.load(new URLRequest("xml/image.xml"));
				
				
				
        }
		// when XML load complete this function will called ,//Takes the node value one by one and store them in array accordingly.
		public function LoadXML(e:Event):void 
		{
			
			xmlData = new XML(e.target.data);		
					
					//staticClass.XMLserverPath = xmlData.attribute("IP3path");
					
			for(var i:int=0; i<xmlData.children().length();i++)
			{
				trace(xmlData.project[i].attribute("ImgSrc"));
				staticClass.imgPath_Array.push(xmlData.project[i].attribute("ImgSrc"));
				
			}
			
		}
		
		
	
	}
	

}
