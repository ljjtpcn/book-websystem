package cn.twopair.mapper;

import cn.twopair.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @description:
 * @author: 李佳骏
 * @time: 2022/8/25 16:15
 */

public interface UserMapper {

    /**
     * @Param: username 用户名
     * @Param: password 密码
     * @Description: 通过邮箱已经密码查询对应用户
     * @Return: cn.twopair.pojo.User
     * @Author: 李佳骏
     * @Date: 2022/9/20 19:22
     */
    @Select("SELECT * FROM user WHERE username = #{username} AND password = #{password}")
    User select(@Param("username") String username, @Param("password") String password);

    /**
     * @Param: username 用户名即邮箱
     * @Description: 通过邮箱查询对应用户
     * @Return: cn.twopair.pojo.User
     * @Author: 李佳骏
     * @Date: 2022/9/20 19:24
     */
    @Select("SELECT * FROM user WHERE username = #{username}")
    User selectByUsername(String username);

    /**
     * @Param: user 需插入的user对象
     * @Description: 插入user信息
     * @Return: void
     * @Author: 李佳骏
     * @Date: 2022/9/20 19:25
     */
    @Insert("INSERT INTO user VALUES (#{user.username}, #{user.name}, #{user.password}, #{user.gender}, #{user.telephone}, #{user.introduction})")
    void add(@Param("user") User user);

}
