class Add {
  void add(Integer... a) {
    int b = 0;
    for (int i = 0; i < a.length; i++) {
      System.out.print(a[i]);
      System.out.print(i == a.length - 1 ? "=" : "+");
      b += a[i];
    }
    System.out.println(b);
  }
}