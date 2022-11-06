/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Student {
    private int id;
    private String name;
    private Date dob;
    private boolean gold_member;

    public Student() {
    }

    public Student(int id, String name, Date dob, boolean gold_member) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gold_member = gold_member;
    }

    public Student(int id, String name, Date dob, boolean gold_member, String createby) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gold_member = gold_member;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGold_member() {
        return gold_member;
    }

    public void setGold_member(boolean gold_member) {
        this.gold_member = gold_member;
    }

    
}
