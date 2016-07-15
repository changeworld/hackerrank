import java.util.Scanner;

class Difference {
  private int[] elements;
  public int maximumDifference;
  // Add your code here
  Difference(int[] elements) {
    this.elements = elements;
  }
  void computeDifference() {
    for (int i = 0; i < elements.length; i++) {
      for (int j = i + 1; j < elements.length; j++) {
        maximumDifference = Math.max(maximumDifference, Math.abs(elements[i] - elements[j]));
      }
    }
  }
} // End of Difference class

public class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int[] a = new int[n];
    for (int i = 0; i < n; i++) {
      a[i] = sc.nextInt();
    }
    sc.close();
    Difference difference = new Difference(a);
    difference.computeDifference();
    System.out.print(difference.maximumDifference);
  }
}
