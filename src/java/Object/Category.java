/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Object;

/**
 *
 * @author admin
 */
public class Category {
    private int idc;
    private String name;

    public Category() {
    }

    public Category(int idc, String name) {
        this.idc = idc;
        this.name = name;
    }

    public int getIdc() {
        return idc;
    }

    public void setIdc(int idc) {
        this.idc = idc;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" + "idc=" + idc + ", name=" + name + '}';
    }

    
    
}
