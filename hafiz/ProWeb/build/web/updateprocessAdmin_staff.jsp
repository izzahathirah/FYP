<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%
 String driver = "com.mysql.jdbc.Driver";
 String connUrl = "jdbc:mysql://localhost:3306/";
 String database = "sistem";
 String username = "root";
 String password = "";
 try {
 Class.forName(driver);
 } catch (ClassNotFoundException e) {
 e.printStackTrace();
 }

 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 String idstaff = request.getParameter("idstaff");
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
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>kemaskini &nbsp;<%=rs.getString("username")%></title>
 <link rel="stylesheet" href="css/update.css">
 
 </head>
 <body>
 <div class="container">

 
  <h1 >Maklumat Staff</h1>
  
  <div class="tbl-header">
      <form action="update-processingAdmin_staff.jsp" method="post">
    <input type="hidden" name="idstaff" value="<%=idstaff%>">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
      <tr>
        <th>Username</th>
        <td><input type="text" name="username" required placeholder="<%=rs.getString("username")%>"></td>  
      </tr>
      <tr>
        <th>Password</th>
        <td><input type="password" name="password" id="myInput" required><input type="checkbox" onclick="myFunction()">Show Password</td>
       
      </tr>
      <tr>
        <th>Nama</th>
        <td><input type="text" name="nama" required
value="<%=rs.getString("nama")%>"></td>
    </tr>
    <tr>
        <th>Email</th>
        <td><input type="email" name="email" required
value="<%=rs.getString("email")%>"></td>
    </tr>
    <tr>
        <th>Jawatan</th>
        <td><input type="text" name="jawatan" required
value="<%=rs.getString("jawatan")%>"></td>
    </tr>
    <tr>
        <th>No.Tel</th>
        <td><input type="text" name="no_tel" required
value="<%=rs.getString("no_tel")%>"></td>
    </tr>
      <tr>
        <th>Alamat</th>
        <td><input type="text" name="alamat" required
value="<%=rs.getString("alamat")%>"></td>
    </tr>

    <tr><td colspan="2">
 <button type="submit" class="button" style="vertical-align:middle"><span>Simpan </span></button>
 </td></tr>
      </thead>
      
    </table></form>
  </div>

   
 <p><a href="admin/index.jsp">Kembali</a></p>
 </div>
 <script>
     function myFunction(){
         var x=
         document.getElementById("myInput");
         if(x.type==="password"){
             x.type="text";
         }
         else{
             x.type="password";
         }
     }
     </script>
 </body>
</html>
