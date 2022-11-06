/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author Admin
 */
public class UserDAO {
    List <User> list= new ArrayList<>();
    SimpleDateFormat f= new SimpleDateFormat("dd/MM/yyyy");
    public List<User> dummyData() throws ParseException{
        list.add(new User("sang","123","sang dep trai",22,  f.parse("20/09/2022"),true));
        list.add(new User("sang1","123","sang1 dep trai",23,f.parse("20/09/2022"),false));
        list.add(new User("sang2","123","sang2 dep trai",24,f.parse("20/09/2022"),false));
        list.add(new User("sang3","123","sang3 dep trai",25,f.parse("20/09/2022"),true));
        return list;
    }
    public List<User> getAll() throws ParseException{
        return list;
    }
    public int insert(User u){
        list.add(u);
        return 1;
    }
    public int update(User u){
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getUsername().equals(u.getUsername())){
                list.set(i,u);
                return i;
            }
        }
        return -1;
    }
    public User findByUsername(String username){
        for (User user : list) {
            if (user.getUsername().equals(username))
                return user;
        }
        return null;
    }
    public int save(User user){
        if (findByUsername(user.getUsername())!=null){
            update(user);
        } else{
            insert(user);
        }
        return 1;
    }
    public int delete(String username){
        User u= findByUsername(username);
        if (u!=null){
            list.remove(u);
            return 1;
        }
        return -1;
    }
}
