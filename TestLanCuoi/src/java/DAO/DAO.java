/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public Account login(String username, String password) {
        try {
            String sql = "select * from accountUser\n"
                    + "where username = ? and password =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getString(1), rs.getString(2));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
}
