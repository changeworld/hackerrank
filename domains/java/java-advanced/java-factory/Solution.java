import java.security.Permission;
import java.util.Scanner;

interface Food {
  public String getType();
}

class Pizza implements Food {
  public String getType() {
    return "Someone ordered a Fast Food!";
  }
}

class Cake implements Food {
  public String getType() {
    return "Someone ordered a Dessert!";
  }
}

class FoodFactory {
  public Food getFood(String order) {
    try {
      return (Food) Class.forName(
          order.substring(0, 1).toUpperCase() + order.substring(1)
      ).newInstance();
    } catch (Exception e) {
      return null;
    }
  }
}

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

class DoNotTerminate {
  public static class ExitTrappedException extends SecurityException {
    private static final long serialVersionUID = 1L;
  }

  public static void forbidExit() {
    final SecurityManager securityManager = new SecurityManager() {
      @Override
      public void checkPermission(Permission permission) {
        if (permission.getName().contains("exitVM")) {
          throw new ExitTrappedException();
        }
      }
    };
    System.setSecurityManager(securityManager);
  }
}