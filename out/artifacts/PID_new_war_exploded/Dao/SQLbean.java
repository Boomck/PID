package Dao;

import java.sql.*;

public class SQLbean {
    Connection conn = null;
    String DRIVER_CLASS = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    String DRIVER_URL = "jdbc:sqlserver://localhost:1433;DatabaseName=pid";
    String USERNAME = "sa";
    String password = "123456";
    public Connection getConn(){
        try {
            Class.forName(DRIVER_CLASS);
            conn = DriverManager.getConnection(DRIVER_URL,USERNAME,password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public void closeConn(Connection conn, PreparedStatement pstmt, ResultSet rs){
        try {
            if (conn!=null)
            {
                conn.close();
            }
            if (pstmt!=null)
            {
                pstmt.close();
            }
            if (rs!=null)
            {
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
