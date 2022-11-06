/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package dao;

import context.DBContext;
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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;

/**
 *
 * @author Admin
 */
public class CustomerDAO {

    Connection conn = null; // mo ket noi voi sql server
    PreparedStatement ps = null;// nem cau lenh query tu netbean sang sql server
    ResultSet rs = null;

    public ArrayList<Customer> getListCustomer() throws Exception {
        try {
            resetId();
            String sql = "select * from customer";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            ArrayList<Customer> list = new ArrayList<>();
            while (rs.next()) {
                Customer a = new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));
                list.add(a);
            }
            return list;
        } catch (SQLException ex) {
        }
        return null;
    }

    public void addCustomer(String firstName, String lastName, String email,
            String password, String phone, String dob, String gender, String province,
            String district, String village, String address) {
        try {
            String sql = "INSERT INTO [dbo].[customer]\n"
                    + "           ([firstName]\n"
                    + "           ,[lastName]\n"
                    + "           ,[email]\n"
                    + "           ,[password]\n"
                    + "           ,[phone]\n"
                    + "           ,[dob]\n"
                    + "           ,[gender]\n"
                    + "           ,[province]\n"
                    + "           ,[district]\n"
                    + "           ,[village]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, firstName);
            st.setString(2, lastName);
            st.setString(3, email);
            st.setString(4, password);
            st.setString(5, phone);
            st.setString(6, dob);
            st.setString(7, gender);
            st.setString(8, province);
            st.setString(9, district);
            st.setString(10, village);
            st.setString(11, address);
            st.executeUpdate();
        } catch (Exception ex) {

        }
    }

    public void deleteCustomer(int id) throws Exception {
        try {
            String sql = "delete from customer"
                    + " where id= ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            Customer c = getCustomerById(id);
            ArrayList<Customer> list = getListCustomer();
            list.remove(c);
        } catch (SQLException ex) {
        }
    }

    public Customer getCustomerById(int id) {
        String sql = "select * from customer where id= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Customer c = new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12));
                return c;

            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editCustomer(int id, String firstName, String lastName, String email,
            String password, String phone, String dob, String gender, String province,
            String district, String village, String address) {

        try {
            String sql = "UPDATE [dbo].[customer]\n"
                    + "   SET [firstName] = ?\n"
                    + "      ,[lastName] =?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[password] =?\n"
                    + "      ,[phone] =?\n"
                    + "      ,[dob] = ?\n"
                    + "      ,[gender] = ?\n"
                    + "      ,[province] = ?\n"
                    + "      ,[district] = ?\n"
                    + "      ,[village] =?\n"
                    + "      ,[address] = ?\n"
                    + " WHERE id =?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, phone);
            ps.setString(6, dob);
            ps.setString(7, gender);
            ps.setString(8, province);
            ps.setString(9, district);
            ps.setString(10, village);
            ps.setString(11, address);
            ps.setInt(12, id);
            rs = ps.executeQuery();
        } catch (Exception ex) {
        }
    }

    public void resetId() {
        try {
            String sql1 = "create table tem_customer(\n"
                    + "firstName nvarchar(30),\n"
                    + "lastName nvarchar(30),\n"
                    + "email nvarchar(50),\n"
                    + "password nvarchar(20),\n"
                    + "phone nvarchar(20),\n"
                    + "dob nvarchar(20),\n"
                    + " gender nvarchar(10),\n"
                    + " province nvarchar(20),\n"
                    + " district nvarchar(20),\n"
                    + " village nvarchar(20),\n"
                    + " address nvarchar(max),\n"
                    + ")";
            String sql2 = "truncate table tem_customer";
            String sql3 = "insert into tem_customer select firstName,lastName,email,password,phone,dob,gender\n"
                    + ",province,district,village,address from customer";
            String sql4 = "TRUNCATE table customer";
            String sql5 = "INSERT INTO customer (firstName,lastName,email,password,phone,dob,gender\n"
                    + ",province,district,village,address)\n"
                    + "    SELECT firstName,lastName,email,password,phone,dob,gender\n"
                    + ",province,district,village,address FROM tem_customer";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql1);
            ps = conn.prepareStatement(sql2);
            ps = conn.prepareStatement(sql3);
            ps = conn.prepareStatement(sql4);
            ps = conn.prepareStatement(sql5);
        } catch (Exception ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
