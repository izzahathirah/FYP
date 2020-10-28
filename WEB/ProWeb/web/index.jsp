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
    <head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>   
                <script type="text/javascript">
            function validate(){
            var uname=document.myForm.username.value;
            if(uname==""){
                    alert("Please enter username");
                    document.myForm.username.focus();
                    return false;
                }
                var password=document.myForm.password.value;
                var illegalChar=/[\w_]/;
                if(password==""){
                    alert("Please enter password");
                    document.myForm.password.focus();
                    return false;
                }
            }
    </script>   
    </head>
<body>
	<img class="wave" src="img/wave.png">
	<div class="container">
		<div class="img">
			<img src="img/bg.svg">
		</div>
		<div class="login-content">
			<form name="myForm" method="post" action="process.jsp">
				<img src="img/avatar.svg">
				<h2 class="title">Welcome</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Username</h5>
           		   		<input type="text" name="username" class="input">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" name="password" class="input">
            	   </div> 
                            
            	</div>
            	<a href="forget.jsp">Forgot Password?</a><a href="registerStud.jsp">First Time user</a>
               
    
                <input type="submit" name="action" onClick="return validate();" class="btn" value="Log In">
                <input type="reset" class="btn">
               
               
            </form>
                    
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>