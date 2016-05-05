import java.util.*;

public class Solution{
  static boolean isAnagram(String a, String b){
    return sort(a.toLowerCase()).equals(sort(b.toLowerCase()))
  }

  static String sort(String s){
    char[] a = s.toCharArray();
    Arrays.sort(a);
    return new String(a);
  }

  public static void main(String[]args){
    Scanner sc = new Scanner(System.in);
    String a = sc.next(), b = sc.next();
    boolean ret = isAnagram(a, b);
    if(ret)System.out.println("Anagrams");
    else System.out.println("Not Anagrams");
  }
}
