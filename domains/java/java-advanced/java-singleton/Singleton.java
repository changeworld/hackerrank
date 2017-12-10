import java.lang.reflect.Constructor;
import java.util.Scanner;

class Singleton {
  private static Singleton singleton = new Singleton();
  public String str;

  private Singleton() {
  }

  public static Singleton getSingleInstance() {
    return singleton;
  }
}