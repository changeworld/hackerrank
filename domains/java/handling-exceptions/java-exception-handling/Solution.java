import java.util.Scanner;

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