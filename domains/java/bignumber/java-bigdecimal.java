import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Scanner;

class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    String[] s = new String[n];
    for (int i = 0; i < n; i++) {
      s[i] = sc.next();
    }
    Arrays.sort(s, new Comparator<Object>() {
            public int compare(Object a1, Object a2) {
                BigDecimal b1 = new BigDecimal((String) a1);
                BigDecimal b2 = new BigDecimal((String) a2);
                return b2.compareTo(b1);
            }
        });
    for (int i = 0; i < n; i++) {
      System.out.println(s[i]);
    }
  }
}
