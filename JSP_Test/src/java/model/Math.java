/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class Math implements Serializable {

    private String num1, num2, op;

    public Math() {
    }

    public Math(String num1, String num2, String op) {
        this.num1 = num1;
        this.num2 = num2;
        this.op = op;
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getResult() {
        String rs = "";
        try {
            double a = Double.parseDouble(num1);
            double b = Double.parseDouble(num2);
            switch (op) {
                case "+":
                    rs = "Tong: " +( a + b);
                    break;
                case "-":
                    rs = "Hieu: " + (a - b);
                    break;
                case "x":
                    rs = "Tich: " + (a * b);
                    break;
                case "/":
                    if (b == 0) {
                        rs="Khong chia cho 0";
                    } else {
                        rs = "Thuong: " + (a / b);
                    }
                    break;
                default:
                    rs = "0";
            }
        } catch (Exception e) {
           String mess = "khong phai la so";
            System.out.println(mess);
        }

        return rs;
    }
    public String getKQ(){
        Date d= new Date();
        return "Hom nay la"+d;
    }
}
