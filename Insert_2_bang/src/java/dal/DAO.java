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
import model.Department;
import model.Employee;
import model.Group;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    // lay toan bo group
    public List<Group> getAll() {
        List<Group> list = new ArrayList<>();
        String sql = "select * from [Group]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Group g = new Group(rs.getInt("groupid"), rs.getString("name"));
                list.add(g);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public void insert(Account a) {
        // insert Account 
        String sql1 = "insert into Account values( ?,?)";

        try {
            PreparedStatement st1 = connection.prepareStatement(sql1);
            st1.setString(1, a.getAccountID());
            st1.setString(2, a.getPassword());
            st1.executeUpdate();
            // insert Account Group
            List<Group> list = a.getGroups();
            for (Group group : list) {
                String sql2 = "insert into [Account_Group] values (?,?)";
                PreparedStatement st2=connection.prepareStatement(sql2);
                st2.setInt(1, group.getGroupId());
                st2.setString(2, a.getAccountID());
                st2.executeUpdate();
            }
        } catch (Exception e) {
        }
    }
    public Department getDepartmentById(int id){
        String sql = "select * from department where id = " + id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return new Department(rs.getInt("id"), rs.getString("name"));
            }
        } catch ( Exception e) {
            System.out.println(e);
        }
        return null;
    }
    public List<Employee> getEmployee(){
         List<Employee> list = new ArrayList<>();
        String sql = "select * from Employee ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Employee e= new Employee(rs.getInt("id"), 
                        rs.getString("name"), rs.getBoolean("gender"), rs.getString("dob"),getDepartmentById(rs.getInt("did")));
                list.add(e);
            }

        } catch (Exception e) {
        }
        return list;
    }
}
