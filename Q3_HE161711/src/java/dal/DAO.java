/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;
import model.Employee;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public ArrayList<Account> getAccount() {
        ArrayList<Account> list = new ArrayList<>();
        try {
            String sql = "select * from Account";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("displayname"));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Employee> listEmployees(String user) {
        ArrayList<Employee> list = new ArrayList<>();
        try {
            String sql = "select * from Employee where createdby =? ";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Employee e = new Employee(rs.getString(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getBoolean(4),
                        rs.getString(5));
                list.add(e);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account check(String username, String password) {
        String sql = "select * from Account where [username] = ? and [password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getString("username"), 
                        rs.getString("password"),
                        rs.getString("displayname"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
