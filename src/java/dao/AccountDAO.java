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
import model.Account;
import model.Category;

public class AccountDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public Account login(String username, String password) {
        try {
            String query = "select * from Account where username=? and password=?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = Account.builder()
                        .id(rs.getInt(1))
                        .username(rs.getString(2))
                        .password(rs.getString(3))
                        .displayName(rs.getString(4))
                        .address(rs.getString(5))
                        .email(rs.getString(6))
                        .phone(rs.getString(7))
                        .role(rs.getString(8)).build();
                return a;
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

}
