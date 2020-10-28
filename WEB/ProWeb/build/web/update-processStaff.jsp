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
 <style>
     h1{
  font-size: 30px;
  color: 330a00;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,150,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: bold;
  font-size: 18px;
  color: #330a00;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 750;
  font-size: 16px;
  color:  #802b00;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 15px;
  font-family: arial;
  
}
.made-with-love i {
  font-style: normal;

  font-size: 20px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}
 </style>
 </head>
 <body>

 <div class="tbl-header">
 
     <h1 class="w3-xxxlarge w3-text-red">Maklumat &nbsp;<%=rs.getString("jawatan")%></h1>
  
  <div class="tbl-header">
      <form action="update-processingStaff.jsp?idstaff=<%=rs.getString("idstaff")%>" method="post">
    <input type="hidden" name="idstud" value="<%=idstaff%>">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
      <tr>
        <th>Username</th>
        <td><%=rs.getString("username")%></td>  
      </tr>
      <tr>
        <th>Password</th>
        <td><%=rs.getString("password")%></td>  
      </tr>
      <tr>
        <th>Nama</th>
        <td><input type="text" name="nama" required
value="<%=rs.getString("nama")%>"></td>
    </tr>
    <tr>
        <th>No.Tel</th>
        <td><input type="text" name="no_tel" required
value="<%=rs.getString("no_tel")%>"></td>
    </tr>
    <th>Email</th>
        <td><input type="text" name="email" required
value="<%=rs.getString("email")%>"></td>
    </tr>
      <tr>
        <th>Alamat</th>
        <td><input type="text" name="alamat" required
value="<%=rs.getString("alamat")%>"></td>
    </tr>

    <tr><td colspan="2">
 <button type="submit">Simpan</button>
 </td></tr>
      </thead>
      
    </table></form>
  </div>
</div>

 <p><a href="staff/index.jsp?idstaff=<%=rs.getString("idstaff")%>">Kembali</a></p>

 </body>
</html>
