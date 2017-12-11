import java.util.Scanner;

abstract class Book {
  String title;

  abstract void setTitle(String s);

  String getTitle() {
    return title;
  }
}

class MyBook extends Book {
  void setTitle(String s) {
    title = s;
  }
}

public class Main {
  /**
   * Java Abstract Class Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String title = sc.nextLine();
    MyBook novel = new MyBook();
    novel.setTitle(title);
    System.out.println("The title is: " + novel.getTitle());
    sc.close();
  }
}