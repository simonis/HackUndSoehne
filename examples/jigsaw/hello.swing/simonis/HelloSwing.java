package simonis;

import javax.swing.*;

public class HelloSwing extends JFrame {
  JLabel hello;

  public static void main(String argv[]) {
    new HelloSwing();
  }

  public HelloSwing() {
    hello = new JLabel("Hello World");
    add(hello, "Center");
    setSize(200, 200);
    setVisible(true);
  }

  public JLabel getLabel() {
    return hello;
  }
}
