import java.util.Scanner;

public class Solution {
  static int b;
  static int h;
  static boolean flag;

  static {
    Scanner sc = new Scanner(System.in);
    b = sc.nextInt();
    h = sc.nextInt();
    if (b > 0 && h > 0) {
      flag = true;
    } else {
      System.out.println("java.lang.Exception: Breadth and height must be positive");
    }
  }

  /**
   * Java Static Initializer Block Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    if (flag) {
      int area = b * h;
      System.out.print(area);
    }
  }
}