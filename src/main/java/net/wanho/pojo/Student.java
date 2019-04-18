package net.wanho.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Created by dc on 2019/4/18.
 */
@Data
@NoArgsConstructor
@ToString
@AllArgsConstructor
public class Student {
    private Integer studentId;
    private String studentName;
    private Integer studentAge;
    private String studentGender;
    private String studentAddress;

}
