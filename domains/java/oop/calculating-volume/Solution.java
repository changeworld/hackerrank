import java.io.IOException;
import java.security.Permission;
import java.util.Scanner;

public class Solution {
  /**
   * Calculating Volume Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    DoNotTerminate.forbidExit();
    try {
      Calculate cal = new Calculate();
      int t = cal.get_int_val();
      while (t-- > 0) {
        double volume = 0.0;
        int ch = cal.get_int_val();
        if (ch == 1) {
          int a = cal.get_int_val();
          volume = Calculate.do_calc().get_volume(a);
        } else if (ch == 2) {
          int l = cal.get_int_val();
          int b = cal.get_int_val();
          int h = cal.get_int_val();
          volume = Calculate.do_calc().get_volume(l, b, h);

        } else if (ch == 3) {
          double r = cal.get_double_val();
          volume = Calculate.do_calc().get_volume(r);

        } else if (ch == 4) {
          double r = cal.get_double_val();
          double h = cal.get_double_val();
          volume = Calculate.do_calc().get_volume(r, h);

        }
        cal.output.display(volume);
      }
    } catch (NumberFormatException e) {
      System.out.print(e);
    } catch (IOException e) {
      e.printStackTrace();
    } catch (DoNotTerminate.ExitTrappedException e) {
      System.out.println("Unsuccessful Termination!!");
    }
  }
}