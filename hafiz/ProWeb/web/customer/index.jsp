<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><%=rs.getString("nama")%></title>

        <link rel="stylesheet" href="../css/user.css">
        <link rel="stylesheet" href="../css/Table.css">
        <link rel="stylesheet" href="../css/popUp.css">
        
 <style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}


</style>

</head>
 <body onload="startTime()">

  <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  
  
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>Welcome<br> <%=rs.getString("nama")%></b></h3>
  </div>
  
  
  <div class="w3-bar-block">
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/home.png"  width="40" height="40">Laman Utama</a> 
    <a href="#maklumatpelajar" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/profile.png"  width="40" height="40">Maklumat Pelajar</a> 
    <a href="#book" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/booking.png"  width="40" height="40">Tempah Bilik</a> 
    <a href="#info" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/info.png"  width="40" height="40">Info Terkini</a> 
    <a href="#aduan" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/aduan.png"  width="40" height="40">Aduan</a><br>
    <a href="../logout.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">​<img src="../img/logout.png"  width="40" height="40">Logout</a>
  </div>
</nav>
  <div class="w3-main" style="margin-left:340px;margin-right:40px">
      <h1 class="w3-xxxlarge w3-text-red"><b>Welcome</b><br><%=rs.getString("nama")%></h1>
         <hr style="width:100%;border:5px solid red" class="w3-round">
   
 <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
    <div class="w3-row-padding">
    <div class="w3-half">
      <img src="../img/img1.jpg" style="width:100%"  >
      <img src="../img/img2.jpg" style="width:100%"  >
      <img src="../img/img3.jpg" style="width:100%"  >
    </div>

    <div class="w3-half">
      <img src="../img/img4.jpg" style="width:100%"  >
      <img src="../img/img5.jpg" style="width:100%"  >
      <img src="../img/img6.jpg" style="width:100%"  >
    </div>
  </div>
     
          <hr id="maklumatpelajar" style="width:100%;border:5px solid red" class="w3-round">
          
<div class="tbl-header">
  
  <h1 class="w3-xxxlarge w3-text-red">Maklumat Pelajar</h1>
  
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
       <a href="../update-process.jsp?idstud=<%=rs.getString("idstud")%>" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white"><img src="../img/kemaskini.png"  width="40" height="40">kemaskini</a>
    </table>
  </div>
</div>
   <table cellpadding="2" cellspacing="2" border="2" style="background-color:#ffbf00;
width:100%;">
  <tr>
      <th colspan="2">ALAMAT SURAT MENYURAT</th>
    <td colspan="2"><%=rs.getString("alamat")%></td>
   
  </tr>
  <tr>
    <th>Negeri :</th>
    <td><%=rs.getString("negeri")%></td>
    <th>Bandar :</th>
    <td><%=rs.getString("bandar")%></td>
  </tr>
  <tr>
    <th>Poskod :</th>
    <td><%=rs.getString("poskod")%></td>
    
  </tr>
  <tr>
    <th>AGAMA :</th>
    <td><%=rs.getString("agama")%></td>
    <th>BANGSA :</th>
    <td><%=rs.getString("bangsa")%></td>
  </tr>
</table> 
    
   <hr style="width:100%;border:5px solid red" class="w3-round">
    
    <div class="w3-container" style="margin-top:75px">
    <hr id="maklumatpelajar" style="width:100%;border:5px solid red" class="w3-round">
    <h1 id="book" class="w3-xxxlarge w3-text-red"><b>Tempahan Bilik Kamsis.</b></h1>
    <p>Segala tempahan bilik kamsis akan dimasukkan di pengkalan data pelajar &nbsp <%=rs.getString("nama")%></p>
  </div>

  <div class="w3-row-padding">
    <div class="w3-half w3-margin-bottom">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-dark-grey w3-xlarge w3-padding-32">Maklumat Tambahan</li>
        <li class="w3-padding-16"><b>Skill :</b>&nbsp;<%=rs.getString("skill")%></li>
        <li class="w3-padding-16"><b>Sesi :</b>&nbsp;<%=rs.getString("sesi")%></li>
        <li class="w3-padding-16"><b>Kelas:</b>&nbsp;<%=rs.getString("kelas")%></li>
        <li class="w3-padding-16">Kemudahan Disediakan</li>
        <li class="w3-padding-16"> <div class="popup" onclick="myFunction()"><font color="red">Sila Kemaskini Maklumat Anda</font>
                <span class="popuptext" id="myPopup">
                    1-Maklumat Kamsis<br>
                    2-Maklumat Peribadi
                   
                </span>
            </div></li>
        <li class="w3-padding-16">
            
            <h2><b id="txt"></b></h2>
            <span class="w3-opacity"><b>Date Register:</b><%=rs.getString("date")%></span>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="../updateCourse.jsp?idstud=<%=rs.getString("idstud")%>"><button class="w3-button w3-white w3-padding-large w3-hover-black">Kemaskini</button></a>
        </li>
      </ul>
    </div>
      
       <div class="w3-half">
      <ul class="w3-ul w3-light-grey w3-center">
        <li class="w3-red w3-xlarge w3-padding-32">Maklumat Kamsis</li>
        <li class="w3-padding-16"><b>Blok :</b>&nbsp;<%=rs.getString("blok")%></li>
        <li class="w3-padding-16"><b>Aras :</b>&nbsp;<%=rs.getString("aras")%></li>
        <li class="w3-padding-16"><b>No Bilik:</b>&nbsp;<%=rs.getString("no_bilik")%></li>
        <li class="w3-padding-16">Kemudahan Disediakan</li>
        <li class="w3-padding-16"> 
            <div class="popup" onclick="myFunction1()"><font color="red">Sila bawa Dokumen ketika hari pendaftaran</font>
                <span class="popuptext" id="myPopup1">
                    1-Surat Tawaran Kamsis!<br>
                    2-Salinan IC & Kad Matrik!<br>
                    3-Slip Bayaran Kamsis!
                </span>
            </div></li>
        <li class="w3-padding-16">
          <h2><%=rs.getString("bill")%></h2>
          <span class="w3-opacity"><b>Sem:</b><%=rs.getString("sem")%></span>
        </li>
        <li class="w3-light-grey w3-padding-24">
            <a href="../bookRoom.jsp?idstud=<%=rs.getString("idstud")%>"><button  class="w3-button w3-white w3-padding-large w3-hover-red" >Kemaskini</button></a>
 
          

        </li>
      </ul>
    </div>
  </div>
    
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
<script>
// When the user clicks on div, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
}

function myFunction1() {
  var popup1 = document.getElementById("myPopup1");
  popup1.classList.toggle("show");
}

function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('txt').innerHTML =
  h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
}
function checkTime(i) {
  if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
  return i;
}
</script>
    </body>
</html>
