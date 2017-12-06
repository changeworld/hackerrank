import java.util.ArrayList;
import java.util.Scanner;

public class Solution {
  /**
   * Java Arraylist Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = Integer.parseInt(sc.next());
    ArrayList<ArrayList<Integer>> list = new ArrayList<ArrayList<Integer>>();
    for (int i = 0; i < n; i++) {
      int m = Integer.parseInt(sc.next());
      list.add(new ArrayList<Integer>());
      for (int j = 0; j < m; j++) {
        int x = Integer.parseInt(sc.next());
        list.get(n).add(x);
      }
    }
    int q = Integer.parseInt(sc.next());
    for (int k = 0; k < q; k++) {
      int x = Integer.parseInt(sc.next());
      int y = Integer.parseInt(sc.next());
      if (x > list.size() || y > list.get(x - 1).size()) {
        System.out.println("ERROR!");
      } else {
        System.out.println(list.get(x - 1).get(y - 1));
      }
    }
  }
}