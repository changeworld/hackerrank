import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Solution {
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    int testCases = Integer.parseInt(sc.nextLine());
    while(testCases>0){
      String username = sc.nextLine();
      String pattern="^[a-zA-Z][a-zA-Z0-9_]{7,29}$";
      Pattern r = Pattern.compile(pattern);
      Matcher m = r.matcher(username);
      if (m.find( )) {
        System.out.println("Valid");
      } else {
        System.out.println("Invalid");
      }
      testCases--;
    }
  }
}
