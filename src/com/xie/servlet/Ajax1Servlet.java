package com.xie.servlet;


import com.xie.entity.User;
import com.xie.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/checkUserServlet")
public class Ajax1Servlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        PrintWriter pw = resp.getWriter();

        List<User> list = UserService.userList();
        for (User user : list) {
            if (username.equals(user.getUsername())){
                pw.write("1");
            }
        }
        pw.close();
    }
}
