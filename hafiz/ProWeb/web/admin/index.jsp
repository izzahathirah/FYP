<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
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
 Statement stmt = null;
 ResultSet rs = null;
%>
 
<!DOCTYPE html>
<html>
<title>Admin</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="../css/Table.css">


<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}

input[type=text], input[type=password] ,input[type=email]{
  width: 70%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 17px;
  padding: 13px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
<%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM admin ORDER BY nama";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %> 
      <div class="w3-white w3-text-grey w3-card-4">
          
        <div class="w3-display-container">
            <button class="button" style="vertical-align:middle"><span><a href="../logout.jsp"><img src="../img/logout.png"  width="40" height="40">Logout</a></span></button>
          <img src="../img/gambarpelajar.jpg" style="width:100%" alt="Avatar">
          <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2><%=rs.getString("nama")%></h2>
          </div>
        </div>
        <div class="w3-container">
            <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/beg.png"  width="30" height="30">&nbsp;Admin/Designer</p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/live.png"  width="30" height="30">&nbsp;<%=rs.getString("alamat")%></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/email.png"  width="30" height="30">&nbsp;<%=rs.getString("email")%></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/call.png"  width="30" height="30">&nbsp;<%=rs.getString("no_tel")%></p>
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i><img src="../img/skill.png"  width="30" height="30">&nbsp;Skills</b</p>
          <p>Adobe Photoshop</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
          </div>
          <p>Photography</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
              <div class="w3-center w3-text-white">80%</div>
            </div>
          </div>
          <p>Illustrator</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
          </div>
          <p>Media</p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
          </div>
          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i><img src="../img/bahasa.png"  width="30" height="30">&nbsp;Languages</b></p>
          <p>C++</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
          </div>
          <p>Jsp</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:70%"></div>
          </div>
          <p>Phyton</p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:65%"></div>
          </div>
          <br>
        </div>
          <hr>
       
<%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
     

 
 <%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM staff ORDER BY idstaff";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
    <div class="w3-container">
        <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i><img src="../img/student.png"  width="50" height="50">&nbsp;Profile Staff</b>
            <a href="../updateprocessAdmin_staff.jsp?idstaff=<%=rs.getString("idstaff")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/kemaskini.png"  width="40" height="40">kemaskini</a></p>
        <button class="w3-bar-item w3-button w3-hover-red"><a href="../deleteStaff.jsp?idstaff=<%=rs.getString("idstaff")%>"><img src="../img/delete.png" height="30px" width="30px"></a></button>
        <hr>
        <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/beg.png"  width="30" height="30">&nbsp;<%=rs.getString("jawatan")%></p>
        <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/booking.png"  width="30" height="30">&nbsp;<%=rs.getString("nama")%></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/live.png"  width="30" height="30">&nbsp;<%=rs.getString("alamat")%></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/email.png"  width="30" height="30">&nbsp;<%=rs.getString("email")%></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/call.png"  width="30" height="30">&nbsp;<%=rs.getString("no_tel")%></p>
          <hr>
        </div>     
 <%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
 <center>
 <form action="../processRegister-Staff.jsp" methos="post">
     <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i><img src="../img/student.png"  width="50" height="50">&nbsp;Tambah Staff</b></p>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/profile.png"  width="30" height="30">&nbsp;Username:</p>
     <input type="text" name="username" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/pass.png"  width="30" height="30">&nbsp;Password:</p>
     <input type="text" name="password" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/name.png"  width="30" height="30">&nbsp;Name:</p>
     <input type="text" name="nama" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/email.png"  width="30" height="30">&nbsp;Email:</p>
     <input type="email" name="email" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/call.png"  width="30" height="30">&nbsp;Contact no:</p>
     <input type="text" name="no_tel" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/beg.png"  width="30" height="30">&nbsp;Jawatan:</p>
     <input type="text" name="jawatan" required>
     
     <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><img src="../img/address.png"  width="30" height="30">&nbsp;Address:</p>
     <input type="text" name="alamat" required>
     <hr>
     
     <button type="submit" class="button" style="vertical-align:middle"><span>Register Staff</span></button>
 </form>
 </center>   
     
    </div>
    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">
        <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><img src="../img/report.png"  width="40" height="40">Aduan Terkini Berkenaan Kamsis</h2>
       
<%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM aduan ORDER BY idaduan";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
      <div class="w3-container w3-card w3-white w3-margin-bottom">
          <button class="w3-bar-item w3-button w3-hover-red"><a href="../deleteAduan.jsp?idaduan=<%=rs.getString("idaduan")%>"><img src="../img/delete.png" height="30px" width="30px"></a></button>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=rs.getString("namestud")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><img src="../img/calender.png"  width="30" height="30">&nbsp;<%=rs.getString("kadstud")%>-<span class="w3-tag w3-teal w3-round">Current</span></h6>
          <p><%=rs.getString("aduanstud")%></p>
          <hr>
        </div>
        
      </div>
        
<%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
        </div>
   
        
    
        <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><img src="../img/forget.png"  width="40" height="40">Forget Password User</h2>
       
<%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM forget ORDER BY id";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
      <div class="w3-container w3-card w3-white w3-margin-bottom">
          <button class="w3-bar-item w3-button w3-hover-red"><a href="../deleteForget.jsp?id=<%=rs.getString("id")%>"><img src="../img/delete.png" height="30px" width="30px"></a></button>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><img src="../img/profile.png"  width="30" height="30">&nbsp;<%=rs.getString("name")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><img src="../img/mail.png"  width="30" height="30">&nbsp;<%=rs.getString("email")%>-<span class="w3-tag w3-teal w3-round">Current</span></h6>
          <hr>
        </div>
        
      </div>
        
<%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
        </div>
    
        
        
  
      <div class="w3-container w3-card w3-white">
 <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><img src="../img/student.png"  width="60" height="60">&nbsp;Maklumat Pelajar</h2>         
<%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 stmt = conn.createStatement();
 String sql = "SELECT * FROM student ORDER BY idstud";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>

 
 <div class="tbl-header">
   
  
  
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="2">
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
        <td><%=rs.getString("nama")%></td>
    </tr>
    <tr>
        <th>No.Ic</th>
        <td><%=rs.getString("ic")%></td>
    </tr>
    <tr>
        <th>No.Matrik</th>
        <td><%=rs.getString("kadmatrik")%></td>
    </tr>
    <tr>
        <th>No.Tel</th>
        <td><%=rs.getString("notel")%></td>
    </tr>
    <tr>
        <th>Jantina</th>
        <td><%=rs.getString("jantina")%></td>
    </tr>
    <tr>
        <th>Bangsa</th>
        <td><%=rs.getString("bangsa")%></td>
    </tr>
        <th>Course</th>
        <td><%=rs.getString("kos")%></td>
    <tr>
        <th>Semester</th>
        <td><%=rs.getString("sem")%></td>
    </tr>
      </thead>
       <a href="../update-processAdmin_stud.jsp?idstud=<%=rs.getString("idstud")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/kemaskini.png"  width="40" height="40">kemaskini</a>
       <a href="../deleteStud.jsp?idstud=<%=rs.getString("idstud")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-red"><img src="../img/delete.png"  width="40" height="40">delete</a>
    </table>
  </div>
</div>
       <hr>
<%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
        
      </div>
 
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>SISTEM PENGURUSAN KAMSIS</p>
 
  <p>CREATED by <b>HAFIZ</b> </p>
</footer>

</body>
</html>
