/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package servlet;

import bean.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ListProductServlet extends HttpServlet {
   
 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("product/list.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action=request.getParameter("delete");
       int index=Integer.parseInt(request.getParameter("index"));
       if (action.equalsIgnoreCase("delete")){
           HttpSession session= request.getSession(false);
        List<Product> productList = new ArrayList<>();
        if (session.getAttribute("productList")!=null){
            productList=(List<Product>) session.getAttribute("productList");
            productList.remove(index);
        }
                
        session.setAttribute("productList", productList);
       }
       response.sendRedirect("list");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
