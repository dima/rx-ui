package rxui.models {
  import org.restfulx.collections.ModelsCollection;
  import org.restfulx.models.RxModel;
  
  [Resource(name="projects")]
  [Bindable]
  public class Project extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var notes:String = "";

    public var path:String = "";

    [HasMany]
    public var modelObjects:ModelsCollection;
    
    public function Project() {
      super(LABEL);
    }
  }
}
