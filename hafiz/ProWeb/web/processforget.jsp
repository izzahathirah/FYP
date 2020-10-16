<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String username = "root";
 String password = "";
 Connection conn = null;
 PreparedStatement stmt = null;
 String name = request.getParameter("name");
 String email = request.getParameter("email");

 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "INSERT INTO forget VALUES (null, ?, ? )";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, name);
 stmt.setString(2, email);
 stmt.executeUpdate();
 response.sendRedirect("./");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>