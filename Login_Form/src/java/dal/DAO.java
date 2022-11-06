/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Admin;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public Admin check(String username, String password) {
        String sql = "select * from Admin where username=? and password= ?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Admin a = new Admin(rs.getString("username"), rs.getString("password"), rs.getInt("role"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public boolean existed(String username) {
        String sql = "select * from Admin where username=?";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
    public void register(Admin a) throws SQLException{
        String sql="insert into admin values (?,?,?)";
        PreparedStatement st=connection.prepareStatement(sql);
        st.setString(1, a.getUsername());
        st.setString(2,a.getPassword());
        st.setInt(3, a.getRole());
        st.executeUpdate();
    }
    public void change(Admin a ){
        String sql="update Admin set password =? where username= ?";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, a.getPassword());
            st.setString(2, a.getUsername());
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
}
