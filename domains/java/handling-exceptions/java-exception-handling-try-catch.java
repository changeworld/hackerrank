import java.util.InputMismatchException;
import java.util.Scanner;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    try{
      int a = sc.nextInt(),b = sc.nextInt();
      System.out.println(a/b);
    }catch(InputMismatchException e){
      System.out.println(e.getClass().toString().substring(6));
    }catch(Exception e){
      System.out.println(e);
    }
  }
}
