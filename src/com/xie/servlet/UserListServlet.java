package com.xie.servlet;

import com.xie.entity.User;
import com.xie.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/userListServlet")
public class UserListServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> list = UserService.userList();

        req.setAttribute("list",list);
        req.getRequestDispatcher("userList.jsp").forward(req,resp);
    }
}
