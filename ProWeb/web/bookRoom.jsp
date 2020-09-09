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
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Book Room Student</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/BookRoom.css" />


</head>

<body onload="startTime()">
    
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
                                            <form>
							<div class="row no-margin">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Tarikh Tempahan</span>
                                                                                <input type="datetime-local" class="form-control" name="date">
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Waktu Terkini</span>
                                                                              
                                                                                <div class="form-control"><div id="txt"></div></div>
									</div>
								</div>
							</div>
                                               <div class="row no-margin">
						<div class="col-sm-6">
							<div class="form-group">
                                                            
								<span class="form-label">Phone</span>
                                                                <p class="form-control"><%=rs.getString("notel")%></p>
							</div>
                                                </div>
                                                        <div class="col-sm-6">
                                                        <div class="form-group">
								<span class="form-label">No Kad Matrik</span>
                                                                <p class="form-control"><%=rs.getString("kadmatrik")%></p>
							</div>
                                                        </div>
							
                                            </form>
                                                        <form  action="update-processBook.jsp?idstud=<%=rs.getString("idstud")%>" method="post">
                                                              <div class="row no-margin">
                                                                   <div class="col-sm-6">
							<div class="form-group">
								<span class="form-label">Email</span>
                                                                <input class="form-control" type="text" name="email" placeholder="Enter your email" required>
                                                        </div></div>
                                                               <div class="col-sm-6">
                                                             <div class="form-group">
                                                           
								<span class="form-label">Blok</span>
								<select class="form-control" required name="blok">
									<option value="" selected hidden>Pilih Blok</option>
									<option value="A3">A3 </option>
									<option value="A4">A4</option>
                                                                        <option value="A5">A5</option>
								</select>
                                                            </div>	
							</div>
                                                              </div>
                                                                 
                                                        <div class="row no-margin">
                                                         <div class="col-sm-6">
                                                             <div class="form-group">
                                                           
								<span class="form-label">Aras</span>
								<select class="form-control" required name="aras">
									<option  selected hidden>Pilih Aras</option>
									<option value="1">1 </option>
									<option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
                                                                        <option value="5">5</option>
								</select>
                                                            </div>	
							</div>
                                                      
                                                            
								<div class="col-sm-6">
                                                                     <div class="form-group">
                                                           
								<span class="form-label">Bilik</span>
								<select class="form-control" required name="no_bilik">
									<option  selected hidden>Pilih No Bilik</option>
									<option value="1">1</option>
									<option value="2">2</option>
                                                                        <option value="3">3</option>
                                                                        <option value="4">4</option>
									<option value="5">5</option>
                                                                        <option value="6">6</option>
                                                                        <option value="7">7</option>
									<option value="8">8</option>
                                                                        <option value="9">9</option>
                                                                        <option value="10">10</option>
									<option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                        <option value="13">13</option>
									<option value="14">14</option>
                                                                        <option value="15">15</option>
                                                                        <option value="16">16</option>
									<option value="17">17</option>
                                                                        <option value="18">18</option>
                                                                        <option value="19">19</option>
									<option value="20">20</option>
                                                                        <option value="21">21</option>
                                                                        <option value="22">22</option>
									<option value="23">23</option>
                                                                        <option value="24">24</option>
                                                                        <option value="25">25</option>
									<option value="26">26</option>
                                                                        <option value="27">27</option>
                                                                        <option value="28">28</option>
									<option value="29">29</option>
                                                                        <option value="30">30</option>
                                                                        <option value="31">31</option>
									<option value="32">32</option>
                                                                        <option value="33">33</option>
                                                                        <option value="34">34</option>
									<option value="35">35</option>
                                                                        <option value="36">36</option>
								</select>
                                                            </div>	
                                                        </div>
                                                        </div>
                                                        <div class="form-group">
								<span class="form-label">Pilih Sem</span>
                                                                <div class="form-control">
                                                                    <input type="radio" name="bill" value="RM60">1 sem
                                                                    <input type="radio" name="bill" value="RM120">2 sem
                                                                    <input type="radio" name="bill" value="RM180">3 Sem
                                                                    <input type="radio" name="bill" value="RM240">4 Sem
                                                                    <input type="radio" name="bill" value="RM280">5 Sem
                                                                    <input type="radio" name="bill" value="RM324">6 Sem
                                                                
							</div>
                                                        </div>
                                                      
                                                        <div class="form-btn">
								<button type="submit" class="submit-btn">Book Now</button>
							</div>
                                                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
                                                            
    <script>
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