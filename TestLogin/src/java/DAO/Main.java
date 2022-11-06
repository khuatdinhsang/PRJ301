/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author Admin
 */
public class Main {
    public static void main(String[] args) {
        UpdatePrepareStatement u= new UpdatePrepareStatement();
        u.insertRecords("bao yeu", "2309");
        u.deleteRecords("nhung");
    }
}
