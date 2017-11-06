import java.util.Scanner;

public class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    for (int i = 1; sc.hasNext(); i++) {
      System.out.println(String.valueOf(i) + " " + sc.nextLine());
    }
  }
}
