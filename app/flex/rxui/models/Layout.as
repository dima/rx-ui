package rxui.models {
  import org.restfulx.models.RxModel;
  
  [Resource(name="layouts")]
  [Bindable]
  public class Layout extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    [BelongsTo]
    public var modelObject:ModelObject;

    public function Layout() {
      super(LABEL);
    }
  }
}
