import java.util.Scanner;

public class Solution {
  /**
   * Java Stdin and Stdout II Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int a = sc.nextInt();
    double b = sc.nextDouble();
    sc.nextLine();
    String c = sc.nextLine();
    System.out.println("String: " + c + "\nDouble: " + b + "\nInt: " + a);
  }
}