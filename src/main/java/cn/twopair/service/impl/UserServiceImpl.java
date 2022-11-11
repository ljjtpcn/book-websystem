package cn.twopair.service.impl;

import cn.twopair.mapper.UserMapper;
import cn.twopair.pojo.User;
import cn.twopair.service.UserService;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/8/29 22:47
 */

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User login(String username, String password) {
        User user = userMapper.select(username, password);
        return user;
    }

    public User selectByUsername(String username) {
        User user = userMapper.selectByUsername(username);
        return user;
    }


    public boolean register(User user) {
        User selectedUser = userMapper.selectByUsername(user.getUsername());

        if (selectedUser == null) {
            userMapper.add(user);
        }

        return selectedUser == null;
    }

}
