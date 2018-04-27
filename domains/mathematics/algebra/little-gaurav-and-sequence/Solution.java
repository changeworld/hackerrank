import java.util.Scanner;

public class Solution {
  /**
   * Little Gaurav and Sequence
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int t = in.nextInt();
    for (int i = 0; i < t; i++) {
      long n = in.nextLong();
      double d = Math.log(n) / Math.log(2);
      int j = (int)d + 1;
      int s = 0;
      if (j == 1) {
        s = 2;
      } else {
        s = (j - 1) * 6;
      }
      int x = s % 10;
      int y = 5;
      if (n % 2 == 0) {
        y = 1;
      }
      int z = (x * y) % 10;
      System.out.println(z);
    }
  }
}
