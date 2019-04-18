package net.wanho.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by dc on 2019/4/18.
 */
@Service
public  class StudentServiceImpl implements StudentServiceI {
    @Autowired
    private StudentMapper studentMapper;
    @Override
        public PageInfo<Student> getAllStudent(Integer pageNum) {
        PageHelper.startPage(pageNum,4);
        List<Student> student = studentMapper.getAllStudent();
        PageInfo<Student> pageInfo = new PageInfo<Student>(student);
        return  pageInfo;
    }

    @Override
    public Student getStudentById(Integer id) {

        return studentMapper.getStudentById(id);
    }

    @Override
    public void addStudent(Student student) {
        studentMapper.addStudent(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }

    @Override
    public void deleteStudentById(Integer id) {
        studentMapper.deleteStudentById(id);
    }
}
