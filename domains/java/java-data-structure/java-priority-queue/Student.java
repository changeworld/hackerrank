class Student implements Comparable<Student> {
  private int token;
  private String fname;
  private double cgpa;

  public Student(int id, String fname, double cgpa) {
    super();
    this.token = id;
    this.fname = fname;
    this.cgpa = cgpa;
  }

  public int getToken() {
    return token;
  }

  public String getFname() {
    return fname;
  }

  public double getCgpa() {
    return cgpa;
  }

  public int compareTo(Student other) {
    if (getCgpa() > other.getCgpa()) {
      return -1;
    }
    if (getCgpa() < other.getCgpa()) {
      return 1;
    }
    int n = getFname().compareTo(other.getFname());
    if (n != 0) {
      return n;
    }
    if (getToken() < other.getToken()) {
      return -1;
    }
    if (getToken() > other.getToken()) {
      return 1;
    }
    return 0;
  }
}