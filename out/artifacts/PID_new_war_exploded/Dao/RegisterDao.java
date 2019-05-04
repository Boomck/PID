package Dao;

import Entity.User_c;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao extends SQLbean {
    public int insertuser(User_c user)
    {
        String sql = "insert User_c(username,name,password,validation,valianswer,jurisdiction,avatar) values(?,?,?,?,?,0,?)";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        int row = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getName());
            pstmt.setString(3,user.getPassword());
            pstmt.setString(4,user.getValidation());
            pstmt.setString(5,user.getValianswer());
            pstmt.setString(6,user.getAvatar());
            row = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,null);
        }
        return row;
    }
}