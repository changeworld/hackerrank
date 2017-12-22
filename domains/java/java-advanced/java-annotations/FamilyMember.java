import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

class FamilyMember {
  @FamilyBudget(userRole = "SENIOR", budgetLimit = 100)
  public void seniorMember(int budget, int moneySpend) {
    System.out.println("Senior Member");
    System.out.println("Spend: " + moneySpend);
    System.out.println("Budget Left: " + (budget - moneySpend));
  }

  @FamilyBudget(userRole = "JUNIOR", budgetLimit = 50)
  public void juniorUser(int budget, int moneySpend) {
    System.out.println("Junior Member");
    System.out.println("Spend: " + moneySpend);
    System.out.println("Budget Left: " + (budget - moneySpend));
  }
}

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@interface FamilyBudget {
  String userRole() default "GUEST";

  int budgetLimit() default 0;
}