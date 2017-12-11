import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

class Solution {
  public static void main(String[] args) {
    Map<String, String> map = new HashMap<>();
    Scanner sc = new Scanner(System.in);
    int N = sc.nextInt();
    sc.nextLine();
    for (; 0 < N; N--) {
      map.put(sc.nextLine(), sc.nextLine());
    }
    while (sc.hasNext()) {
      String s = sc.nextLine();
      if (map.containsKey(s)) System.out.println(s + "=" + map.get(s));
      else System.out.println("Not found");
    }
  }
}