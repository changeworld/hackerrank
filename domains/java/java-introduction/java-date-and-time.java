import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Scanner;

public class Solution {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    int month = in.nextInt();
    int day = in.nextInt();
    int year = in.nextInt();
    Calendar ca = Calendar.getInstance();
    ca.set(year, month - 1, day);
    System.out.println(new DateFormatSymbols().getWeekdays()[ca.get(Calendar.DAY_OF_WEEK)].toUpperCase());
    in.close();
  }
}
