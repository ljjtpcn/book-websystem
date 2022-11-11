package cn.twopair.web;

import cn.twopair.pojo.User;
import cn.twopair.service.UserService;
import cn.twopair.service.impl.UserServiceImpl;
import cn.twopair.util.SpringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @description:
 * @author: 李佳骏
 * @time: 2022/8/29 21:59
 */


@WebServlet("/selectUserServlet")
public class SelectUserServlet extends HttpServlet {
    private static UserService userService = (UserService) SpringUtil.getBean(UserService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        User user = userService.selectByUsername(username);
        if (user == null) {
            response.getWriter().write("true");
            return;
        }
        response.getWriter().write("false");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
