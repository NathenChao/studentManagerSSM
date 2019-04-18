package net.wanho.mapper;

import net.wanho.pojo.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by dc on 2019/4/18.
 */
@Repository
public interface StudentMapper {
    //    返回所有学生
    List<Student> getAllStudent();
    //    根据学生ID查询学生
    Student getStudentById(Integer id);
    //    添加学生
    void addStudent(Student student);
    //    修改学生
    void updateStudent(Student student);
    //    删除学生
    void deleteStudentById(Integer id);
}
