package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;

/**
 * Created by dc on 2019/4/15.
 */
public interface StudentServiceI {
    //    返回所有学生
    PageInfo<Student> getAllStudent(Integer pageNum);
    //    根据学生ID查询学生
    Student getStudentById(Integer id);
    //    添加学生
    void addStudent(Student student);
    //    修改学生
    void updateStudent(Student student);
    //    删除学生
    void deleteStudentById(Integer id);
}
