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
 ResultSet rs = null;
 String idstud = request.getParameter("idstud");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "DELETE FROM student WHERE idstud = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstud);
 stmt.executeUpdate();
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
<html><body bgcolor="khaki">

<h1><font color="Red">You are Sucessfully deleted user...</font></h1>

        <a href="admin/index.jsp">Go-Back To Home Page</a>

    </body>

</html>