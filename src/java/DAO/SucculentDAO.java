/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import static DAO.DBContext.connection;
import Object.Account;
import Object.Category;
import Object.Succulent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class SucculentDAO extends DBContext {

    private static PreparedStatement ps;
    private static ResultSet rs;
    private static String xSql;

    public List<Succulent> getAllSucculent() {
        List<Succulent> t = new ArrayList<>();
        xSql = "select * from Succulents";
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            String name, describe, img;
            int ID, quantity;
            double price;
            Succulent x;
            while (rs.next()) {
                
                name = rs.getString("NameSucculent");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                describe = rs.getString("Describe");
                price = rs.getDouble("Price");
                img = rs.getString("img");
                x = new Succulent(ID, name, quantity, price, describe, img);
                t.add(x);
                
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public Succulent getSucculentbyID(int idt) {
        xSql = "select * from Succulents where IDSu = ?";
        String name, describe, img, meaning, grow;
        int ID, quantity;
        double price;
        Succulent su = null;
        try {
            ps = connection.prepareStatement(xSql);
            ps.setInt(1, idt);
            rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("NameSucculent");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                describe = rs.getString("Describe");
                price = rs.getDouble("Price");
                img = rs.getString("img");
                meaning = rs.getString("meaning");
                grow = rs.getString("grow");
                su = new Succulent(ID, name, quantity, price, describe, img, meaning, grow);
                return su;
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (su);
    }
    
    public Succulent getSucculentbyID(String idt) {
        xSql = "select * from Succulents where IDSu = ?";
        String name, describe, img, meaning, grow;
        int ID, quantity;
        double price;
        Succulent su = null;
        try {
            ps = connection.prepareStatement(xSql);
            ps.setString(1, idt);
            rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("NameSucculent");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                describe = rs.getString("Describe");
                price = rs.getDouble("Price");
                img = rs.getString("img");
                meaning = rs.getString("meaning");
                grow = rs.getString("grow");
                su = new Succulent(ID, name, quantity, price, describe, img, meaning, grow);
                return su;
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (su);
    }
    
    public List<Succulent> getSucculentbyName(String a) {
        List<Succulent> list = new ArrayList<>();
        xSql = "SELECT * FROM Succulents WHERE NameSucculent COLLATE Vietnamese_CI_AS LIKE N'%" + a +"%'";
        String name, describe, img, meaning, grow;
        int ID, quantity;
        double price;
        Succulent su = null;
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("NameSucculent");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                describe = rs.getString("Describe");
                price = rs.getDouble("Price");
                img = rs.getString("img");
                meaning = rs.getString("meaning");
                grow = rs.getString("grow");
                su = new Succulent(ID, name, quantity, price, describe, img, meaning, grow);
                list.add(su);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (list);
    }

    public List<Category> getAllCategory() {
        List<Category> t = new ArrayList<>();
        xSql = "select * from Category";
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            String name;
            int ID;
            Category x;
            while (rs.next()) {
                name = rs.getString("category");
                ID = rs.getInt("IDC");
                x = new Category(ID, name);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }
    
    public List<Succulent> getSucculentByCategoryID(int idc) {
        xSql = "select * from Succulents where category = ?";
        String name, describe, img, meaning, grow;
        int ID, quantity;
        double price;
        List<Succulent> list = new ArrayList<>();
        Succulent su = null;
        try {
            ps = connection.prepareStatement(xSql);
            ps.setInt(1, idc);
            rs = ps.executeQuery();
            while(rs.next()) {
                name = rs.getString("NameSucculent");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                describe = rs.getString("Describe");
                price = rs.getDouble("Price");
                img = rs.getString("img");
                meaning = rs.getString("meaning");
                grow = rs.getString("grow");
                su = new Succulent(ID, name, quantity, price, describe, img, meaning, grow);
                list.add(su);
                
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (list);
    }

    public void addSucculent(Succulent x) {
        xSql = "INSERT INTO Succulents(NameSucculent, Quantity, Price, Describe, img, category, meaning,grow) VALUES (?,?,?,?,?,?,?,?);";
        try {
            ps = connection.prepareStatement(xSql);
            ps.setString(1, x.getName());
            ps.setInt(2, x.getQuantity());
            ps.setDouble(3, x.getPrice());
            ps.setString(4, x.getDescribe());
            ps.setString(5, x.getImg());
            ps.setInt(6, x.getCategory());
            ps.setString(7, x.getMeaning());
            ps.setString(8, x.getGrow());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void DeleteSucculent(int id){
        xSql = "delete from Succulents where IDSu=?";
     try {
        ps = connection.prepareStatement(xSql);
        ps.setInt(1, id);
        ps.executeUpdate();
        //con.commit();
        ps.close();
     }
     catch(Exception e) {
        e.printStackTrace();
     }
    }
    
    public void update(Succulent s) {
     xSql = "update Succulents set NameSucculent=?, Quantity=? , Price=? , Describe=?, img=?, category=?, meaning=?, grow=? where IDSU=?";
     try {      
        ps = connection.prepareStatement(xSql);
        ps.setString(1, s.getName());
        ps.setInt(2, s.getQuantity());
        ps.setDouble(3, s.getPrice());
        ps.setString(4, s.getDescribe());
        ps.setString(5, s.getImg());
        ps.setInt(6, s.getCategory());
        ps.setString(7, s.getMeaning());
        ps.setString(8, s.getGrow());
        ps.setInt(9,s.getIDsu());
        ps.executeUpdate();
        ps.close();
     }
      catch(Exception e) {
        e.printStackTrace();
      }
  }

    public static void main(String[] args) {
        SucculentDAO s = new SucculentDAO();
        List<Succulent> list = s.getAllSucculent();
        for (Succulent succulent : list) {
            System.out.println(succulent.toString());
        }
    }
}
