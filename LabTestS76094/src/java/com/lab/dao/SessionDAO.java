/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;

import com.lab.bean.SessionBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SessionDAO {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    private Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
        }
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
    }

    public void bookSession(SessionBean session) throws SQLException {
        String sql = "INSERT INTO Training_Sessions (student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";
        try (Connection conn = getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, session.getStudent_name());
            ps.setString(2, session.getBranch_location());
            ps.setString(3, session.getLesson_type());
            ps.setString(4, session.getStatus());
            ps.executeUpdate();
        }
    }

    public List<SessionBean> getAllSessions() throws SQLException {
        List<SessionBean> list = new ArrayList<>();
        String sql = "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";

        try (Connection conn = getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                SessionBean sb = new SessionBean();
                sb.setSession_id(rs.getInt("session_id"));
                sb.setStudent_name(rs.getString("student_name"));
                sb.setBranch_location(rs.getString("branch_location"));
                sb.setLesson_type(rs.getString("lesson_type"));
                sb.setStatus(rs.getString("status"));
                list.add(sb);
            }
        }

        return list;
    }
}

