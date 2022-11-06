/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.Account;


/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user=req.getParameter("username");
        String pass=req.getParameter("password");
        DAO d= new DAO();
        HttpSession session=req.getSession();
        System.out.println(user +","+pass);
        Account a= d.check(user, pass);
        if (a==null){
            req.setAttribute("mess", "Login Failed");
        } else{
            req.setAttribute("mess", "Login SuccessFully");
            session.setAttribute("account", a);
        }
        System.out.println("a: "+a);
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    
    
}
