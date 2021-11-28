import java.awt.GridLayout;
import java.applet.Applet;
import java.applet.AppletContext;
import java.applet.AppletStub;
import java.util.HashMap;
import java.net.MalformedURLException;
import java.net.URL;
import javax.swing.JFrame;

public class AppletViewer {

  public static void main(String[] args) throws Exception {
    Applet applet = (Applet)Class.forName(args.length == 0 ? "XYZApp" : args[0]).newInstance();
    ApplicationAppletStub stub = new ApplicationAppletStub();
    stub.addParameter("model", args.length > 1 ? args[1] : "models/HyaluronicAcid.xyz");
    applet.setStub(stub);

    JFrame frame = new JFrame();
    frame.setLayout(new GridLayout(1, 1));
    frame.add(applet);
    frame.setSize(600, 600);
    frame.setVisible(true);

    // Set frame size and other properties


    // Call applet methods
    applet.init();
    applet.start();

  }
}

class ApplicationAppletStub implements AppletStub {

    HashMap<String,String> params = new HashMap<String,String>();

    public void appletResize(int width, int height) {}

    public AppletContext getAppletContext() {
        return null;
    }

    public URL getDocumentBase() {
      URL url;
      try {
        url = new URL("file://" + System.getProperty("user.dir") + "/");
      } catch (MalformedURLException murle) {
        url = null;
      }
      return url;
    }

    public URL getCodeBase() {
      URL url;
      try {
        url = new URL("file://" + System.getProperty("user.dir") + "/");
      } catch (MalformedURLException murle) {
        url = null;
      }
      return url;
    }

    public boolean isActive() {
        return true;
    }

    public String getParameter(String name) {
        return params.get(name);
    }

    public void addParameter(String name, String value) {
        params.put(name, value);
    }
}
