import java.util.ArrayDeque;
import java.util.Queue;
import java.util.Scanner;

public class Solution {
  static boolean judge(int n, int m, int[] a) {
    Queue<Integer> queue = new ArrayDeque<Integer>();
    queue.add(0);
    a[0] = 1;
    while (!queue.isEmpty()) {
      int current = queue.poll();
      int[] x = new int[]{-1, 1, m};
      for (int d : x) {
        int next = current + d;
        if (next >= n) {
          return true;
        }
        if (next > 0 && a[next] == 0) {
          queue.add(next);
          a[next] = 1;
        }
      }
    }
    return false;
  }

  /**
   * Java 1D Array (Part 2) Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int t = Integer.parseInt(sc.next());
    for (; t > 0; t--) {
      int n = Integer.parseInt(sc.next());
      int m = Integer.parseInt(sc.next());
      int[] a = new int[n];
      for (int i = 0; i < n; i++) {
        a[i] = sc.nextInt();
      }
      System.out.println(judge(n, m, a) ? "YES" : "NO");
    }
  }
}