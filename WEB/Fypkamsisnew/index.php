<?php
session_start();
include('includes/config.php');
if(isset($_POST['login']))
{
$emailreg=$_POST['emailreg'];
$password=$_POST['password'];
$stmt=$mysqli->prepare("SELECT email,password,id FROM userregistration WHERE (email=? || regNo=?) and password=? ");
				$stmt->bind_param('sss',$emailreg,$emailreg,$password);
				$stmt->execute();
				$stmt -> bind_result($email,$password,$id);
				$rs=$stmt->fetch();
				$stmt->close();
				$_SESSION['id']=$id;
				$_SESSION['login']=$emailreg;
				$uip=$_SERVER['REMOTE_ADDR'];
				$ldate=date('d/m/Y h:i:s', time());
				if($rs)
				{
             $uid=$_SESSION['id'];
             $uemail=$_SESSION['login'];
$ip=$_SERVER['REMOTE_ADDR'];
$geopluginURL='http://www.geoplugin.net/php.gp?ip='.$ip;
$addrDetailsArr = unserialize(file_get_contents($geopluginURL));
$city = $addrDetailsArr['geoplugin_city'];
$country = $addrDetailsArr['geoplugin_countryName'];
$log="insert into userLog(userId,userEmail,userIp,city,country) values('$uid','$uemail','$ip','$city','$country')";
$mysqli->query($log);
if($log)
{
header("location:dashboard.php");
				}
}
				else
				{
					echo "<script>alert('Invalid Username/Email or password');</script>";
				}
			}
				?>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Student Hostel Registration</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	
	<style>

.center {
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
}
.popup {
  width:350px;
  height:400px;
  padding:30px 20px;
  background:#f5f5f5;
  border-radius:10px;
  box-sizing:border-box;
  z-index:2;
  text-align:center;
  opacity:0;
  top:-200%;
  transform:translate(-50%,-50%) scale(0.5);
  transition: opacity 300ms ease-in-out,
              top 1000ms ease-in-out,
              transform 1000ms ease-in-out;
}
.popup.active {
  opacity:1;
  top:50%;
  transform:translate(-50%,-50%) scale(1);
  transition: transform 300ms cubic-bezier(0.18,0.89,0.43,1.19);
}
.popup .icon {
  margin:5px 0px;
  width:50px;
  height:50px;
  border:2px solid #5CDB95;
  text-align:center;
  display:inline-block;
  border-radius:50%;
  line-height:60px;
}
.popup .icon i.fa {
  font-size:30px;
  color:#5CDB95;
} 
.popup .title {
  margin:5px 0px;
  font-size:30px;
  font-weight:600;
}
.popup .description {
  color:#222;
  font-size:15px;
  padding:5px;
}
.popup .dismiss-btn {
  margin-top:15px;
}
.popup .dismiss-btn button {
  padding:10px 20px;
  background:#111;
  color:#f5f5f5;
  border:2px solid #111;
  font-size:16px;
  font-weight:600;
  outline:none;
  border-radius:10px;
  cursor:pointer;
  transition: all 300ms ease-in-out;
}
.popup .dismiss-btn button:hover {
  color:#111;
  background:#f5f5f5;
}
.popup > div {
  position:relative;
  top:10px;
  opacity:0;
}
.popup.active > div {
  top:0px;
  opacity:1;
}
.popup.active .icon {
  transition: all 300ms ease-in-out 250ms;
}
.popup.active .title {
  transition: all 300ms ease-in-out 300ms;
}
.popup.active .description {
  transition: all 300ms ease-in-out 350ms;
}
.popup.active .dismiss-btn {
  transition: all 300ms ease-in-out 400ms;
}
</style>
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
function valid()
{
if(document.registration.password.value!= document.registration.cpassword.value)
{
alert("Password and Re-Type Password Field do not match  !!");
document.registration.cpassword.focus();
return false;
}
return true;
}
</script>
</head>
<body >
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row" >
					<div class="col-md-12"  >
					
						<h2 class="page-title" style="font-size:20px; font-weight: bold; color:blue;">Student Login </h2>

						<div class="row">
					<div class="col-md-4 col-md-offset-1" >
					
						<div class="well row pt-1x pb-2x bk-light">
						<h2 class="page-title" style=" font-size:20px; font-weight: 200px;">   <i class="fa fa-exclamation-circle"></i>Login an account</h2>
							<div class="col-md-10 col-md-offset-1">
							
								<form action="" class="mt" method="post">
									<label for="" class="text-uppercase text-sm">Email / Registration Number</label>
									<input type="text" placeholder="Email / Registration Number" name="emailreg" class="form-control mb" required="true">
									<label for="" class="text-uppercase text-sm">Password</label>
									<input type="password" placeholder="Password" name="password" class="form-control mb" required="true">
									

									<input  id="open-popup-btn"  class="btn btn-primary btn-block" value="Submit" >
								
							</div>
							
							
						</div>
						<div class="text-center text-light" style="color:black;">
							<a href="forgot-password.php" style="color:black;">Forgot password?</a>
						</div>
					</div>
<div class="popup center">
  <div class="icon">
    <i class="fa fa-bullhorn"></i>
  </div>
  <div class="title">
  Annoucement
  </div>
  <div class="description">
    Make sure you update the facilities information based on their respective room numbers
  </div>
 <div class="dismiss-btn" >
    <Button style="background-color:#5CDB95;" type="submit" name="login"   class="dismiss-btn" > <i class="fa fa-check"></i>Okay</Button>
    
  </div>
   <div class="dismiss-btn">
    <button id="dismiss-popup-btn">
      Dismiss
    </button>
  </div>
</div>
</form>
						<div class="col-md-5 col-md-offset-1">
						<marquee><h2 class="page-title" style="font-size:20px; font-weight: 200px;">Welcome To Kamsis Management System </h2></marquee>
						<div class=" row pt-2x pb-3x ">
						<div class="col-md-1 col-md-offset-1">
						<img src="img/jpkk.png" class="ts-avatar hidden-side" weight="40px" height="40px" alt="">   <i class="fa fa-exclamation-circle"></i>
						</div>
							<div class="col-md-9 col-md-offset-1">
							<p>
							Welcome to kamsis citizens to kamsis official website. This site was developed to make it easier for students on Thursday to know the current information related to the activities carried out on Thursday. Apart from that, it makes it easier for Thursday students to make initial plans to leave / enter Thursday. Disciplinary cases will also be displayed for the purpose of supervision and observation of students on their own.
							It is hoped that its use can be utilized from time to time. Any questions, please contact the chief warden for more information.</p>
								
							</div>
							
							
						</div>
						
					</div>
					
					
				</div>
							
				
			
				
						</div>
						
							</div>
							
							
						</div>
					</div>
				</div> 	
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
		<script>
	document.getElementById("open-popup-btn").addEventListener("click",function(){
  document.getElementsByClassName("popup")[0].classList.add("active");
});

document.getElementById("dismiss-popup-btn").addEventListener("click",function(){
  document.getElementsByClassName("popup")[0].classList.remove("active");
});

	</script>
</body>

</html>