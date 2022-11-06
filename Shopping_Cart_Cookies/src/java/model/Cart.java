/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    // tra ve san pham so luong trong gio hang
    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getProduct().getId()) != null) {
            Item m = getItemById(t.getProduct().getId());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

    public double getTotalMoney() {
        double t = 0;
        for (Item item : items) {
            t += (item.getPrice() * item.getQuantity());
        }
        return t;
    }

    // gio hang doc tu cookie ra
    private Product getProductById(int id, List<Product> list) {
        for (Product product : list) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    public Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {

            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("/");
                for (String str : s) {
                    String[] n = str.split(":");
                    int id =Integer.parseInt(n[0]);
                    int quantity=Integer.parseInt(n[1]);
                    Product p=getProductById(id, list);
                    Item t= new Item(p,quantity,p.getPrice()*1.67);
                    addItem(t);
                }
            }
        } catch (Exception e) {
        }
    }

}
