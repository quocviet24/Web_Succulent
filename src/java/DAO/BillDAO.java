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
import Object.Bill;
import Object.Order;
/**
 *
 * @author admin
 */
public class BillDAO extends DBContext {
    
    private static PreparedStatement ps;
    private static ResultSet rs;
    private static String xSql;
    
    public void addBill(Bill x) {
        xSql = "Insert into Bill values(?,?,?,?);";
        try {
            ps = connection.prepareStatement(xSql);
            ps.setString(1, x.getUsername());
            ps.setInt(2, x.getIDSu());
            ps.setInt(3, x.getQuantity());
            ps.setDouble(4, x.getPrice());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void addOrder(Order x) {
        xSql = "Insert into Orders values(?,?,?,?);";
        try {
            ps = connection.prepareStatement(xSql);
            ps.setString(1, x.getUsername());
            ps.setInt(2, x.getIDSu());
            ps.setInt(3, x.getQuantity());
            ps.setDouble(4, x.getPrice());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
     public List<Bill> getBillByUser(String username) {
        List<Bill> list = new ArrayList<>();
        xSql = "select * from Bill where Username = '" + username + "'";
        String name;
        int ID, quantity;
        double price;
        Bill or = null;
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                name = rs.getString("Username");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                price = rs.getDouble("Price");
                or = new Bill(username, ID, quantity, price);
                list.add(or);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (list);
    }
    
    public List<Order> getOrderByUser(String username) {
        List<Order> list = new ArrayList<>();
        xSql = "select * from Orders where Username = '" + username + "'";
        String name;
        int ID, quantity;
        double price;
        Order or = null;
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                name = rs.getString("Username");
                ID = rs.getInt("IDSu");
                quantity = rs.getInt("Quantity");
                price = rs.getDouble("Price");
                or =new Order(username, ID, quantity, price);
                list.add(or);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (list);
    }
    
    public void DeleteSucculent(String id, String username){
        xSql = "delete from Orders where IDSu=? AND Username = ?";
     try {
        ps = connection.prepareStatement(xSql);
        ps.setString(1, id);
        ps.setString(2, username);
        ps.executeUpdate();
        //con.commit();
        ps.close();
     }
     catch(Exception e) {
        e.printStackTrace();
     }
    }
    
    public void DeleteSucculent(int id, String username){
        xSql = "delete from Orders where IDSu=? AND Username = ?";
     try {
        ps = connection.prepareStatement(xSql);
        ps.setInt(1, id);
        ps.setString(2, username);
        ps.executeUpdate();
        //con.commit();
        ps.close();
     }
     catch(Exception e) {
        e.printStackTrace();
     }
    }
    
    public void updateQuantity(int quantity, String id, String username) {
     xSql = "update Orders set Quantity= ? where IDSu = ? AND Username = ?";
     try {      
        ps = connection.prepareStatement(xSql);
        ps.setInt(1, quantity);
        ps.setString(2, id);
        ps.setString(3, username);
        ps.executeUpdate();
        ps.close();
     }
      catch(Exception e) {
        e.printStackTrace();
      }
  }
    
    public static void main(String[] args) {
        BillDAO d = new BillDAO();
        d.updateQuantity(4, "4", "adminViet");
        
    }
}
