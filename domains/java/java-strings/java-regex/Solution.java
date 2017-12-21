import java.util.Scanner;

class Solution {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    while (in.hasNext()) {
      String ip = in.next();
      System.out.println(ip.matches(new MyRegex().pattern));
    }
  }
}