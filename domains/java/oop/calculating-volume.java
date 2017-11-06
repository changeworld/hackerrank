import java.io.IOException;
import java.security.Permission;
import java.util.Scanner;

class Volume {
  int get_volume(int a) {
    // ch = 1
    return a * a * a;
  }

  int get_volume(int l, int b, int h) {
    // ch = 2
    return l * b * h;
  }

  double get_volume(double r) {
    // ch = 3
    return Math.PI * r * r * r * 2 / 3;
  }

  double get_volume(double r, double h) {
    // ch = 4
    return Math.PI * r * r * h;
  }
}

class Display {
  void display(double x) {
    System.out.printf("%.3f\n", x);
  }
}

class Calculate {
  Scanner sc;
  Display output;

  Calculate() throws IOException {
    sc = new Scanner(System.in);
    output = new Display();
    if (sc == null) throw new IOException("dummy");
  }

  int get_int_val() {
    int x = sc.nextInt();
    if (x <= 0) throw new NumberFormatException("All the values must be positive");
    return x;
  }

  double get_double_val() {
    double x = sc.nextDouble();
    if (x <= 0) throw new NumberFormatException("All the values must be positive");
    return x;
  }

  static Volume do_calc() {
    return new Volume();
  }
}

public class Solution {
  public static void main(String[] args) {
    DoNotTerminate.forbidExit();
    try {
      Calculate cal = new Calculate();
      int T = cal.get_int_val();
      while (T-- > 0) {
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
  } //end of main
} //end of Solution

/**
 * This class prevents the user form using System.exit(0)
 * from terminating the program abnormally.
 */
class DoNotTerminate {
  public static class ExitTrappedException extends SecurityException {
  }

  public static void forbidExit() {
    final SecurityManager securityManager = new SecurityManager() {
            @Override
            public void checkPermission(Permission permission) {
                if (permission.getName().contains("exitVM")) {
                    throw new ExitTrappedException();
                }
            }
        };
    System.setSecurityManager(securityManager);
  }
} //end of Do_Not_Terminate
