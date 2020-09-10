<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String user = "root";
 String pass = "";
 Connection conn = null;
 PreparedStatement stmt = null;

 
 String idstaff= request.getParameter("idstaff");
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String nama   = request.getParameter("nama");
 String jawatan   = request.getParameter("jawatan");
 String no_tel = request.getParameter("no_tel");
 String email  = request.getParameter("email");
 String alamat = request.getParameter("alamat");

 

 
 try {
 Class.forName(driver);
 conn = DriverManager.getConnection(connUrl + database, user, pass);
 String sql = "UPDATE staff SET username= ?, password = ?,nama = ?, no_tel = ?, email = ?,alamat = ? WHERE idstaff = ?";


 stmt = conn.prepareStatement(sql);
 stmt.setString(1, username);
 stmt.setString(2, password);
 stmt.setString(3, nama);
 stmt.setString(4, jawatan);
 stmt.setString(5, no_tel);
 stmt.setString(6, email);
 stmt.setString(7, alamat);

 stmt.executeUpdate();



 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }
%>

<html>
   
        <head>
          
            <link rel="stylesheet" href="css/update.css">
        </head>
        <body bgcolor="khaki">


        <h1><font color="Red">Staff Data has been Updated...</font></h1>
<div class="container">
    <button class="button" style="vertical-align:middle"><span><a href="admin/index.jsp">Kembali</a></span></button>
</div>
        </body>
</html>