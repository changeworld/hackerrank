import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class Solution {
  /**
   * Java Hashset Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner s = new Scanner(System.in);
    int t = s.nextInt();
    String[] pairLeft = new String[t];
    String[] pairRight = new String[t];
    for (int i = 0; i < t; i++) {
      pairLeft[i] = s.next();
      pairRight[i] = s.next();
    }
    Set<String> set = new HashSet<>();
    for (int i = 0; i < t; i++) {
      set.add(pairLeft[i] + " " + pairRight[i]);
      System.out.println(set.size());
    }
  }
}
