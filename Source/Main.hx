package;
import ru.stablex.ui.widgets.Widget;
import ru.stablex.ui.widgets.VBox;
import ru.stablex.ui.widgets.HBox;
import ru.stablex.ui.widgets.Text;
import ru.stablex.ui.layouts.Column;
import com.clientside.main.Main;       
import com.clientside.main.Utils;       
import mloader.XmlLoader;
import ru.stablex.ui.UIBuilder;
import ru.stablex.ui.widgets.ViewStack;
import ru.stablex.ui.RTXml;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
            RTXml.regClass(Text);
            RTXml.regClass(Column);
            RTXml.regClass(VBox);
            RTXml.regClass(HBox);
            RTXml.regClass(Utils);
            RTXml.regClass(Main);
            
			var file_path:String= "http://localhost:8000/battery.xml";
			var loader = new mloader.XmlLoader(file_path+"?"+Math.random());
			// does it has nested includes?
			loader.loaded.add(function (event){								
				var xml:Xml = event.target.content.firstElement();
				var xml_str:String = xml.toString();
				trace (xml_str);
				var widget:Widget = RTXml.buildFn(xml_str)();					
			}).forType(Complete);
			loader.load();

            

	}
}
