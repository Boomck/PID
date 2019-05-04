package Dao;

import Entity.User_c;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LoginDao extends SQLbean{
    ResultSet rs = null;
    public User_c Login(String username,String password)
    {
        String sql = "select * from User_c where username = ?";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            rs = pstmt.executeQuery();
            if (rs.next())
            {
                User_c user = new User_c();
                user.setUsername(rs.getString("username"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setValidation(rs.getString("validation"));
                user.setValianswer(rs.getString("valianswer"));
                user.setJurisdiction(rs.getInt("jurisdiction"));
                user.setMail(rs.getString("mail"));
                user.setPhone(rs.getString("phone"));
                user.setQqnumber(rs.getString("qqnumber"));
                user.setWechatnumber(rs.getString("wechatnumber"));
                user.setAvatar(rs.getString("avatar"));
                if (user.getPassword().equals(password))
                {
                    return user;
                }
                else
                {
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return null;
    }
    public int updateuser(String username,String name,String password,String mail,String phone,String qqnumber,String wechatnumber,String avatar){
        Connection conn = getConn();
        String sql = "update user_c set name=?,password=?,mail=?,phone=?,qqnumber=?,wechatnumber=?,avatar=? where username=?";
        PreparedStatement pstmt = null;
        int row = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,password);
            pstmt.setString(3,mail);
            pstmt.setString(4,phone);
            pstmt.setString(5,qqnumber);
            pstmt.setString(6,wechatnumber);
            pstmt.setString(7,avatar);
            pstmt.setString(8,username);
            row = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,null);
        }
        return row;
    }
    public int updateuser_withoutimg(String username,String name,String password,String mail,String phone,String qqnumber,String wechatnumber){
        Connection conn = getConn();
        String sql = "update user_c set name=?,password=?,mail=?,phone=?,qqnumber=?,wechatnumber=? where username=?";
        PreparedStatement pstmt = null;
        int row = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,password);
            pstmt.setString(3,mail);
            pstmt.setString(4,phone);
            pstmt.setString(5,qqnumber);
            pstmt.setString(6,wechatnumber);
            pstmt.setString(7,username);
            row = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,null);
        }
        return row;
    }
    public List<User_c> getemployeelist(){
        PreparedStatement pstmt = null;
        Connection conn=this.getConn();
        List<User_c> employeeList = new ArrayList<User_c>();
        try {
            pstmt=conn.prepareCall("{call select_employee()}");
            rs=pstmt.executeQuery();
            while(rs.next()) {
                User_c employee = new User_c();
                employee.setUsername(rs.getString("username"));
                employee.setName(rs.getString("name"));
                employee.setPassword(rs.getString("password"));
                employee.setValidation(rs.getString("validation"));
                employee.setValianswer(rs.getString("valianswer"));
                employee.setMail(rs.getString("mail"));
                employee.setPhone(rs.getString("phone"));
                employee.setQqnumber(rs.getString("qqnumber"));
                employee.setWechatnumber(rs.getString("wechatnumber"));
                employeeList.add(employee);
           }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,pstmt,rs);
        }
        return employeeList;
    }
    public List<User_c> getclientlist(){
        PreparedStatement pstmt = null;
        Connection conn=this.getConn();
        List<User_c> employeeList = new ArrayList<User_c>();
        try {
            pstmt=conn.prepareCall("{call select_client()}");
            rs=pstmt.executeQuery();
            while(rs.next()) {
                User_c employee = new User_c();
                employee.setUsername(rs.getString("username"));
                employee.setName(rs.getString("name"));
                employee.setPassword(rs.getString("password"));
                employee.setValidation(rs.getString("validation"));
                employee.setValianswer(rs.getString("valianswer"));
                employee.setMail(rs.getString("mail"));
                employee.setPhone(rs.getString("phone"));
                employee.setQqnumber(rs.getString("qqnumber"));
                employee.setWechatnumber(rs.getString("wechatnumber"));
                employeeList.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,pstmt,rs);
        }
        return employeeList;
    }
    public void update_user(String username,String name,String password,String validation,String valianswer,String mail,String phone,String qqnumber,String wechatnumber){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call update_user_c(?,?,?,?,?,?,?,?,?)}");
            cstmt.setString(1,username);
            cstmt.setString(2,name);
            cstmt.setString(3,password);
            cstmt.setString(4,validation);
            cstmt.setString(5,valianswer);
            cstmt.setString(6,mail);
            cstmt.setString(7,phone);
            cstmt.setString(8,qqnumber);
            cstmt.setString(9,wechatnumber);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void adduser(String username,String name,String password,String validation,String valianswer,int jurisdiction,String mail,String phone,String qqnumber,String wechatnumber){
        Connection conn = getConn();
        String sql = "insert user_c values(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.setString(2,name);
            pstmt.setString(3,password);
            pstmt.setString(4,validation);
            pstmt.setString(5,valianswer);
            pstmt.setInt(6,jurisdiction);
            pstmt.setString(7,mail);
            pstmt.setString(8,phone);
            pstmt.setString(9,qqnumber);
            pstmt.setString(10,wechatnumber);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
    }
    public void delete_user(String username){
        Connection conn = getConn();
        String sql = "delete user_c where username=?";
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
    }
    public User_c select_user(String username){
        String sql = "select * from user_c where username=?";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<User_c> UserList = new ArrayList<User_c>();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                User_c employee = new User_c();
                employee.setUsername(rs.getString("username"));
                employee.setName(rs.getString("name"));
                employee.setPassword(rs.getString("password"));
                employee.setValidation(rs.getString("validation"));
                employee.setValianswer(rs.getString("valianswer"));
                employee.setMail(rs.getString("mail"));
                employee.setPhone(rs.getString("phone"));
                employee.setQqnumber(rs.getString("qqnumber"));
                employee.setWechatnumber(rs.getString("wechatnumber"));
                return employee;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return null;
    }
}
