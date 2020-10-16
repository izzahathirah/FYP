
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget User</title>
        
        <script type="text/javascript">
            function validate(){
            var uname=document.myForm.name.value;
            if(uname==""){
                    alert("Please enter username");
                    document.myForm.name.focus();
                    return false;
                }
                var femail=document.myForm.email.value;
                var illegalChar=/[\w_]/;
                if(femail==""){
                    alert("Please enter your email");
                    document.myForm.email.focus();
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
			<form name="myForm" action="processforget.jsp" method="post" >
				<img src="img/avatar.svg">
				<h2 class="title">Forget Password</h2>
                                
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Name</h5>
           		   		<input type="text" name="name" class="input">
           		   </div>
                            
                        
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Email</h5>
           		    	<input type="email" name="email" class="input">
            	           </div>
                            
                        
            	</div>
            	<a href="index.jsp">Log In</a>
    
                <input type="submit" name="action" onClick="return validate();" class="btn" value="Comfirm"></input>
             
               
            </form>
        </div>
    </div>
       <script type="text/javascript" src="js/main.js"></script>
    </body>
    
</html>
