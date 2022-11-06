/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import context.DBContext;
import dao.CustomerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author Admin
 */
public class AddCustomer extends HttpServlet {

    Connection conn = null; // mo ket noi voi sql server
    PreparedStatement ps = null;// nem cau lenh query tu netbean sang sql server
    ResultSet rs = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CustomerDAO c = new CustomerDAO();
        Customer std = new Customer();

        try {
            conn = new DBContext().getConnection();
            if (request.getParameter("id") != null) {
                int id = Integer.parseInt(request.getParameter("id"));
                std = c.getCustomerById(id);
                request.setAttribute("std", std);
                request.setAttribute("id", id);
            }

        } catch (Exception ex) {
        }
        request.getRequestDispatcher("/action/EditCustomer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String province = request.getParameter("province");
        String district = request.getParameter("district");
        String village = request.getParameter("village");
        String address = request.getParameter("address");
        CustomerDAO d = new CustomerDAO();
       String index = request.getParameter("id");
        int id = 0;
        try {
            id = Integer.parseInt(index);
        } catch (Exception e) {
        }
        if (id == 0) {
            d.addCustomer(firstName, lastName, email, password, phone, dob, gender, province, district, village, address);
        } else {
            try {
                d.editCustomer(id, firstName, lastName, email, password, phone, dob, gender, province, district, village, address);
            } catch (Exception ex) {
                Logger.getLogger(AddCustomer.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        response.sendRedirect("view/list.jsp");
    }

}
