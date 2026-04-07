package com.edu.studenthub1.controller;

import com.edu.studenthub1.model.Student;
import com.edu.studenthub1.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/","/list"})
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping({"/","/list"})
    public String listStudents(
            Model model,
            @RequestParam(value = "search", required = false) String search,
            @RequestParam(value = "sortBy", required = false) String sortBy,
            @RequestParam(value = "faculty", required = false) String faculty
    ) {
        if (sortBy != null) {
            if(sortBy.equals("gpa")){
                model.addAttribute("students", studentService.sortStudentByGpa());
            }else if (sortBy.equals("name")) {
                model.addAttribute("students", studentService.sortStudentByName());
            }
        } else if (search != null) {
            System.out.println("Search : " + search);
            model.addAttribute("students", studentService.filterStudentByName(search));
        } else if (faculty != null) {
            System.out.println("Falcuty : " + faculty);
            model.addAttribute("students", studentService.filterStudentByFaculty(faculty));
        } else {
            model.addAttribute("students", studentService.getStudents());
        }
        return "index";
    }

    @GetMapping("/detail")
    public String detail(
            @RequestParam(value = "id") int id,
            Model model
    ) {
        Student student = studentService.getStudentByID(id);
        if (student == null) {
            return "index";
        }
        model.addAttribute("student", student);
        return "detail";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("statistic", studentService.getStatistic());
        return "dashboard";
    }
}
