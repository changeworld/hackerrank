import java.lang.StringBuffer;
import java.util.Scanner;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    String a = sc.next();
    System.out.println(a.equals(reverse(a)) ? "Yes" : "No");
  }

  static String reverse(String s){
    return new StringBuffer(s).reverse().toString();
  }
}