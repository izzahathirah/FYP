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

 
 String idstaff= request.getParameter("idstaff");
 String nama   = request.getParameter("nama");
 String no_tel = request.getParameter("no_tel");
 String email  = request.getParameter("email");
 String alamat = request.getParameter("alamat");

 

 
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "UPDATE staff SET nama = ?, no_tel = ?, email = ?,alamat = ? WHERE idstaff = ?";


 stmt = conn.prepareStatement(sql);
 stmt.setString(1, nama);
 stmt.setString(2, no_tel);
 stmt.setString(3, email);
 stmt.setString(4, alamat);
 stmt.setString(5, idstaff);
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

<%
 try {
 Class.forName(driver);
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
 ResultSet rs = null;
 
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM staff WHERE idstaff = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstaff);
 rs = stmt.executeQuery();
 rs.next();
 } catch (Exception e) {
 e.printStackTrace();
 }
%>

<h1><font color="Red">Your Data has been Updated...</font></h1>
<div class="container">
<button class="btn btn1"><a href="staff/index.jsp?idstaff=<%=rs.getString("idstaff")%>">Kembali</a></button>
</div>
</body>
</html>