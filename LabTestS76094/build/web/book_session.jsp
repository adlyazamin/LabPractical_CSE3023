<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:19:56 PM
    Author     : MP2-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book a Session</title>
    </head>
    <body>
        <h1 style="color: #8e44ad;">Book Training Session</h1>

        <form method="POST" action="BookSessionServlet">
            <div>
                <label>Student Name:</label>
                <br>
                <input style="width: 99%; height: 20px; border-radius: 4px;" type="text" name="student_name" required />
            </div>
            <br>
            <div>
                <label>Branch Location:</label>
                <br>
                <select style="width: 100%; height: 25px; border-radius: 4px;" name="branch_location" required>
                    <option value="">-- Select a Branch --</option>
                    <option value="Kuala Lumpur">Kuala Lumpur</option>
                    <option value="Penang">Penang</option>
                    <option value="Johor Bahru">Johor Bahru</option>
                    <option value="Kuala Terengganu">Kuala Terengganu</option>
                    <option value="Kuching">Kuching</option>
                    <option value="Kota Kinabalu">Kota Kinabalu</option>
                </select>
            </div>
            <br>
            <div>
                <label>Lesson Type:</label>
                <br>
                <select style="width: 100%; height: 25px; border-radius: 4px;" name="lesson_type" required>
                    <option value="">-- Select a Lesson Type --</option>
                    <option value="Manual Car">Manual Car</option>
                    <option value="Automatic Car">Automatic Car</option>
                    <option value="Motorcycle">Motorcycle</option>
                    <option value="Manual Car + Motorcycle">Manual Car + Motorcycle</option>
                    <option value="Automatic Car + Motorcycle">Automatic Car + Motorcycle</option>
                </select>
            </div>
            <br>
            <button type="submit" style="color: white; background-color: #8e44ad; border: 5px; padding: 10px; border-radius: 5px">Book</button>
        </form>
    </body>
</html>

<%@ include file="footer.jsp" %>