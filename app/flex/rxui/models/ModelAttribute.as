package rxui.models {
  import org.restfulx.models.RxModel;
  
  [Resource(name="model_attributes")]
  [Bindable]
  public class ModelAttribute extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var attributeType:String = "";

    public var attributeLength:int = 0;

    [BelongsTo]
    public var modelObject:ModelObject;

    public function ModelAttribute() {
      super(LABEL);
    }
  }
}
