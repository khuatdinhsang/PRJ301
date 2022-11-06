/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class testServelet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            out.println("<h1>Servlet testServelet at " + request.getContextPath () + "</h1>");
          
        }
    } 

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
        request.getRequestDispatcher("index.html").forward(request, response);
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                PrintWriter out= response.getWriter();

        out.println("<!DOCTYPE html>");
        out.println("<meta charset=\"UTF-8\">");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet testServelet</title>");  
            out.println("</head>");
            out.println("<body>");
        String ten=request.getParameter("ten");
        String gt=request.getParameter("gt");
        String diem_raw=request.getParameter("diem");
        String monhoc=request.getParameter("mh");
        double diem;
        String ms="";
        try {
            diem=Double.parseDouble(diem_raw);
            if (gt.equals("0")){
                ms="Hello Mr"+ten;
            } else {
                ms="Hello Mrs"+ten;
            }
            if (diem>5){
                ms+="<br/> chuc mung "+ten +" pass mon "+monhoc ;
            } else {
                ms+="<br/> chia buon sáng đẹp trai c "+ten+" hen may lan sau";
            }
                
        } catch (Exception e) {
            System.out.println(e);
        }
        out.println("<h2>"+ms+"</h2>");
        out.println("</body>");
        out.println("</html>");
                
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
