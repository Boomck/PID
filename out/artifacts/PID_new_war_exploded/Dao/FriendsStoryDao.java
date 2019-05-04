package Dao;

import Entity.FriendsStory;

import java.sql.*;
import java.util.ArrayList;

public class FriendsStoryDao extends SQLbean {
    ResultSet rs=null;
    public ArrayList<FriendsStory> selectfriendsstory()
    {
        String sql = "select * from friends_story";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<FriendsStory> friendsStoryArrayList = new ArrayList<FriendsStory>();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                FriendsStory friendsStory = new FriendsStory();
                friendsStory.setTitle_f(rs.getString("title_f"));
                friendsStory.setText_f(rs.getString("text_f"));
                friendsStory.setImagepath_f(rs.getString("imagepath_f"));
                friendsStory.setDate_f(rs.getString("date_f"));
                friendsStory.setSource_f(rs.getString("source_f"));
                friendsStoryArrayList.add(friendsStory);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return friendsStoryArrayList;
    }
    public FriendsStory selectfrinedstory_id(String title_f){
        Connection conn = getConn();
        CallableStatement cstmt=null;
        try {
            cstmt = conn.prepareCall("{call select_friend_id(?)}");
            cstmt.setString(1,title_f);
            rs = cstmt.executeQuery();
            //填空
            if (rs.next()) {
                FriendsStory friendsStory = new FriendsStory();
                friendsStory.setTitle_f(rs.getString("title_f"));
                friendsStory.setText_f(rs.getString("text_f"));
                friendsStory.setImagepath_f(rs.getString("imagepath_f"));
                friendsStory.setDate_f(rs.getString("date_f"));
                friendsStory.setSource_f(rs.getString("source_f"));
                return friendsStory;
            }//赋值
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,cstmt,rs);
        }
        return null;
    }
    public void addfriendsstory(String title_f,String text_f,String imagepath_f,String date_f,String source_f){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call insert_friends_story(?,?,?,?,?)}");
            cstmt.setString(1,title_f);
            cstmt.setString(2,text_f);
            cstmt.setString(3,imagepath_f);
            cstmt.setString(4,date_f);
            cstmt.setString(5,source_f);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void changefriendstory(String title_f,String text_f,String imagepath_f,String date_f,String source_f){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call change_friends_story(?,?,?,?,?)}");
            cstmt.setString(1,title_f);
            cstmt.setString(2,text_f);
            cstmt.setString(3,imagepath_f);
            cstmt.setString(4,date_f);
            cstmt.setString(5,source_f);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void changefriendstory_withoutimgae(String title_f,String text_f,String date_f,String source_f){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call change_friends_story_withoutim(?,?,?,?)}");
            cstmt.setString(1,title_f);
            cstmt.setString(2,text_f);
            cstmt.setString(3,date_f);
            cstmt.setString(4,source_f);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void delete_friendstory(String title_f){
            Connection conn=this.getConn();
            CallableStatement cstmt=null;
            try{
                cstmt=conn.prepareCall("{call delete_friend(?)}");
                cstmt.setString(1,title_f);
                cstmt.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                closeConn(conn,cstmt,rs);
            }
    }
}
