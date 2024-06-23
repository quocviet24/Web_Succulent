/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Object;

/**
 *
 * @author admin
 */
public class Order {
    private int IDO;
    private String username;
    private int IDSu;
    private String name;
    private String img;
    private int quantity;
    private double price;

    public Order() {
    }

    public Order(String username, int IDSu, String name, String img, int quantity, double price) {
        this.username = username;
        this.IDSu = IDSu;
        this.name = name;
        this.img = img;
        this.quantity = quantity;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    

    public Order(String username, int IDSu, int quantity, double price) {
        this.username = username;
        this.IDSu = IDSu;
        this.quantity = quantity;
        this.price = price;
    }

    public Order(int IDO, String username, int IDSu, int quantity, double price) {
        this.IDO = IDO;
        this.username = username;
        this.IDSu = IDSu;
        this.quantity = quantity;
        this.price = price;
    }

    public int getIDO() {
        return IDO;
    }

    public void setIDO(int IDO) {
        this.IDO = IDO;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getIDSu() {
        return IDSu;
    }

    public void setIDSu(int IDSu) {
        this.IDSu = IDSu;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Order{" + "IDO=" + IDO + ", username=" + username + ", IDSu=" + IDSu + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
