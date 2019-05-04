package Dao;

import Entity.News;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NewsDao extends SQLbean {
    ResultSet rs=null;
    public List<News> selectnews()
    {
        String sql = "select * from news";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        List<News> newsList = new ArrayList<News>();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next())
            {
                News news = new News();
                news.setTitle_n(rs.getString("title_n"));
                news.setAbstract_n(rs.getString("abstract_n"));
                news.setImagepath_n(rs.getString("imagepath_n"));
                news.setDate_n(rs.getString("date_n"));
                news.setLink_n(rs.getString("link_n"));
                news.setSource_n(rs.getString("source_n"));
                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return newsList;
    }
    public void addnews(String title_n,String abstract_n,String imagepath_n,String date_n,String link_n,String source_n){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call insert_news(?,?,?,?,?,?)}");
            cstmt.setString(1,title_n);
            cstmt.setString(2,abstract_n);
            cstmt.setString(3,imagepath_n);
            cstmt.setString(4,date_n);
            cstmt.setString(5,link_n);
            cstmt.setString(6,source_n);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }

    }
    public News select_news_id(String title_n){
        {
            Connection conn = getConn();
            CallableStatement cstmt=null;
            try {
                cstmt = conn.prepareCall("{call select_new_id(?)}");
                cstmt.setString(1,title_n);
                rs = cstmt.executeQuery();
                //填空
                if (rs.next()) {
                    News news = new News();
                    news.setTitle_n(rs.getString("title_n"));
                    news.setAbstract_n(rs.getString("abstract_n"));
                    news.setImagepath_n(rs.getString("imagepath_n"));
                    news.setDate_n(rs.getString("date_n"));
                    news.setLink_n(rs.getString("link_n"));
                    news.setSource_n(rs.getString("source_n"));
                    return news;
                }//赋值
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                closeConn(conn,cstmt,rs);
            }
            return null;
        }
    }
    public void change_news(String title_n,String abstract_n,String imagepath_n,String date_n,String link_n,String source_n){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call change_news(?,?,?,?,?,?)}");
            cstmt.setString(1,title_n);
            cstmt.setString(2,abstract_n);
            cstmt.setString(3,imagepath_n);
            cstmt.setString(4,date_n);
            cstmt.setString(5,link_n);
            cstmt.setString(6,source_n);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void change_news_withoutimg(String title_n,String abstract_n,String date_n,String link_n,String source_n){
        CallableStatement cstmt=null;
        Connection conn=this.getConn();
        try {
            cstmt=conn.prepareCall("{call change_news_withoutimg(?,?,?,?,?)}");
            cstmt.setString(1,title_n);
            cstmt.setString(2,abstract_n);
            cstmt.setString(3,date_n);
            cstmt.setString(4,link_n);
            cstmt.setString(5,source_n);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
    public void delete_news(String title_n){
        Connection conn=this.getConn();
        CallableStatement cstmt=null;
        try{
            cstmt=conn.prepareCall("{call delete_news(?)}");
            cstmt.setString(1,title_n);
            cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConn(conn,cstmt,rs);
        }
    }
}
