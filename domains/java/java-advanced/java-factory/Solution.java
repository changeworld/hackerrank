import java.security.Permission;
import java.util.Scanner;

public class Solution {
  /**
   * Java Factory Pattern Solution.
   * @author changeworld
   *
   */
  public static void main(String[] args) {
    DoNotTerminate.forbidExit();
    try {
      Scanner sc = new Scanner(System.in);
      FoodFactory foodFactory = new FoodFactory();
      Food food = foodFactory.getFood(sc.nextLine());
      System.out.println("The factory returned " + food.getClass());
      System.out.println(food.getType());
    } catch (DoNotTerminate.ExitTrappedException e) {
      System.out.println("Unsuccessful Termination!!");
    }
  }
}