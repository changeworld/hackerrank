import java.util.Scanner;

public class Solution {
  /**
   * Migratory Birds Solution.
   * @author changeworld
   *
   */
  static int migratoryBirds(int n, int[] ar) {
    int[] ary = new int[n];
    int max = 0;
    int maxTypes = 0;
    for (int i = 0; i < n ; i++) {
      ary[ar[i]]++;
    }
    for (int i = 0 ; i < n ; i++) {
      if (ary[i] > max) {
        max = ary[i];
        maxTypes = i;
      }
    }
    return maxTypes;
  }

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int n = in.nextInt();
    int[] ar = new int[n];
    for (int idx = 0; idx < n; idx++) {
      ar[idx] = in.nextInt();
    }
    int result = migratoryBirds(n, ar);
    System.out.println(result);
  }
}