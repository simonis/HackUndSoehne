package client;

import simonis.HelloSwing;

public class Client {

  public static void main(String[] args) throws Exception {
    HelloSwing hs = new HelloSwing();
    Object label = hs.getLabel();
    label.getClass().getMethod("setText", new Class<?>[] { String.class }).invoke(hs.getLabel(), "Hello KIT!!!");
  }
}
