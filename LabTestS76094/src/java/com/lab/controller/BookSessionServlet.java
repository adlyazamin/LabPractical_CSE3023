/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

import com.lab.bean.SessionBean;
import com.lab.dao.SessionDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BookSessionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String studentName = request.getParameter("student_name");
        String branchLocation = request.getParameter("branch_location");
        String lessonType = request.getParameter("lesson_type");

        SessionBean session = new SessionBean();
        session.setStudent_name(studentName);
        session.setBranch_location(branchLocation);
        session.setLesson_type(lessonType);
        session.setStatus("Booked");

        try {
            SessionDAO dao = new SessionDAO();
            dao.bookSession(session);
        } catch (SQLException e) {
            throw new ServletException("Database error while booking session", e);
        }

        response.sendRedirect("ScheduleServlet");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("book_session.jsp");
    }

    @Override
    public String getServletInfo() {
        return "BookSessionServlet";
    }
}

