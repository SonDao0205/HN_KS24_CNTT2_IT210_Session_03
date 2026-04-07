package com.edu.studenthub1.controller;

import com.edu.studenthub1.model.Student;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {
    @GetMapping("/greet")
    public Student greet(){
        Student student = new Student("Hoàng Minh Quang","S-02",  "QTKD", 2024, 3.2, "Tốt nghiệp");
        return student;
    }
}
