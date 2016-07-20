import java.util.Scanner;

public class Solution{
  public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
    String[] text = sc.nextLine().trim().split("[ !,?\\._'@]+",0);
    if(text.length == 1 && text[0].equals("")){
      System.out.println(0);
    }else{
      System.out.println(text.length);
      for(String s:text) System.out.println(s);
    }
  }
}
