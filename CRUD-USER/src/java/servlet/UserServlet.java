/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import DAO.UserDAO;
import com.sun.javafx.util.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Date;
import model.User;

/**
 *
 * @author Admin
 */
public class UserServlet extends HttpServlet {

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
        User user = new User();
        UserDAO dao = new UserDAO();
        String action = request.getParameter("action");
        if (action == null || action.equals("")) {
            request.getRequestDispatcher("/view/Display-user.jsp").forward(request, response);
            return;
        }
        switch (action) {

            case "AddOrEdit": {
                String username = request.getParameter("username");
                user = dao.findByUsername(username);
                if (user == null) {
                    user = new User();

                }
                request.getRequestDispatcher("/view/Register.jsp").forward(request, response);
                break;
            }
            case "SaveOrUpdate": {
                user = new User();
                dao.save(user);
                request.getRequestDispatcher("/view/Register.jsp").forward(request, response);
                break;
            }
            case "list": {
                request.getRequestDispatcher("/view/Display-user.jsp").forward(request, response);
            }
            case "Delete": {
                String username = request.getParameter("username");
                if (dao.findByUsername(username) != null) {
                    dao.delete(username);
                }
                request.getRequestDispatcher("/view/Display-user.jsp").forward(request, response);

            }
        }
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
