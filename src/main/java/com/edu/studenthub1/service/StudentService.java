package com.edu.studenthub1.service;

import com.edu.studenthub1.model.Student;
import com.edu.studenthub1.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    public List<Student> getStudents() {
        return studentRepository.getAllStudents();
    }

    public List<Student> sortStudentByGpa() {
        List<Student> students = studentRepository.getAllStudents();
        students.sort(Comparator.comparing(Student::getGPA).reversed());
        return students;
    }

    public List<Student> sortStudentByName() {
        List<Student> students = studentRepository.getAllStudents();
        students.sort(Comparator.comparing(Student::getFullName));
        return students;
    }

    public Student getStudentByID(int id) {
        List<Student> students = studentRepository.getAllStudents();
        for (Student student : students) {
            if (student.getId() == id) {
                return student;
            }
        }
        return null;
    }

    public List<Student> filterStudentByName(String name) {
        List<Student> students = studentRepository.getAllStudents();
        System.out.println(students.stream().filter(student -> student.getFullName().contains(name)).toList());
        return students.stream().filter(student -> student.getFullName().toLowerCase().contains(name.toLowerCase())).toList();
    }

    public List<Student> filterStudentByFaculty(String faculty) {
        List<Student> students = studentRepository.getAllStudents();
        System.out.println(students.stream().filter(student -> student.getFaculty().contains(faculty)).toList());
        return students.stream().filter(student -> student.getFaculty().contains(faculty)).toList();
    }

    public Map<String, Object> getStatistic() {
        Map<String, Object> map = new HashMap<>();
        List<Student> students = studentRepository.getAllStudents();
        map.put("allStudent", students.size());
        System.out.println();
        map.put("percentInProgress", ((double) filterStatus("Đang học") / students.size() * 100));
        map.put("percentReserve", ((double) filterStatus("Bảo lưu") / students.size() * 100));
        map.put("percentGraduated", ((double) filterStatus("Tốt nghiệp") / students.size() * 100));
        double sum = 0;
        for (Student student : students) {
            sum += student.getGPA();
        }
        double avg = sum / students.size();
        double roundedAvg = Math.round(avg * 100.0) / 100.0;
        map.put("avgGPA",roundedAvg);
        Student highest = students.stream().max(Comparator.comparing(Student::getGPA)).orElse(null);
        map.put("highestGPA",highest);
        return map;
    }

    private Integer filterStatus(String status) {
        List<Student> students = studentRepository.getAllStudents();
        return students.stream().filter(student -> student.getStatus().equals(status)).toList().size();
    }

}
