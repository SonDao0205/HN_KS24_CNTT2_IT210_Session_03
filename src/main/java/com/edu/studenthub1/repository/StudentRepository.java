package com.edu.studenthub1.repository;

import com.edu.studenthub1.model.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentRepository {
    private List<Student> students = new ArrayList<>();

    public StudentRepository() {
        students.add(new Student("Đào Trường Sơn","S-01",  "CNTT", 2024, 3.9, "Đang học"));
        students.add(new Student("Hoàng Minh Quang","S-02",  "QTKD", 2024, 3.2, "Tốt nghiệp"));
        students.add(new Student("Phạm Tiến Hưng","S-03",  "CNTT", 2024, 2.5, "Bảo lưu"));
        students.add(new Student("Bùi Đức Lợi","S-04",  "QTKD", 2024, 3.7, "Đang học"));
        students.add(new Student("Hà Thị Minh Trang","S-05",  "QTKD", 2024, 4.0, "Đang học")); // Thủ khoa
        students.add(new Student("Nguyễn Công Gia Huy","S-06",  "CNTT", 2024, 2.1, "Bảo lưu"));
        students.add(new Student("Lê Đức Anh","S-07",  "QTKD", 2024, 1.8, "Bảo lưu"));
        students.add(new Student("Lê Nhật Linh","S-08",  "CNTT", 2024, 3.5, "Tốt nghiệp"));
        students.add(new Student("An Hải Dũng","S-09",  "CNTT", 2024, 3.8, "Đang học"));
        students.add(new Student("Nguyễn Huy Hoàn","S-10",  "QTKD", 2024, 2.9, "Bảo lưu"));
        students.add(new Student("Hồ Hiểu Thanh","S-11",  "CNTT", 2024, 3.6, "Tốt nghiệp"));
    }

    public List<Student> getAllStudents(){
        return students;
    }


}
