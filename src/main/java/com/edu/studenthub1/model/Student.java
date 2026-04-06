package com.edu.studenthub1.model;

public class Student {
    private int id;
    private String fullName;
    private String studentCode;
    private String faculty;
    private int yearEnrolled;
    private double GPA;
    private String status;
    public static int count = 1;
    public Student(String fullName, String studentCode, String faculty, int yearEnrolled, double GPA, String status) {
        this.id = count++;
        this.fullName = fullName;
        this.studentCode = studentCode;
        this.faculty = faculty;
        this.yearEnrolled = yearEnrolled;
        this.GPA = GPA;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getFullName() {
        return fullName;
    }

    public String getStudentCode() {
        return studentCode;
    }

    public String getFaculty() {
        return faculty;
    }

    public int getYearEnrolled() {
        return yearEnrolled;
    }

    public double getGPA() {
        return GPA;
    }

    public String getStatus() {
        return status;
    }

    public static int getCount() {
        return count;
    }
}