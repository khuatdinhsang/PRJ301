/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Cart;
import model.Customer;
import model.Item;
import model.Product;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext{
    public Customer getAccount(String username,String password){
        String sql="select * from Customer where username= ? and password= ?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                return new Customer(rs.getInt("id"),rs.getString("name"),rs.getDouble("amount"),username,password);
                    
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Product> getAll(){
        List<Product> list= new ArrayList<>();
        String sql="select * from Product";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Product p= new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getInt("quantity"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Product getProductById(int id){
        String sql="select * from Product where id =?";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs=st.executeQuery();
            if(rs.next()){
                Product p= new Product(rs.getInt("id"),rs.getString("name"),rs.getDouble("price"),rs.getInt("quantity"));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    // them vao 2 bang
    public void addOrder(Customer c, Cart cart){
        LocalDate curDate= LocalDate.now();
        String date=curDate.toString();
        try {
            // add bang hoa don
            String sql="insert into [order] values(?,?,?)";
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, c.getId());
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //add bang chi tiet hoa don
            // lay id cua order vua add
            String sql1="select * top 1 id from [order] order by id des";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            //add bang order detail
            if(rs.next()){
                int oid=rs.getInt("id");
                for (Item i : cart.getItems()) {
                    String sql2="insert into [orderline] value(?,?,?,?)";
                    PreparedStatement st2=connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setDouble(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }
            // cap nhat lai so luong san pham
            String sql3="update product set quantity = quantity-? where id=?";
            
            PreparedStatement st3=connection.prepareStatement(sql3);
            for (Item item : cart.getItems()) {
                st3.setInt(1, item.getQuantity());
                st3.setInt(2, item.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (Exception e) {
        }
                
    }
    
}
