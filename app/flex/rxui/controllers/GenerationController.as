package rxui.controllers {
	import org.restfulx.Rx;
	import org.restfulx.events.CacheUpdateEvent;
  
  [Bindable]
  public class GenerationController {
  	
  	private static var controller:GenerationController;
  	
		public var output:String = "";
		public var rubyOutput:String = "";
    
    public function GenerationController(enforcer:SingletonEnforcer) {
      Rx.models.addEventListener(CacheUpdateEvent.ID, onCacheUpdate);
    }

    private function onCacheUpdate(event:CacheUpdateEvent):void {
		  /* if (event.isFor(Model)) {

		  } */
    }
    
    public static function get instance():GenerationController {
      initialize();
      return controller;
    }
      
    public static function initialize():void {
      if (!controller) controller = new GenerationController(new SingletonEnforcer);      
    }
    
    public static function reset():void {
      controller = null;  
    }
  }
}

class SingletonEnforcer {}