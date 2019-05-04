package Dao;

import Entity.Evaluate;
import Entity.FriendsStory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EvaluateDao extends SQLbean {
    ResultSet rs = null;
    public List<Evaluate> selectevaluate(String username){
        String sql = "select * from evaluate where username =? order by id DESC";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Evaluate> evaluateList = new ArrayList<Evaluate>();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,username);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                Evaluate evaluate = new Evaluate();
                evaluate.setId(rs.getInt("id"));
                evaluate.setTitle_e(rs.getString("title_e"));
                evaluate.setUsername(rs.getString("username"));
                evaluate.setName(rs.getString("name"));
                evaluate.setText_e(rs.getString("text_e"));
                evaluate.setDate_e(rs.getString("date_e"));
                evaluateList.add(evaluate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return evaluateList;
    }
    public int insertevaluate(Evaluate evaluate){
        String sql = "insert evaluate values(?,?,?,?,getdate(),?)";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int row = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,evaluate.getTitle_e());
            pstmt.setString(2,evaluate.getUsername());
            pstmt.setString(3,evaluate.getName());
            pstmt.setString(4,evaluate.getText_e());
            pstmt.setString(5,evaluate.getAvatar());
            row = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return row;
    }
    public List<Evaluate> getevaluate(){
        String sql = "select * from evaluate";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Evaluate> evaluateList = new ArrayList<Evaluate>();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                Evaluate evaluate=new Evaluate();
                evaluate.setId(rs.getInt("id"));
                evaluate.setTitle_e(rs.getString("title_e"));
                evaluate.setUsername(rs.getString("username"));
                evaluate.setName(rs.getString("name"));
                evaluate.setText_e(rs.getString("text_e"));
                evaluate.setDate_e(rs.getString("date_e"));
                evaluateList.add(evaluate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return evaluateList;
    }
    public void destoryevaluate(int id){
        Connection conn = getConn();
        String sql = "delete evaluate where id=?";
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
    }
    public int deleteevalueate(int id){
        String sql = "delete from evaluate where id = ?";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        int row = 0;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            row = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,null);
        }
        return row;
    }
}
