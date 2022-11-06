/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Account;

/**
 *
 * @author Admin
 */
public class JDBCTransaction {

    public static void main(String[] args) throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        conn.setAutoCommit(false); //quan trong
        conn = new DBContext().getConnection();
        Statement sta1 = conn.createStatement();
        Statement sta2 = conn.createStatement();
        String sql1 = "insert into accountUser values ('nhung','190')";
        String sql2 = "delete from accountUser where username='anh'";
        sta1.executeUpdate(sql2);
        sta1.executeUpdate(sql1);
        conn.commit(); //quan trong
//        nếu mà 1 trong số các câu lệnh quyey bị lỗi thì k chạy 1 câu lệnh 
// query nào trong database cả =>> để đảm bảo tính toàn vẹn dữ liệu
// còn nếu k có lỗi thì vẫn insert, update... như bthg
    }
}
