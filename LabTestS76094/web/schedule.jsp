<%-- 
    Document   : schedule
    Created on : 16 Jun 2026, 2:20:16 PM
    Author     : MP2-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.lab.bean.SessionBean"%>
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Dashboard</title>
    </head>
    <body>
        <h1 style="color: #8e44ad">Schedule Dashboard</h1>

        <table border="1" cellpadding="8" cellspacing="0" width="1000px">
            <thead>
                <tr>
                    <th>Session ID</th>
                    <th>Student Name</th>
                    <th>Branch Location</th>
                    <th>Lesson Type</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<SessionBean> sessionList = (List<SessionBean>) request.getAttribute("sessionList");
                    if (sessionList != null) {
                        for (SessionBean s : sessionList) {
                %>
                <tr>
                    <td><%= s.getSession_id() %></td>
                    <td><%= s.getStudent_name() %></td>
                    <td><%= s.getBranch_location() %></td>
                    <td><%= s.getLesson_type() %></td>
                    <td><%= s.getStatus() %></td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </body>
</html>

<%@ include file="footer.jsp" %>