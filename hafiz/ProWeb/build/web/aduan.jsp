<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String username = "root";
 String password = "";
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs=null;
 String namestud = request.getParameter("namestud");
 String kadstud = request.getParameter("kadstud");
 String aduanstud = request.getParameter("aduanstud");
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 
 String sql = "INSERT INTO aduan VALUES (null, ?, ?, ?)";
 stmt = conn.prepareStatement(sql);

 stmt.setString(1, namestud);
 stmt.setString(2, kadstud);
 stmt.setString(3, aduanstud);
 stmt.executeUpdate();
 
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>
<html>

        <head>
            <link rel="stylesheet" href="css/Button/style.css">
        </head>
        <body bgcolor="khaki">

        <h1><font color="Red">Your Data has been Updated...</font></h1>
   
        </body>

</html>

