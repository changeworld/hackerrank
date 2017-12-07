import java.util.Scanner;

public class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int testCases = Integer.parseInt(sc.nextLine());
    while (testCases > 0) {
      String line = sc.nextLine();
      int cur = 0;
      boolean none = true;
      for (; ; ) {
        int start = line.indexOf("<", cur);
        if (start < 0) break;
        int end = line.indexOf(">", start);
        if (end < 0) break;
        String tag = line.substring(start + 1, end);
        if (tag.length() == 0 || tag.charAt(0) == '/') {
          cur = end++;
          continue;
        }
        int back = line.indexOf("</" + tag + ">");
        if (back >= 0) {
          String candidate = line.substring(end + 1, back);
          if (candidate.length() > 0 && candidate.indexOf("<") < 0) {
            none = false;
            System.out.println(candidate);
          }
        }
        cur = end++;
      }
      if (none) System.out.println("None");
      testCases--;
    }
  }
}