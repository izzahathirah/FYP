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
 String idstud = request.getParameter("idstud");
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
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>kemaskini &nbsp;<%=rs.getString("username")%></title>
  <link rel="stylesheet" href="css/update.css">
 </head>
 <body>

  <div class="container">

 
  <h1 >Maklumat Pelajar</h1>
  
  <div class="tbl-header">
      <form action="update-processingAdmin_stud.jsp" method="post">
    <input type="hidden" name="idstud" value="<%=idstud%>">
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
        <th>No.Ic</th>
        <td><input type="text" name="ic" required
value="<%=rs.getString("ic")%>"></td>
    </tr>
    <tr>
        <th>No.Matrik</th>
        <td><input type="text" name="kadmatrik" required
value="<%=rs.getString("kadmatrik")%>"></td>
    </tr>
    <tr>
        <th>No.Tel</th>
        <td><input type="text" name="notel" required
value="<%=rs.getString("notel")%>"></td>
    </tr>
      <tr>
        <th>Alamat</th>
        <td><input type="text" name="alamat" required
value="<%=rs.getString("alamat")%>"></td>
    </tr>
     <tr>
        <th>negeri</th>
        <td><input type="text" name="negeri" required
value="<%=rs.getString("negeri")%>"></td>
    </tr>
    <tr>
        <th>poskod</th>
        <td><input type="text" name="poskod" required
value="<%=rs.getString("poskod")%>"></td>
    </tr>
     <tr>
        <th>Bandar</th>
        <td><input type="text" name="bandar" required
value="<%=rs.getString("bandar")%>"></td>
    </tr>
     <tr>
   
        <th>Jantina</th>
        <td><input type="radio" name="jantina"
                   value="Lelaki">Lelaki &nbsp;
            <input type="radio" name="jantina" value="Perempuan">Perempuan</td>
    </tr>
    <tr>
        <th>Agama</th>
        <td> 
            <input type="radio" name="agama" value="Islam">Islam &nbsp;
            <input type="radio" name="agama" value="Hindu">Hindu &nbsp;
            <input type="radio" name="agama" value="Budha">Budha &nbsp;
            <input type="radio" name="agama" value="Kristian">Kristian &nbsp;
            <input type="radio" name="agama" value="Lain-lain">Lain-lain</td>
    </tr>
    <tr>
        <th>Bangsa</th>
        <td><select name="bangsa" required >
        <option  selected hidden value="<%=rs.getString("bangsa")%>"><%=rs.getString("bangsa")%></option>
        <option value="Melayu">Melayu</option>
        <option value="Cina">Cina</option>
        <option value="India">India</option>
        <option value="Lain-lain">Lain-lain</option>
    </select></td>
    </tr>
        <th>Course</th>
        
        <td>  <select name="kos" required>
                <option selected hidden value="<%=rs.getString("kos")%>"><%=rs.getString("kos")%></option>
        <option value="DDT">DDT</option>
        <option value="DTK">DTK</option>
        <option value="DHF">DHF</option>
        <option value="DDV">DDV</option>
        <option value="DEP">DEP</option>
        <option value="DOP">DOP</option>
        <option value="DDS">DDS</option>
        <option value="DSK">DSK</option>
        <option value="DAT">DAT</option>
        <option value="DDK">DDK</option>
        <option value="DUP">DUP</option>
        <option value="DHM">DHM</option>
        
    </select></td>
    <tr>
        <th>Semester</th>
                <td><select  name="sem" required>
       <option selected hidden value="<%=rs.getString("sem")%>"><%=rs.getString("sem")%></option>
        <option value="1">1</option>
         <option value="2">2</option>
          <option value="3">3</option>
           <option value="4">4</option>
            <option value="5">5</option>
             <option value="6">6</option>
              <option value="7">7</option>
               <option value="8">8</option>
                <option value="9">9</option>
            </select>
</td>
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
