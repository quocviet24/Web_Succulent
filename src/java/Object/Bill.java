/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Object;

/**
 *
 * @author admin
 */
public class Bill {
    private int IDB;
    private String username;
    private int IDSu;
    private int quantity;
    private double price;

    public Bill() {
    }

    public Bill(String username, int IDSu, int quantity, double price) {
        this.username = username;
        this.IDSu = IDSu;
        this.quantity = quantity;
        this.price = price;
    }
    
    

    public Bill(int IDB, String username, int IDSu, int quantity, double price) {
        this.IDB = IDB;
        this.username = username;
        this.IDSu = IDSu;
        this.quantity = quantity;
        this.price = price;
    }

    public int getIDB() {
        return IDB;
    }

    public void setIDB(int IDB) {
        this.IDB = IDB;
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
        return "Bill{" + "IDB=" + IDB + ", username=" + username + ", IDSu=" + IDSu + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
    
}
