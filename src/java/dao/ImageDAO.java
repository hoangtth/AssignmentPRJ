/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Image;

/**
 *
 * @author Admin
 */
public class ImageDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Image> getImagesByProductId(int productId) {
        try {
            String query = "Select * from image where productId=?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();

            List<Image> list = new ArrayList<>();
            while (rs.next()) {
                Image I = new Image(rs.getInt(1), rs.getInt(2), rs.getString(3));
                list.add(I);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }
    
}
