package com.xie.servlet;

import com.xie.entity.User;
import com.xie.service.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateServlet")
public class FindByIDServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        User user = UserService.findbyID(id);
        req.setAttribute("user",user);

        req.getRequestDispatcher("updateUser.jsp").forward(req,resp);
    }
}
