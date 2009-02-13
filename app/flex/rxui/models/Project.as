package rxui.models {
  import org.restfulx.models.RxModel;
  
  [Resource(name="projects")]
  [Bindable]
  public class Project extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var notes:String = "";

    public function Project() {
      super(LABEL);
    }
  }
}
