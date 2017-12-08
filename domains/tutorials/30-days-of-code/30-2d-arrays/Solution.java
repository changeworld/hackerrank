import java.util.Scanner;

public class Solution {
  /**
   * Day 11: 2D Arrays Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int hh = 6;
    int ww = 6;
    int[][] arr = new int[hh][ww];
    for (int h = 0; h < hh; h++) {
      for (int w = 0; w < ww; w++) {
        arr[h][w] = Integer.parseInt(sc.next());
      }
    }
    int rtn = Integer.MIN_VALUE;
    for (int h = 0; h < hh - 2; h++) {
      for (int w = 0; w < ww - 2; w++) {
        rtn = Math.max(rtn, arr[h][w] + arr[h][w + 1] + arr[h][w + 2]
            + arr[h + 1][w + 1] + arr[h + 2][w] + arr[h + 2][w + 1] + arr[h + 2][w + 2]);
      }
    }
    System.out.println(rtn);
  }
}
