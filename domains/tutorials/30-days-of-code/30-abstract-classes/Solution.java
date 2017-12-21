import java.util.Scanner;

public class Solution {
  /**
   * Day 13: Abstract Classes Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String title = sc.nextLine();
    String author = sc.nextLine();
    int price = sc.nextInt();
    Book novel = new MyBook(title, author, price);
    novel.display();
  }
}