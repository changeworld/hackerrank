import java.util.Scanner;

class MyCalculator {
  int power(int n, int p) throws java.lang.Exception {
    if (n < 0 || p < 0) {
      throw new java.lang.Exception("n and p should be non-negative");
    } else if (n == 0 && p > 0) {
      return 0;
    } else {
      int r = 1;
      for (; p > 0; p--) {
        r *= n;
      }
      return r;
    }
  }
}

class Solution {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    while (in.hasNextInt()) {
      int n = in.nextInt();
      int p = in.nextInt();
      MyCalculator myCalculator = new MyCalculator();
      try {
        System.out.println(myCalculator.power(n, p));
      } catch (Exception e) {
        System.out.println(e);
      }
    }
  }
}