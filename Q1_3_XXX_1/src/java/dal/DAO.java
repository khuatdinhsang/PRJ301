/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Student;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext{
    public List<Account> getDisplayName(){
        String sql="select * from Account";
        List<Account> list= new ArrayList<>();
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while (rs.next()){
                Account a= new Account(rs.getString("username"), 
                        rs.getString("password"), rs.getString("displayname"));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Student> getStudentById(String id){
        List<Student> list= new ArrayList<>();
        String sql="select * from Member where createdby= ? ";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1,id);
            ResultSet rs= st.executeQuery();
            while (rs.next()){
                Student s= new Student(rs.getInt("mid"), rs.getString("mname"),
                        rs.getDate("mdob"),rs.getBoolean("isGold"));
                list.add(s);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Account getAccount(String username,String password){
        String sql="select * from Account where username= ? and password= ?";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                Account a= new Account(rs.getString("username"),
                        rs.getString("password"), rs.getString("displayname"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
