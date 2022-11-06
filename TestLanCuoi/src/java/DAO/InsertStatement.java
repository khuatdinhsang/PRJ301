/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import model.Account;
/**
 *
 * @author Admin
 */
public class InsertStatement extends DBContext{

    public void insertRecords(String user,String pass){
        try {
            String sql = "insert into accountUser values("+user+","+pass+")";
            Statement statement =connection.createStatement();
          int rs=statement.executeUpdate(sql);
            System.out.println("so dong la: "+rs);
        } catch (Exception e) {
            System.out.println("loi: "+e);
        }
    }
  
    public void DeleteRecords(String user){
        try {
            String sql = "delete from accountUser where username= "+user;
            Statement statement =connection.createStatement();
//          int rs=statement.executeUpdate(sql);
          ResultSet rs= statement.executeQuery(sql);
            System.out.println("so dong la: "+rs);
        } catch (Exception e) {
            System.out.println("loi: "+e);
        }
    }
  
    
}

