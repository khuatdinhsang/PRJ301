/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import context.DBContext;
import entities.Student;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class AddServlet extends HttpServlet {

    Connection conn = null; // mo ket noi voi sql server
    PreparedStatement ps = null;// nem cau lenh query tu netbean sang sql server
    ResultSet rs = null; //execute query va nhan ket qua tra ve

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        check c = new check();
        Student std = new Student();

        try {
            conn = new DBContext().getConnection();
            if (request.getParameter("id") != null) {
                int id = Integer.parseInt(request.getParameter("id"));
                ArrayList<Student> list = c.getListStudent();
                for (Student student : list) {
                    if (student.getId() == id) {
                        std = student;
                    }
                }
                request.setAttribute("std", std);
                request.setAttribute("id", id);
            }

        } catch (Exception ex) {
            Logger.getLogger(AddServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("/student/addStudent.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String address = request.getParameter("address");
        String index = request.getParameter("id");
        int id = 0;
        try {
            id = Integer.parseInt(index);
        } catch (Exception e) {
        }
        check c = new check();
        Student std = new Student();
        if (id == 0) {
            c.addStudent(name, age, address);
        } else {
            try {
                c.editStudent(id, name, age, address);
            } catch (Exception ex) {
                Logger.getLogger(AddServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        request.getRequestDispatcher("/student/listStudent.jsp").forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
