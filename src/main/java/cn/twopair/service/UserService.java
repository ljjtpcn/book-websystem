package cn.twopair.service;

import cn.twopair.pojo.User;

/**
 * @description: TODO
 * @author: 李佳骏
 * @time: 2022/8/29 20:29
 */

public interface UserService {
    public User login(String username, String password);

    public User selectByUsername(String username);

    public boolean register(User user);
}

