import java.util.BitSet;
import java.util.Scanner;

public class Solution {
  /**
   * Java BitSet Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int m = sc.nextInt();
    BitSet[] b = {new BitSet(n), new BitSet(n)};
    for (; m > 0; m--) {
      String str = sc.next();
      int x = sc.nextInt();
      int y = sc.nextInt();
      if (str.equals("AND")) {
        b[x - 1].and(b[y - 1]);
      } else if (str.equals("OR")) {
        b[x - 1].or(b[y - 1]);
      } else if (str.equals("XOR")) {
        b[x - 1].xor(b[y - 1]);
      } else if (str.equals("FLIP")) {
        b[x - 1].flip(y);
      } else if (str.equals("SET")) {
        b[x - 1].set(y);
      }
      System.out.println(b[0].cardinality() + " " + b[1].cardinality());
    }
  }
}