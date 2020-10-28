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

<body>
    
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
                                            <form>
							<div class="row no-margin">
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Course</span>
                                                                                <p class="form-control"><%=rs.getString("kos")%></p>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<span class="form-label">Date Account Created</span>
                                                                              
										  <p class="form-control"><%=rs.getString("date")%></p>
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
                                                                <form  action="update-processCourse.jsp?idstud=<%=rs.getString("idstud")%>" method="post">
                                                          <div class="row no-margin">
                                                                   <div class="col-sm-6">
							<div class="form-group">
								<span class="form-label">Sesi</span>
                                                                <select class="form-control"  name="sesi" required>
                                                                    <option value="" selected hidden>Choose your Sesi</option>
                                                                    <option value="Jun">Jun</option>
                                                                    <option value="Disember">Disember</option>
                                                                </select>
                                                                
                                                        </div></div>
                                                               <div class="col-sm-6">
                                                             <div class="form-group">
                                                           
								<span class="form-label">Skill</span>
								<select class="form-control" required name="skill">
									<option value="" selected hidden>Choose your Skill</option>
									<option value="Photography">Photography </option>
									<option value="Designer">Designer</option>
                                                                        <option value="Engenier">Engenier</option>
								</select>
                                                            </div>	
							</div>
                                                              </div>
                                                                 
                                                        <div class="row no-margin">
                                                         <div class="col-sm-6">
                                                             <div class="form-group">
                                                           
								<span class="form-label">Kelas</span>
								<select class="form-control" required name="kelas">
									<option  selected hidden>Pilih Kelas</option>
									<option value="DDT4A">DDT4A </option>
									<option value="DDT4B">DDT4B</option>
                                                                        <option value="DDT4C">DDT4C</option>
                                                                        <option value="DDT4D">DDT4D</option>
                                                                        <option value="DDT4E">DDT4E</option>
								</select>
                                                            </div>	
							</div>
                                                      
                                                            
								<div class="col-sm-6">
                                                                     <div class="form-group">
                                                           
								<span class="form-label">Tarikh Kemaskini</span>
								<input class="form-control" type="datetime-local" required name="date">
									
									
								
                                                            </div>	
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="form-btn">
								<button type="submit" class="submit-btn">Update Now</button>
							</div>
                                                        </form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>