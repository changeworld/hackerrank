import java.util.Scanner;

abstract class Book {
  String title;
  String author;

  Book(String t, String a) {
    title = t;
    author = a;
  }

  abstract void display();
}

class MyBook extends Book {
  int price;

  MyBook(String title, String author, int price) {
    super(title, author);
    this.price = price;
  }

  @Override
  void display() {
    System.out.println("Title: " + title);
    System.out.println("Author: " + author);
    System.out.println("Price: " + price);
  }
}

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