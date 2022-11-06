/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBConnect;
import entity.Digital;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class DigitalDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Digital getTop1() {
        try {
            String query = "select * from Digital where timePost = (\n"
                    + "select max(timePost) from Digital)";
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital d = new Digital(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7));
                return d;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Digital> getTop5() {
        ArrayList<Digital> list = new ArrayList<>();
        try {
            String query = "select  top 5 * from Digital\n"
                    + "where timePost not in(select max(timePost) from Digital)\n"
                    + "order by timePost";
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital d = new Digital(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7));
                list.add(d);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public int count(String txt) {
        try {
            String query = " select count(*) from Digital where title like ?";
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Digital> Search(String txt, int index) {
        ArrayList<Digital> list = new ArrayList<>();
        try {
            String query = "select * from (\n"
                    + "select  ROW_NUMBER () over (order by id asc ) as r,\n"
                    + "* from Digital where title like ?) as x\n"
                    + "where r between ?*3-2 and ?*3";
            conn = new DBConnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+ txt+"%");
            ps.setInt(2,index);
            ps.setInt(3,index);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                Digital d = new Digital(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
                list.add(d);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

}
