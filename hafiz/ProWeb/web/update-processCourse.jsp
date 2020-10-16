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

 
 String idstud = request.getParameter("idstud");
 String sesi = request.getParameter("sesi");
 String skill=request.getParameter("skill");
 String kelas=request.getParameter("kelas");
 String date=request.getParameter("date");


 
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "UPDATE student SET sesi=? ,skill= ?, kelas=?, date=?  WHERE idstud = ?";


 stmt = conn.prepareStatement(sql);
 stmt.setString(1, sesi);
 stmt.setString(2, skill);
 stmt.setString(3, kelas);
 stmt.setString(4, date);
 stmt.setString(5, idstud);

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
 String sql = "SELECT * FROM student WHERE idstud = ?";
 stmt = conn.prepareStatement(sql);
 stmt.setString(1, idstud);
 rs = stmt.executeQuery();
 rs.next();
 } catch (Exception e) {
 e.printStackTrace();
 }
%>

        <h1><font color="Red">Your UpdateSuccesfull </font></h1>
<div class="container">
          <button class="btn btn1"><a href="customer/index.jsp?idstud=<%=rs.getString("idstud")%>">Kembali</a></button>
</div>
        </body>
</html>