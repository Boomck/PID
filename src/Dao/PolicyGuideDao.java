package Dao;

import Entity.PolicyGuide;

import java.sql.*;
import java.util.ArrayList;

public class PolicyGuideDao extends SQLbean {
    public ArrayList<PolicyGuide> selectpolicyguide()
    {
        String sql = "select * from policy_guide";
        Connection conn = getConn();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<PolicyGuide> policyGuideArrayList = new ArrayList<PolicyGuide>();
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next())
            {
                PolicyGuide policyGuide = new PolicyGuide();
                policyGuide.setTitle_p(rs.getString("title_p"));
                policyGuide.setText_p(rs.getString("text_p"));
                policyGuide.setImagepath_p(rs.getString("imagepath_p"));
                policyGuide.setDate_p(rs.getString("date_p"));
                policyGuideArrayList.add(policyGuide);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConn(conn,pstmt,rs);
        }
        return policyGuideArrayList;
    }
}
