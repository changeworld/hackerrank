import java.util.Scanner;

public class Solution {
  /**
   * Java Loops II Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int t = sc.nextInt();
    for (; t > 0; t--) {
      int a = sc.nextInt();
      int b = sc.nextInt();
      int n = sc.nextInt();
      for (int i = 0; i < n; i++) {
        System.out.print(a + b * ((2 << i) - 1));
        System.out.print(i < n - 1 ? " " : "\n");
      }
    }
  }
}
