package cn.twopair.web;

import cn.twopair.pojo.User;
import cn.twopair.service.UserService;
import cn.twopair.util.SpringUtil;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @description:
 * @author: 李佳骏
 * @time: 2022/8/29 21:20
 */

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {

    @Autowired
    private static UserService userService = (UserService) SpringUtil.getBean(UserService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String gender = "1".equals(request.getParameter("gender")) ? "男" : "女";
        String telephone = request.getParameter("telephone");
        String introduction = request.getParameter("introduction");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setGender(gender);
        user.setTelephone(telephone);
        user.setIntroduction(introduction);

        boolean ok = userService.register(user);
        if (ok) {
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
