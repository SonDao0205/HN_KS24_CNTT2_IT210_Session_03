package com.edu.studenthub1.model;

import lombok.Getter;

@Getter
public class Student {
    private int id;
    private String fullName;
    private String studentCode;
    private String faculty;
    private int yearEnrolled;
    private double GPA;
    private String status;

    public Student() {
    }

    public Student(String fullName, String studentCode, String faculty, int yearEnrolled, double GPA, String status) {
        this.id = 1;
        this.fullName = fullName;
        this.studentCode = studentCode;
        this.faculty = faculty;
        this.yearEnrolled = yearEnrolled;
        this.GPA = GPA;
        this.status = status;
    }

}