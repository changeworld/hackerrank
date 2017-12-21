class MyMath {
  public static boolean checker(PerformOperation p, int num) {
    return p.check(num);
  }

  public static PerformOperation is_odd() {
    return n -> n % 2 != 0;
  }

  public static PerformOperation is_prime() {
    return n -> (new java.math.BigInteger(String.valueOf(n))).isProbablePrime(100);
  }

  public static PerformOperation is_palindrome() {
    return n -> String.valueOf(n).equals(
        (new StringBuilder(String.valueOf(n))).reverse().toString()
    );
  }
}