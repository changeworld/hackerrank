class Student implements Comparable<Student> {
  private int id;
  private String fname;
  private double cgpa;

  public Student(int id, String fname, double cgpa) {
    super();
    this.id = id;
    this.fname = fname;
    this.cgpa = cgpa;
  }

  public int getId() {
    return id;
  }

  public String getFname() {
    return fname;
  }

  public double getCgpa() {
    return cgpa;
  }

  public int compareTo(Student that) {
    int c = Double.valueOf(this.cgpa).compareTo(that.cgpa);
    if (c != 0) {
      return -c;
    }
    c = this.fname.compareTo(that.fname);
    if (c != 0) {
      return c;
    }
    c = Integer.valueOf(this.id).compareTo(that.id);
    return c;
  }
}