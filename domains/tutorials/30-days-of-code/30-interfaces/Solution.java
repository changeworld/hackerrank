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