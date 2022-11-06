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

/**
 *
 * @author Admin
 */
public class BatchJDBC {

    // neu nhu chay 100 cau lenh sql cung 1 luc thi
    // batch se chia nhỏ ra ví dụ như 5, 10 câu lệnh chạy 1 lúc
    public static void main(String[] args) throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        conn = new DBContext().getConnection();
        String sql1 = "Insert into accountUser values ('dieu','12')";
        String sql2 = "Insert into accountUser values ('giang','13')";
        String sql3 = "Insert into accountUser values ('chuc','14')";
        Statement sta = conn.createStatement();
        sta.addBatch(sql1);
        sta.addBatch(sql2);
        sta.addBatch(sql3);
        sta.executeBatch();
        String sql4 = "insert into accountUser values (?,?)";
        ps = conn.prepareStatement(sql4);
        ps.setString(1, "dongcao");
        ps.setString(2, "12345");
        ps.addBatch();
        ps.setString(1, "dongcao2");
        ps.setString(2, "123453");
        ps.addBatch();
        sta.executeBatch();
    }

}
