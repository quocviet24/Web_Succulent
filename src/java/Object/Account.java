/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Object;

/**
 *
 * @author admin
 */
public class Account {

    private String Username;
    private String Password;
    private int role;

    public Account(String Username, String Password, int role) {
        this.Username = Username;
        this.Password = Password;
        this.role = role;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    
    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public Account() {
    }

    @Override
    public String toString() {
        return "Account{" + "Username=" + Username + ", Password=" + Password + ", role=" + role + '}';
    }

}
