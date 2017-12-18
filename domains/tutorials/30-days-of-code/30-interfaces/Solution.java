import java.util.Scanner;

class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    sc.close();

    AdvancedArithmetic myCalculator = new Calculator();
    int sum = myCalculator.divisorSum(n);
    System.out.println("I implemented: " + myCalculator.getClass().getInterfaces()[0].getName());
    System.out.println(sum);
  }
}

interface AdvancedArithmetic {
  int divisorSum(int n);
}

class Calculator implements AdvancedArithmetic {
  @Override
  public int divisorSum(int n) {
    int ret = 0;
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        ret += i;
      }
    }
    return ret;
  }
}