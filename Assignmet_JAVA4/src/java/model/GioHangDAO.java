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
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell-lt
 */
public class GioHangDAO {
    Connection conn = null;
    PreparedStatement pre1, pre2, pre3, pre4;
    ConnectDB con = new ConnectDB();

    public int addGioHang(GioHang gh) {
        conn = new ConnectDB().getConnect();
        try {
            pre1 = conn.prepareStatement("INSERT INTO `giohang` (`Username`, `MaSP`, `SoLuong`) VALUES (?, ?, ?);");
            pre1.setString(1, gh.getUsername());
            pre1.setString(2, gh.getMaSPgh());
            pre1.setInt(3, gh.getSoLuong());
            if (pre1.executeUpdate() == 1) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(GioHangDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public List<GioHang> getAllGioHang() throws ParseException, SQLException {
        List<GioHang> listsp = new ArrayList<>();
        conn = con.getConnect();
        Statement sm;
        try {
            sm = conn.createStatement();
            ResultSet rs = sm.executeQuery("SELECT `Username`, giohang.`MaSP`, `TenSP`, giohang.`SoLuong`, `Gia` FROM `giohang` INNER JOIN sanpham ON sanpham.MaSP=giohang.MaSP");
            while (rs.next()) {
                GioHang sp = new GioHang(rs.getString(1), rs.getString(2), rs.getInt(3));
                listsp.add(sp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SanPhamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        return listsp;
    }

    public int delGioHang(String maSP) {
        conn = new ConnectDB().getConnect();
        try {
            pre3 = conn.prepareStatement("DELETE FROM `giohang`");
            pre3.setString(1, maSP);
            if (pre3.executeUpdate() != 0) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(GioHangDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return -1;
    }


    public Vector getGioHangByID(String id) {
        Vector kq = new Vector();
        conn = con.getConnect();
        try {
            pre2 = conn.prepareStatement("SELECT * FROM `giohang` WHERE `MaSP`=?");
            pre2.setString(1, id);
            ResultSet rs = pre2.executeQuery();
            while (rs.next()) {
                kq.add(rs.getString(1));
                kq.add(rs.getString(2));
            }
            rs.close();
            pre2.close();
        } catch (SQLException ex) {
            Logger.getLogger(GioHangDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kq;
    }

    public static void main(String[] args) {
        GioHangDAO ghDAO = new GioHangDAO();
        GioHang gh = new GioHang("SyHoang", "SP01", 1);
        System.out.println(ghDAO.addGioHang(gh));
    }
    
}
