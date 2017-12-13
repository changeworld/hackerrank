import java.security.MessageDigest;
import java.util.Scanner;

class Solution {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String str = sc.nextLine();
    try {
      MessageDigest md = MessageDigest.getInstance("MD5");
      md.update(str.getBytes());
      byte[] digest = md.digest();
      for (byte b : digest) {
        System.out.printf("%02x", b);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}