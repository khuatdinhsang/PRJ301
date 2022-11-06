/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//
//    public class DBConnect{
//    public Connection getConnection() throws Exception{
//        String url="jdbc:sqlserver://"+serverName+":"+portNumber+"\\"+instance+";databaseName="+dbName;
//        if (instance ==null || instance.trim().isEmpty())
//            url="jdbc:sqlserver://"+serverName+":"+portNumber+";databaseName="+dbName;
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        return DriverManager.getConnection(url,userID,password);
//    }
//    private final String serverName="localhost";
//    private final String dbName="Account";
//    private final String portNumber="1433";
//    private final String instance="";
//    private final String userID="sa";
//private final String password="dinhsang2309";
//}
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author FPT University - PRJ301
 */
public class DBContext {
    protected Connection connection;
    public DBContext()
    {
        //@Students: You are allowed to edit user, pass, url variables to fit 
        //your system configuration
        //You can also add more methods for Database Interaction tasks. 
        //But we recommend you to do it in another class
        // For example : StudentDBContext extends DBContext , 
        //where StudentDBContext is located in dal package, 
        try {
            String user = "sa";
            String pass = "dinhsang2309";
            String url = "jdbc:sqlserver://LAPTOP-QVH23A9S:1433;databaseName=Account";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}