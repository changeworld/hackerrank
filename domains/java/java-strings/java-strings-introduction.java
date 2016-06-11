import java.util.*;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    String a = sc.next(), b = sc.next();
    System.out.println(a.length()+b.length());
    System.out.println(a.compareTo(b)>0 ? "Yes" : "No");
    System.out.println(capitalize(a) + " " + capitalize(b));
  }

  static String capitalize(String s){
    return s.substring(0,1).toUpperCase()+s.substring(1).toLowerCase();
  }
}