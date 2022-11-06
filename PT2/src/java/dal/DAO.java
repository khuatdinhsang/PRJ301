/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import jakarta.servlet.jsp.jstl.sql.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Admin;
import model.Student;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public ArrayList<Student> getAll() throws SQLException {
        String sql = "select * from Student";
        ArrayList<Student> list = new ArrayList<>();
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            Student s = new Student();
            s.setID(rs.getString("ID"));
            s.setName(rs.getString("name"));
            s.setDob(rs.getDate("dob"));
            s.setGender(rs.getInt("gender"));
            s.setAddress(rs.getString("address"));
            list.add(s);
        }
        return list;
    }

    public void add(Student s) {
        String sql = "insert into Student values(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, s.getID());
            st.setString(2, s.getName());
            st.setDate(3, s.getDob());
            st.setInt(4, s.getGender());
            st.setString(5, s.getAddress());
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(String id) {
        String sql = "delete from Student where ID =?";
        PreparedStatement st;
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Student getStudentByID(String id) {
        String sql = "select * from Student where ID =?";
        PreparedStatement st;
        try {
            st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Student s = new Student();
                s.setID(rs.getString("ID"));
                s.setName(rs.getString("name"));
                s.setDob(rs.getDate("dob"));
                s.setGender(rs.getInt("gender"));
                s.setAddress(rs.getString("address"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void update(Student s) throws SQLException {
        String sql = "Update Student set name =?, dob =?, gender= ?,address =? where ID =?";
        PreparedStatement st = connection.prepareStatement(sql);
        st.setString(1, s.getName());
        st.setDate(2, s.getDob());
        st.setInt(3, s.getGender());
        st.setString(4, s.getAddress());
        st.setString(5, s.getID());
        st.executeUpdate();
    }
    public Admin checkLogin (String username, String password){
       String sql="select * from Admin where username=? and password=?";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1,username);
            st.setString(2,password);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                Admin a = new Admin();
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                return a;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return null;
    }
}
