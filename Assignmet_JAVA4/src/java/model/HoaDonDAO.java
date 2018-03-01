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
public class HoaDonDAO {
    Connection conn = null;
    PreparedStatement pre1, pre2, pre3, pre4;
    ConnectDB con = new ConnectDB();
    
    public int addHoaDon(HoaDon hoadon) {
        conn = new ConnectDB().getConnect();
        try {
            pre1 = conn.prepareStatement("INSERT INTO `hoadon` (`MaHoaDon`, `MaKhachHang`, `NgayLapHoaDon`, `TongTien`, `GhiChu`) VALUES (?, ?, ?, ?, ?);");
            pre1.setString(1, hoadon.getMaHD());
            pre1.setString(2, hoadon.getMaKH());
            pre1.setString(3, hoadon.getNgayLap());
            pre1.setFloat(4, hoadon.getTongTien());
             pre1.setString(5, hoadon.getGhiChu());
            if (pre1.executeUpdate() == 1) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public List<HoaDon> getAllHoaDon() throws ParseException, SQLException {
        List<HoaDon> listhd = new ArrayList<>();
        conn = con.getConnect();
        Statement sm;
        try {
            sm = conn.createStatement();
            ResultSet rs = sm.executeQuery("SELECT * FROM `hoadon`");
            while (rs.next()) {
                HoaDon nv = new HoaDon(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5));
                listhd.add(nv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        conn.close();
        return listhd;
    }
    
    public Vector getHoaDon(String id) {
        Vector kq = new Vector();
        conn = con.getConnect();
        try {
            pre2 = conn.prepareStatement("SELECT * FROM `hoadon` WHERE `MaHoaDon`=?");
            pre2.setString(1, id);
            ResultSet rs = pre2.executeQuery();
            while (rs.next()) {
                kq.add(rs.getString(1));
                kq.add(rs.getString(2));
                kq.add(rs.getString(3));
                kq.add(rs.getFloat(4));
                kq.add(rs.getString(5));
            }
            rs.close();
            pre2.close();
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kq;
    }
    
    public int updateHoaDon(HoaDon nv) throws SQLException {
        conn = new ConnectDB().getConnect();
        try {
            pre3 = conn.prepareStatement("UPDATE `hoadon` SET `MAKhachHang` = ?, `NgayLapHoaDon` = ?, `TongTien` = ?, `GhiChu` = ? WHERE `hoadon`.`MaHoaDon` = ?;");
            pre3.setString(1, nv.getMaKH());
            pre3.setString(2, nv.getNgayLap());
            pre3.setFloat(3, nv.getTongTien());
            pre3.setString(4, nv.getGhiChu());
            pre3.setString(5, nv.getMaHD());
            if (pre3.executeUpdate() == 1) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(KhachHangDAO.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
        return -1;
    }
    
    public int delHoaDon(String MaHD) {
        conn = new ConnectDB().getConnect();
        try {
            pre4 = conn.prepareStatement("DELETE FROM `hoadon` WHERE `hoadon`.`MaHoaDon` = ?");
            pre4.setString(1, MaHD);
            if (pre4.executeUpdate() != 0) {
                return 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(HoaDonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return -1;
    }
}
