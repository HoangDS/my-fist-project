/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import common.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell-lt
 */
public class UserDAO {
    Connection conn = null;
    PreparedStatement pre1, pre2;
    ConnectDB con = new ConnectDB();

    public int addTaiKhoan(Users tk) {
        conn = new ConnectDB().getConnect();
        try {
            pre1 = conn.prepareStatement("INSERT INTO `taikhoan` (`Username`, `Password`, `ChucVu`) VALUES (?, ?, ?);");
            pre1.setString(1, tk.getUser());
            pre1.setString(2, tk.getPass());
            pre1.setString(3, tk.getChucVu());
            if (pre1.executeUpdate() == 1) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public Users login(String user, String pass) {
        Users ac = null;
        conn = con.getConnect();
        try {
            pre2 = conn.prepareStatement("SELECT * FROM `taikhoan` WHERE `Username` = ? AND `Password` = ?");
            pre2.setString(1, user);
            pre2.setString(2, pass);
            ResultSet rs = pre2.executeQuery();
            if (rs.next()) {
                ac = new Users(rs.getString(1), rs.getString(2), rs.getString(3));
            } else {
                ac = null;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ac;
    }

    public static void main(String[] args) {
        UserDAO ac = new UserDAO();
        System.out.println(ac.login("admin", "admin"));
    }
}
