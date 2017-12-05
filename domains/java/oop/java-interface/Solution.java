import java.util.Scanner;

interface AdvancedArithmetic {
  int divisor_sum(int n);
}

class MyCalculator implements AdvancedArithmetic {
  public int divisor_sum(int n) {
    int a = 0;
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        a += i;
      }
    }
    return a;
  }
}

class Solution {
  /**
   * Java Interface Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    MyCalculator myCalculator = new MyCalculator();
    System.out.print("I implemented: ");
    implementedInterfaceNames(my_calculator);
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    System.out.print(my_calculator.divisor_sum(n) + "\n");
    sc.close();
  }

  static void implementedInterfaceNames(Object o) {
    Class[] theInterfaces = o.getClass().getInterfaces();
    for (int i = 0; i < theInterfaces.length; i++) {
      String interfaceName = theInterfaces[i].getName();
      System.out.println(interfaceName);
    }
  }
}