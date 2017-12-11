import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Stack;

class Solution {
  static Map<Character, Character> parentheses;

  static boolean decision(String str) {
    Stack<Character> stack = new Stack<>();
    for (int i = 0; i < str.length(); i++) {
      if (parentheses.containsKey(str.charAt(i))) {
        stack.push(str.charAt(i));
      } else if (stack.empty() || parentheses.get(stack.pop()) != str.charAt(i)) {
        return false;
      }
    }
    return stack.empty();
  }

  public static void main(String[] args) {
    parentheses = new HashMap<>();
    parentheses.put('(', ')');
    parentheses.put('{', '}');
    parentheses.put('[', ']');
    Scanner sc = new Scanner(System.in);
    while (sc.hasNext()) {
      System.out.println(decision(sc.nextLine()));
    }
  }
}