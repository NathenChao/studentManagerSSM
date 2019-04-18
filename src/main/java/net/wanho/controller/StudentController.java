package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired
    private StudentServiceI studentServiceI;

    @RequestMapping("getAllStudent")
    public String  getAllStudent(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum, Map map){
        PageInfo<Student> pageInfo = studentServiceI.getAllStudent(pageNum);
        map.put("pageInfo",pageInfo);
        return "student";
    }

    @RequestMapping("toAddStudent")
    public String toAddStudent(){
        return "add";
    }
    @RequestMapping("addStudent")
    public String addStudent(Student student){
        studentServiceI.addStudent(student);
        System.out.println(student);
        return "redirect:/getAllStudent";
    }

    @RequestMapping("toUpdateStudent")
    public String toUpdateStu(Integer studentId,Map map){
        Student student = studentServiceI.getStudentById(studentId);
        System.out.println(studentId);
        System.out.println("student:"+student);
        map.put("student",student);
        return "update";
    }

    @RequestMapping("updateStudent")
    public String updateStudent(Student student){
        studentServiceI.updateStudent(student);
        return "redirect:/getAllStudent";
    }

    @RequestMapping("deleteStudent")
    public String deleteStudent(Integer studentId){
        studentServiceI.deleteStudentById(studentId);
        System.out.println(studentId);
        return "redirect:/getAllStudent";
    }
}
