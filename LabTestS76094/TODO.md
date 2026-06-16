# TODO - DriveSmart Training Sessions (LabTestS76094)

## Task 1: Database & Model Preparation
- [x] Create SQL script `drivesmart_db.sql` for database `drivesmart_db` and table `Training_Sessions`.
- [x] Implement `SessionBean.java` with required private fields, constructors, getters, setters.

## Task 2: Database Connection & DAO
- [x] Implement `SessionDAO.java` JDBC connection, `bookSession(SessionBean)`, and `getAllSessions()`.

## Task 3: Controller (Servlets)
- [x] Implement `BookSessionServlet.java` doPost() to read form params and call DAO, then redirect.
- [x] Implement `ScheduleServlet.java` doGet() to fetch sessions and forward to `schedule.jsp`.

## Task 4: View (JSP & UI)
- [x] Implement `book_session.jsp` form that posts to `BookSessionServlet`.
- [x] Implement `schedule.jsp` table that iterates over `sessionList` and displays sessions.

## Task 5: Landing Page Integration
- [x] Implement `header.html` static DriveSmart Academy header.
- [x] Implement `footer.jsp` with current server date/time using JSP expression.
- [x] Implement `index.jsp` using include directives for header/footer and add navigation links.

## Task 6: MVC & Submission
- [x] Verify no JSP contains raw SQL/JDBC.
- [ ] Verify Java packages/folder structure matches spec.
- [ ] Ensure project builds/runs and servlets route correctly.

