/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class LoginDao extends DBContext{
    
    public Account checkLogin (String user, String pass){
        try {
            String query="select * from accountUser where username=? and [password]=?";
//            conn= new DBContext.getConnection();
           PreparedStatement ps=connection.prepareStatement(query);
           ResultSet rs =null;
//            ps=connection.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while (rs.next()){
                Account a= new Account( rs.getString(1), rs.getString(2));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
