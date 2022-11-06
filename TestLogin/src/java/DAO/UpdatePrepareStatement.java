/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Admin
 */
public class UpdatePrepareStatement {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public  void insertRecords( String user,String pass){
        try {
            String sql = "insert into accountUser values(?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
    public  void deleteRecords( String user){
        try {
            String sql = "delete from accountUser where username= ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
}
