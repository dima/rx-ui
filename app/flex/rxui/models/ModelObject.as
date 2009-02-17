package rxui.models {
  import org.restfulx.collections.ModelsCollection;
  import org.restfulx.models.RxModel;
  
  [Resource(name="model_objects")]
  [Bindable]
  public class ModelObject extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    [BelongsTo]
    public var project:Project;

    [HasMany]
    public var modelAttributes:ModelsCollection;
    
    [HasMany]
    public var layouts:ModelsCollection;
    
    public function ModelObject() {
      super(LABEL);
    }
  }
}
