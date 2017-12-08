import java.util.Scanner;

public class Solution {
  static int migratoryBirds(int n, int[] ar) {
    int ary[] = new int[n];
    int max = 0, maxTypes = 0;
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
    for (int ar_i = 0; ar_i < n; ar_i++) {
      ar[ar_i] = in.nextInt();
    }
    int result = migratoryBirds(n, ar);
    System.out.println(result);
  }
}