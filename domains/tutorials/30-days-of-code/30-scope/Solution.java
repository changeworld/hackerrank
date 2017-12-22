import java.util.Scanner;

public class Solution {
  /**
   * Day 14: Scope Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int[] a = new int[n];
    for (int i = 0; i < n; i++) {
      a[i] = sc.nextInt();
    }
    sc.close();
    Difference difference = new Difference(a);
    difference.computeDifference();
    System.out.print(difference.maximumDifference);
  }
}