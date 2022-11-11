package cn.twopair.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @description:
 * @author: 李佳骏
 * @time: 2022/8/25 16:01
 */

@Getter
@Setter
@ToString
public class User {
    String username;
    String name;
    String password;
    String gender;
    String telephone;
    String introduction;
}
