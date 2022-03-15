/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Category;

public class AccountDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public Account CheckAccountExist(String username) {
        try {
            String query = "select * from Account where username=?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
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

    public void Register(Account a) {
        try {
            String sql = "INSERT INTO [ShoppingOnline].[dbo].[Account]\n"
                    + "           ([username]\n"
                    + "           ,[password]\n"
                    + "           ,[displayName]\n"
                    + "           ,[address]\n"
                    + "           ,[email]\n"
                    + "           ,[phone]\n"
                    + "           ,[role])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,'USER')";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ps.setString(2, a.getPassword());
            ps.setString(3, a.getDisplayName());
            ps.setString(4, a.getAddress());
            ps.setString(5, a.getEmail());
            ps.setString(6, a.getPhone());
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateAccount(int id, String name, String email, String phone, String address, String role) {
        try {
            String sql = "UPDATE [ShoppingOnline].[dbo].[Account]\n"
                    + "   SET [displayName] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[role] = ?\n"
                    + " WHERE id=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, role);
            ps.setInt(6, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountById(int id) {
        try {
            String query = "select * from Account where id=?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
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

    public void updateAccountAndPass(int id, String name, String email, String phone, String address, String role, String newPass) {
        try {
            String sql = "UPDATE [ShoppingOnline].[dbo].[Account]\n"
                    + "   SET [displayName] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[email] = ?\n"
                    + "      ,[phone] = ?\n"
                    + "      ,[role] = ?\n"
                    + "      ,[password] = ?\n"
                    + " WHERE id=?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, role);
            ps.setString(6, newPass);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void send(String to, String sub,
            String msg, final String user, final String pass) {
        //create an instance of Properties Class   
        Properties props = new Properties();

        /* Specifies the IP address of your default mail server
     	   for e.g if you are using gmail server as an email sever
           you will pass smtp.gmail.com as value of mail.smtp host. 
           As shown here in the code. 
           Change accordingly, if your email id is not a gmail id
         */
        props.put("mail.smtp.host", "smtp.gmail.com");
        //below mentioned mail.smtp.port is optional
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        /* Pass Properties object(props) and Authenticator object   
           for authentication to Session instance 
         */
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {

            /* Create an instance of MimeMessage, 
 	      it accept MIME types and headers 
             */
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setContent(msg, "text/html");

            /* Transport class is used to deliver the message to the recipients */
            Transport.send(message);

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String subject = "Your order has been processing.";
        String message = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h3 style=\"color: blue;\">Your order has been processing.</h3>\n"
                + "    <div>Full Name :Le Hong Quan</div>\n"
                + "    <div>Phone : 0866823499</div>\n"
                + "    <div>address : Vinh Hung, Vinh Loc, Thanh Hoa</div>\n"
                + "    <h3 style=\"color: blue;\">Thank you very much!</h3>\n"
                + "\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        AccountDAO.send("bibilove9876@gmail.com", subject, message, "hoangtthhe153437@fpt.edu.vn", "huyhoang");
        //vd để gửi email tới "dich@gmail.com" bằng email "nguon@gmail.com" pass "123456"
//        SendMail.send("dich@gmail.com", subject, message, "nguon@gmail.com", "123456");
    }

}
