import java.util.Scanner;

public class Solution {
  /**
   * Java If-Else Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    System.out.println(n % 2 == 1 || (6 <= n && n <= 20) ? "Weird" : "Not Weird");
  }
}
