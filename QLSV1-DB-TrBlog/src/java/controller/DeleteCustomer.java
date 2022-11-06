/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class DeleteCustomer extends HttpServlet {
   
   
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id_raw= request.getParameter("id");
        int id = Integer.parseInt(id_raw);
        CustomerDAO d= new CustomerDAO();
        try {
            d.deleteCustomer(id);
            d.resetId();
        } catch (Exception ex) {
            Logger.getLogger(DeleteCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("view/list.jsp");
    }


}
