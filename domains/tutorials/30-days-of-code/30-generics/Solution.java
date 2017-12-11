public class Solution {
  /**
   * Day 11: 2D Arrays Solution.
   * @author changeworld
   *
   */
  public static <E> void printArray(E[] inputArray) {
    for (E element : inputArray) {
      System.out.println(element);
    }
  }

  /**
   * Day 11: 2D Arrays Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    Integer[] intArray = { 1, 2, 3 };
    String[] stringArray = { "Hello", "World" };
    printArray(intArray);
    printArray(stringArray);
    if (Solution.class.getDeclaredMethods().length > 2) {
      System.out.println("You should only have 1 method named printArray.");
    }
  }
}