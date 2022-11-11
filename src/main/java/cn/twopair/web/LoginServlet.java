package cn.twopair.web;

import cn.twopair.pojo.User;
import cn.twopair.service.UserService;
import cn.twopair.service.impl.UserServiceImpl;
import cn.twopair.util.SpringUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * @description:
 * @author: 李佳骏
 * @time: 2022/8/29 21:20
 */

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static UserService userService = (UserService) SpringUtil.getBean(UserService.class);


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        User user = userService.login(username, password);
        if (user != null) {

            if ("1".equals(remember)) {
                Cookie cookieUsername = new Cookie("username", username);
                Cookie cookiePassword = new Cookie("password", password);
                cookieUsername.setMaxAge(60 * 60 * 24 * 7);
                cookiePassword.setMaxAge(60 * 60 * 24 * 7);
                response.addCookie(cookieUsername);
                response.addCookie(cookiePassword);
            }

            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            request.removeAttribute("login_msg"); // 移除登陆提示

            response.sendRedirect("./index.jsp");
            return;
        }
        request.setAttribute("login_msg", "用户名或密码错了啊");
        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
