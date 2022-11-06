/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class Cal implements Serializable {

    double num1 = 0;
    double num2 = 0;
    String action ="+";

    public Cal() {
    }

    public Cal(double num1, double num2, String action) {
        this.num1 = num1;
        this.num2 = num2;
        this.action = action;
    }

    public double getNum1() {
        return num1;
    }

    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum2(double num2) {
        this.num2 = num2;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getResult() {
        String rs = "";
        switch (action) {
            case "+":
                rs = "tong" + (num1 + num2);
                break;

            case "-":
                rs = "hieu" + (num1 - num2);
                break;

            case "*":
                rs = "tich" + (num1 * num2);
                break;

            case "/":
                if (num2 == 0) {
                    rs = "khong chia dc cho 0";
                } else {
                    rs = "thuong" + (num1 / num2);
                }
                break;
            default:
                rs = "";
        }
        return rs;
    }
}
