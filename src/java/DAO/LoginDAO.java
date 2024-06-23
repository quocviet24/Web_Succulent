/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Object.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class LoginDAO extends DBContext {

    private static PreparedStatement ps;
    private static ResultSet rs;
    private static String xSql;

    public LoginDAO() {
    }

    public Account checkAccount(String username, String password) {
        String sql = "select * from Accounts where Username=? and Password=? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getString("Username"),
                        rs.getString("Password"),
                        rs.getInt("role"));
                return a;
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void register(Account x) {
        xSql = "insert into Accounts (Username,Password,Role) values (?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setString(1, x.getUsername());
            ps.setString(2, x.getPassword());
            ps.setInt(3, x.getRole());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
   
    public void changePass(String newPass, String username) {
        xSql = "UPDATE Accounts SET Password = ? WHERE Username = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setString(1, newPass);
            ps.setString(2, username);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deleteAccount(String username) {
        xSql = "DELETE Accounts WHERE Username = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(xSql);
            ps.setString(1, username);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Account> getAllAcount() {
        List<Account> t = new ArrayList<>();
        xSql = "select * from Accounts";
        try {
            ps = connection.prepareStatement(xSql);
            rs = ps.executeQuery();
            String xName, xPass;
            int xRole;
            Account x;
            while (rs.next()) {
                xName = rs.getString("Username");
                xPass = rs.getString("Password");
                xRole = rs.getInt("Role");
                x = new Account(xName, xPass, xRole);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public boolean checkExit(String username) {
        LoginDAO l = new LoginDAO();
        List<Account> list = l.getAllAcount();
        for (Account account : list) {
            if (account.getUsername().equals(username)) {
                return true;
            }
        }
        return false;
    }
    
    public boolean checkExit(Account x) {
        LoginDAO l = new LoginDAO();
        List<Account> list = l.getAllAcount();
        for (Account account : list) {
            if (account.getUsername().equals(x.getUsername()) && account.getPassword().equals(x.getPassword())) {
                return true;
            }
        }
        return false;
    }
//    
//    public static void main(String[] args) {
//        LoginDAO l = new LoginDAO();
//        System.out.println(l.checkExit("adminhViet"));
//    }

//
//    public Account getUser(String xName, String xPass) {
//        xSql = "select * from Accounts where Username = ? and Password = ?";
//
//        String xRole;
//        Account x = null;
//        try {
//            ps = connection.prepareStatement(xSql);
//            ps.setString(1, xName);
//            ps.setString(2, xPass);
//            rs = ps.executeQuery();
//
//            if (rs.next()) {
//                xRole = rs.getString("Role");
//                x = new Account(xName, xPass, xRole);
//            } else {
//                x = null;
//            }
//            rs.close();
//            ps.close();
//        } catch (Exception e) {
//        }
//        return (x);
//    }
}
