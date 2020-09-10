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
<html lang="en">
<title> <%=rs.getString("nama")%></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/user.css">
<link rel="stylesheet" href="../css/Table.css">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Welcome<br><%=rs.getString("jawatan")%></b></h3>
  </div>
  <div class="w3-bar-block">
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/home.png"  width="40" height="40">Laman Utama</a> 
    <a href="#profile" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/profile.png"  width="40" height="40">Profile</a> 
    <a href="#pelajar" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/skill.png"  width="40" height="40">Maklumat Pelajar</a> 
    <a href="#info" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/info.png"  width="40" height="40">Info terkini</a> 
    <a href="#aduan" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/aduan.png"  width="40" height="40">Aduan</a>
     <a href="../logout.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">​<img src="../img/logout.png"  width="40" height="40">Logout</a>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Company Name</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="laman">
      <h1 class="w3-jumbo"><b>WELCOME</b></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b><%=rs.getString("nama")%></b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
    
    
    <div class="w3-row-padding" id="profile">
 
       <div class="w3-half">
           

      <ul class="w3-ul w3-light-grey w3-center" >
        
        <li class="w3-red w3-xlarge w3-padding-32">  Profile</li>
        <li class="w3-padding-16"><%=rs.getString("nama")%></li>
        <li class="w3-padding-16"><%=rs.getString("no_tel")%></li>
        <li class="w3-padding-16"><%=rs.getString("alamat")%></li>
        <li class="w3-padding-16"><%=rs.getString("email")%></li>
        <li class="w3-padding-16"> <button class="w3-bar-item w3-button w3-hover-red"><a href="../update-processStaff.jsp?idstaff=<%=rs.getString("idstaff")%>"><img src="../img/kemaskini.png"  width="40" height="40"></a></button></li>
       
      
      </ul>
      
    </div>
        
        <div class="w3-half w3-margin-bottom">

      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-dark-grey w3-xlarge w3-padding-32">Aduan Kamsis</li>
        <%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM aduan ORDER BY idaduan";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
        <li class="w3-padding-16"><%=rs.getString("aduanstud")%></li>
 <%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>
       
      </ul>

    </div>
  </div>
 


  <!-- Services -->
  <div class="w3-container" id="pelajar" style="margin-top:75px">
 <%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM student ORDER BY nama";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>

 
 <div class="tbl-header">
   
     <h1 class="w3-red w3-xlarge w3-padding-32">Maklumat Pelajar &nbsp;<%=rs.getString("idstud")%></h1>
  
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
       <a href="../update-processStaff_stud.jsp?idstud=<%=rs.getString("idstud")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/kemaskini.png"  width="40" height="40">kemaskini</a>
       <a href="../deleteStud_Staff.jsp?idstud=<%=rs.getString("idstud")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/delete.png"  width="40" height="40">delete</a>
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
  
  <!-- Designers -->
  <div class="w3-container" id="info" style="margin-top:75px">
    <h1 class="w3-xxxlarge w3-text-red"><b>Info Terkini</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
     <%
 try {
 conn = DriverManager.getConnection(connUrl + database, username, password);
 String sql = "SELECT * FROM news ORDER BY idnews";
 rs = stmt.executeQuery(sql);
 Integer bil;
 bil = 1;
 while (rs.next()) {
 %>
 <h3>PELANJUTAN TARIKH TUTUP BAGI SEBUT HARGA BAGI KERJA-KERJA PEMBAIKAN PAIP AIR PECAH TERMASUK KERJA-KERJA BERKAITAN DI POLITEKNIK TUANKU SYED SIRAJUDDIN, PERLIS</h3>
 <p><%=rs.getString("berita")%></p>
 <hr style="width:50px;border:5px solid red" class="w3-round">
  <h3>Pilihanraya Kampus Wujudkan Semangat Demokrasi Pelajar</h3>
 <p><%=rs.getString("berita2")%></p>
   
   
  </div>

  <!-- The Team -->
  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
      
        <div class="w3-container">
          <h3>PENAFIAN</h3>
          <p class="w3-opacity">www.ptss.com.my</p>
          <p><%=rs.getString("maklumat2")%></p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
        
        <div class="w3-container">
          <h3>Dasar Keselamatan</h3>
          <p class="w3-opacity">Hal Ehwal Pelajar</p>
          <p><%=rs.getString("maklumat3")%></p>
        </div>
      </div>
    </div>
    <div class="w3-col m4 w3-margin-bottom">
      <div class="w3-light-grey">
       
        <div class="w3-container">
          <h3>JABATAN HAL EHWAL PELAJAR</h3>
          <p class="w3-opacity">Warden</p>
          <p>
            Politeknik Tuanku Syed Sirajuddin
            02600 Arau, Perlis
            Tel: 04 9886200 Faks: 04 9886300
            Whatsapp : 011-65526200</p>
        </div>
      </div>
    </div>
  </div>
  <%
 }
 } catch (Exception e) {
 e.printStackTrace();
 }
 %>


  <!-- Contact -->
<div class="w3-container" style="margin-top:75px">
      <hr id="aduan" style="width:100%;border:5px solid red" class="w3-round">
    <h1 class="w3-xxxlarge w3-text-red"><b>Aduan</b></h1>
 
    <center><font color="red">Segala aduan akan direkodkan ke dalam sistem pegurusan kamsis </font></center>
    <form  action="../aduan.jsp" method="post">
      <div class="w3-section">
        <label>Name</label>
        <input class="w3-input w3-border" type="text" name="namestud" required>
      </div>
      <div class="w3-section">
        <label>No Kad Matrik</label>
        <input class="w3-input w3-border" type="text" name="kadstud" required>
      </div>
      <div class="w3-section">
        <label>Aduan</label>
        <input class="w3-input w3-border" type="text" name="aduanstud" required>
      </div>
      <button  type="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Hantar Aduan</button>
    </form>  
  </div>

<!-- End page content -->
</div>


 
</body>
</html>

