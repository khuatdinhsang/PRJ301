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
public class AddProductSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int index = -1;
        if (request.getParameter("id")!=null) {
           index= Integer.parseInt(request.getParameter("id"));
        }
        HttpSession session = request.getSession(false);
        List<Product> productList = new ArrayList<>();
        if (session.getAttribute("productList") != null) {
            productList = (List<Product>) session.getAttribute("productList");
        }
        Product product = new Product();
        if (productList.size() > index && index!=-1) {
            product = productList.get(index);
        } else{
            index=-1;
            
        }
        request.setAttribute("product", product);
        request.setAttribute("index", index);
        request.getRequestDispatcher("/product/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        double price = Double.parseDouble(request.getParameter("price"));
        String descriotion = request.getParameter("descriotion");
        int index=Integer.parseInt(request.getParameter("index"));
        Product product = new Product(name, category, descriotion, price);
        HttpSession session = request.getSession(false);
        List<Product> productList = new ArrayList<>();
        if (session.getAttribute("productList") != null) {
            productList = (List<Product>) session.getAttribute("productList");
        }
        if (index>=0){
            productList.set(index, product);
        } else{
            productList.add(product);
        }
//        productList.add(product);
        session.setAttribute("productList", productList);
        response.sendRedirect("add");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
