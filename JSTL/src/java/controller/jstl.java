/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Random;
import model.Student;

/**
 *
 * @author Admin
 */
@WebServlet(name = "jstl", urlPatterns = {"/jstl"})
public class jstl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet jstl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet jstl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = "sang dep trai";
        request.setAttribute("name", name);
        Student s = new Student(1, "dieu chuc", true, 6);
        request.setAttribute("st", s);
        String num_raw = request.getParameter("num");
        int num;
        try {
            num = Integer.parseInt(num_raw);
            ArrayList<Student> list = new ArrayList<>();
            Random r = new Random();
            int id = 0;
            boolean gender = true;
            int mark;
            String[] w = {"A", "B", "C", "D", "E", "F"};
            for (int i = 0; i < num; i++) {
                id = r.nextInt(99 - 10 + 1) + 10;
                gender = r.nextBoolean();
                int k = r.nextInt(w.length);
                if (gender) {
                    name = "Mr" + w[k];
                } else {
                    name = "Mrs" + w[k];
                }
                mark = r.nextInt(11);
                Student s1 = new Student(id, name, gender, mark);
                list.add(s1);
            }
            request.setAttribute("data", list);
        } catch (Exception e) {
        }
        request.getRequestDispatcher("test.jsp").forward(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
