import java.security.Permission;
import java.util.Scanner;

public class Solution {
  /**
   * Java Int to String Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    DoNotTerminate.forbidExit();
    try {
      Scanner in = new Scanner(System.in);
      int n = in.nextInt();
      String s = String.valueOf(n);
      if (n == Integer.parseInt(s)) {
        System.out.println("Good job");
      } else {
        System.out.println("Wrong answer.");
      }
    } catch (DoNotTerminate.ExitTrappedException e) {
      System.out.println("Unsuccessful Termination!!");
    }
  }
}