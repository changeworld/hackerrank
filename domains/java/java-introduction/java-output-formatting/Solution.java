import java.util.Scanner;

public class Solution {
  /**
   * Java Output Formatting Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    System.out.println("================================");
    for (int i = 0; i < 3; i++) {
      String s = sc.next();
      int a = sc.nextInt();
      System.out.printf("%-15s%03d\n", s, a);
    }
    System.out.println("================================");
  }
}
