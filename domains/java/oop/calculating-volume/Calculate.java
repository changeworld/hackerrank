import java.io.IOException;
import java.security.Permission;
import java.util.Scanner;

class Calculate {
  Scanner sc;
  Display output;

  Calculate() throws IOException {
    sc = new Scanner(System.in);
    output = new Display();
    if (sc == null) {
      throw new IOException("dummy");
    }
  }

  int get_int_val() {
    int x = sc.nextInt();
    if (x <= 0) {
      throw new NumberFormatException("All the values must be positive");
    }
    return x;
  }

  double get_double_val() {
    double x = sc.nextDouble();
    if (x <= 0) {
      throw new NumberFormatException("All the values must be positive");
    }
    return x;
  }

  static Volume do_calc() {
    return new Volume();
  }
}
