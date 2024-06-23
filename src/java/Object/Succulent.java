/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Object;

/**
 *
 * @author admin
 */
public class Succulent {
    private int IDsu;
    private String name;
    private int quantity;
    private int category;
    private double price;
    private String describe;
    private String img;
    private String meaning;
    private String grow;

    public Succulent() {
    }

    public Succulent(int IDsu, String name, int quantity, int category, double price, String describe, String img, String meaning, String grow) {
        this.IDsu = IDsu;
        this.name = name;
        this.quantity = quantity;
        this.category = category;
        this.price = price;
        this.describe = describe;
        this.img = img;
        this.meaning = meaning;
        this.grow = grow;
    }
    
    

    public Succulent(String name, int quantity, int category, double price, String describe, String img, String meaning, String grow) {
        this.name = name;
        this.quantity = quantity;
        this.category = category;
        this.price = price;
        this.describe = describe;
        this.img = img;
        this.meaning = meaning;
        this.grow = grow;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }
    
    public Succulent(int IDsu, String name, int quantity, double price, String describe, String img) {
        this.IDsu = IDsu;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.describe = describe;
        this.img = img;
    }
    
    public Succulent(int IDsu, String name, int quantity, double price, String describe, String img, String meaning, String grow) {
        this.IDsu = IDsu;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.describe = describe;
        this.img = img;
        this.meaning = meaning;
        this.grow = grow;
    }

    public String getMeaning() {
        return meaning;
    }

    public void setMeaning(String meaning) {
        this.meaning = meaning;
    }

    public String getGrow() {
        return grow;
    }

    public void setGrow(String grow) {
        this.grow = grow;
    }

    public int getIDsu() {
        return IDsu;
    }

    public void setIDsu(int IDsu) {
        this.IDsu = IDsu;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Succulent{" + "IDsu=" + IDsu + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", describe=" + describe + ", img=" + img + ", meaning=" + meaning + ", grow=" + grow + '}';
    }

    
}
