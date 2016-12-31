import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

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
        if (c != 0) return -c;
        c = this.fname.compareTo(that.fname);
        if (c != 0) return c;
        c = Integer.valueOf(this.id).compareTo(that.id);
        return c;
    }
}

public class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int testCases = Integer.parseInt(in.nextLine());

        List<Student> studentList = new ArrayList<Student>();
        while (testCases > 0) {
            Student st = new Student(in.nextInt(), in.next(), in.nextDouble());
            studentList.add(st);
            testCases--;
        }
        Collections.sort(studentList);
        for (Student st : studentList) {
            System.out.println(st.getFname());
        }
    }
}
