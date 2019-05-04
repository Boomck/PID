package Dao;

import Entity.Evaluate;
import Entity.FriendsStory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BranchOfStoryDao extends SQLbean{
    public FriendsStory selectbranchofstory(String title){
        String sql = "select * from friends_story where title_f = ?";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,title);
            rs = pstmt.executeQuery();
            if (rs.next())
            {
                FriendsStory friendsStory = new FriendsStory();
                friendsStory.setTitle_f(rs.getString("title_f"));
                friendsStory.setText_f(rs.getString("text_f"));
                friendsStory.setImagepath_f(rs.getString("imagepath_f"));
                friendsStory.setDate_f(rs.getString("date_f"));
                friendsStory.setLink_f(rs.getString("link_f"));
                friendsStory.setSource_f(rs.getString("source_f"));
                return friendsStory;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return null;
    }
    public List<Evaluate> selectevalute(String title)
    {
        String sql = "select * from evaluate where title_e = ? order by id DESC";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Evaluate> evaluateList = new ArrayList<Evaluate>();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,title);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                Evaluate evaluate = new Evaluate();
                evaluate.setTitle_e(rs.getString("title_e"));
                evaluate.setText_e(rs.getString("text_e"));
                evaluate.setUsername(rs.getString("username"));
                evaluate.setName(rs.getString("name"));
                evaluate.setDate_e(rs.getString("date_e"));
                evaluate.setAvatar(rs.getString("avatar"));
                evaluateList.add(evaluate);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return evaluateList;
    }
}
