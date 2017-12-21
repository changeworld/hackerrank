class MyCalculator implements AdvancedArithmetic {
  public int divisor_sum(int n) {
    int a = 0;
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        a += i;
      }
    }
    return a;
  }
}