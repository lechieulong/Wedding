/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Wed;

public class DAO {

    Connection conn = null; // bien connection ket noi sql sever
    PreparedStatement ps = null; // nem cau lenh query sang Sql server
    ResultSet rs = null; // nhan ket qua tra ve

    public List<Wed> getAllWed() {
        List<Wed> list = new ArrayList<>();
        String query = "select * from Wed";
        try {
            conn = new DBContext().getConnection(); //mo ketnoi voi sql 
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
//            
            while (rs.next()) {
                list.add(new Wed(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getInt(5), rs.getInt(6),
                        rs.getString(7), rs.getDate(8)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    // get 1 wedding by ID
    public Wed getWed(String id) {
         String query = "select * from Wed where wedID = ?";
        try {
            conn = new DBContext().getConnection(); //mo ketnoi voi sql 
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Wed(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getInt(5), rs.getInt(6),
                        rs.getString(7), rs.getDate(8));
            }
        } catch (Exception e) {

        }
        
        return null;
    }

    public static void main(String[] args) {
        DAO d = new DAO();
       Wed w = d.getWed("1");
        System.out.println(w);
    }

}
