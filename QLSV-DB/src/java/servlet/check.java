/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import context.DBContext;
import entities.Student;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class check {

    Connection conn = null; // mo ket noi voi sql server
    PreparedStatement ps = null;// nem cau lenh query tu netbean sang sql server
    ResultSet rs = null; //execute query va nhan ket qua tra ve

    public Student checkLogin(String name, int age, String address) {
        try {
            String sql = "select * from hocsinh where name= ? and age= ? and address=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, address);
            rs = ps.executeQuery();
            Student a = null;
            while (rs.next()) {
                a = new Student(rs.getString(2), rs.getInt(3), rs.getString(4));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addStudent(String name, int age, String address) {
        try {
            String sql = "INSERT INTO [dbo].[hocsinh]\n"
                    + "           ([name]\n"
                    + "           ,[age]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";
            conn = new DBContext().getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, name);
            st.setInt(2, age);
            st.setString(3, address);
            st.executeUpdate();
        } catch (Exception ex) {

        }
    }

    public ArrayList<Student> getListStudent() {
        try {
            String sql = "select * from hocsinh";
            try {
                conn = new DBContext().getConnection();
            } catch (Exception ex) {
                Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
            }
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            ArrayList<Student> list = new ArrayList<>();
            while (rs.next()) {
                Student a = new Student(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4));
                list.add(a);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void deleteStudent(int id) throws Exception {
        try {
            String sql = "delete from "
                    + "hocsinh"
                    + ""
                    + " where id=" + id;
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            ArrayList<Student> list = new ArrayList<>();
            list = getListStudent();
            for (Student student : list) {
                if (student.getId() == id) {
                    list.remove(id);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editStudent(int id, String name, int age, String address) {

        try {
            String sql = "UPDATE [dbo].[hocsinh]\n"
                    + "   SET [name] = ?\n"
                    + "      ,[age] = ?\n"
                    + "      ,[address] = ?\n"
                    + " WHERE id = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, address);
            ps.setInt(4, id);
            rs = ps.executeQuery();

        } catch (Exception ex) {
            Logger.getLogger(check.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Student getStudentById( int id){
        String sql="select * from Student where id= ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs=ps.executeQuery();
            if (rs.next()){
                Student s= new Student(rs.getString("name"),rs.getInt("age"),rs.getString("address"));
                return s;
                
            }
        } catch (Exception e) {
        }
        return null;
    }

}
