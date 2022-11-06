/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author This Pc
 */
import java.util.ArrayList;
import model.Event;

public class EventDAO extends DBContext {

    public List<Event> getALL() {
        List<Event> list = new ArrayList<>();

        String sql = "select * from Event";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Event c = new Event();
                c.setId(rs.getInt("id"));
                c.setContent(rs.getString("content"));
                c.setDate(rs.getDate("date"));
                c.setIsEnable(rs.getBoolean("isEnabled"));
                c.setCreateBy(rs.getString("created_by"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
   
}
