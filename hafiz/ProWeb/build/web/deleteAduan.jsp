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
 String idaduan = request.getParameter("idaduan");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "DELETE FROM aduan WHERE idaduan = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idaduan);
 stmt.executeUpdate();
 response.sendRedirect("admin/index.jsp");
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>