# TODO - DriveSmart Training Sessions (LabTestS76094)

## Task 1: Database & Model Preparation
- [x] Create SQL script `drivesmart_db.sql`
- [x] Implement `SessionBean.java`

## Task 2: Database Connection & DAO
- [x] Implement `SessionDAO.java` (JDBC connection + insert + retrieve)

## Task 3: Controller (Servlets) Development
- [x] Implement `BookSessionServlet.java` doPost()
- [x] Implement `ScheduleServlet.java` doGet() + forward

## Task 4: View (JSP & UI) Development
- [x] Implement `book_session.jsp` form
- [x] Implement `schedule.jsp` table iteration over `sessionList`

## Task 5: Landing Page Integration
- [x] Implement `header.html`
- [x] Implement `footer.jsp` with server date/time expression
- [ ] Fix `index.jsp` to follow include + navigation rules (currently still shows Hello World)

## Task 6: MVC Architecture & Submission Best Practices
- [ ] Verify no JSP contains raw SQL/JDBC (completed)
- [ ] Verify DB credentials/driver in `SessionDAO`

