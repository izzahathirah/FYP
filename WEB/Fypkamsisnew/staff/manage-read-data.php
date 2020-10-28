<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

$Write="<?php $" . "UIDresult=''; " . "echo $" . "UIDresult;" . " ?>";
	file_put_contents('UIDContainer.php',$Write);
    require 'databases.php';
    $id = null;
    if ( !empty($_GET['id'])) {
        $id = $_REQUEST['id'];
    }
     
    $pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql = "SELECT * FROM registration where rfid = ?";
	$q = $pdo->prepare($sql);
	$q->execute(array($id));
	$data = $q->fetch(PDO::FETCH_ASSOC);
	Database::disconnect();
	
	$msg = null;
	if (null==$data['firstName']) {
		$msg = "The ID of your Card / KeyChain is not registered !!!";
		$data['rfid']=$rfid;
		$data['firstName']="--------";
		$data['gender']="--------";
		$data['emailid']="--------";
		$data['contactno']="--------";
	} else {
		$msg = null;
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
	<title>Manage Rooms</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="jquery.min.js"></script>
<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}
</script>
	<script>
			$(document).ready(function(){
				 $("#getUID").load("UIDContainer.php");
				setInterval(function() {
					$("#getUID").load("UIDContainer.php");	
				}, 500);
			});
		</script>
				<style>
	
		ul.topnav {
			list-style-type: none;
			margin: auto;
			padding: 0;
			overflow: hidden;
			background-color: #fff;
			width: 70%;
		}

		ul.topnav li {float: left;}

		ul.topnav li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		ul.topnav li a:hover:not(.active) {background-color: #3e8e41;}

		ul.topnav li a.active {background-color: #333;}

		ul.topnav li.right {float: right;}

		@media screen and (max-width: 600px) {
			ul.topnav li.right, 
			ul.topnav li {float: none;}
		}
		
		td.lf {
			padding-left: 15px;
			padding-top: 12px;
			padding-bottom: 12px;
		}
		</style>
</head>

<body>
	
		<p id="getUID" hidden></p>
		
		
		<div id="show_user_data">
		<form>
				<table class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
					<tr>
						<td  height="40" align="center"  bgcolor="#10a0c5"><font  color="#FFFFFF">
						<b>Student Data</b></font></td>
					</tr>
					<tr>
						<td bgcolor="#f9f9f9">
							<table width="70%"  border="0" align="center" cellpadding="5"  cellspacing="0">
								<tr>
									<td width="113" align="left" class="lf">ID</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['regno'];?></td>
								</tr>
								<tr bgcolor="#f2f2f2">
									<td align="left" class="lf">Name</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['firstName'];?>&nbsp;<?php echo $data['lastName'];?></td>
								</tr>
								<tr>
									<td align="left" class="lf">Gender</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['gender'];?></td>
								</tr>
								<tr bgcolor="#f2f2f2">
									<td align="left" class="lf">Email</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['emailid'];?></td>
								</tr>
								<tr>
									<td align="left" class="lf">Mobile Number</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['contactno'];?></td>
								</tr>
								
								<tr>
									<td align="left" class="lf">State</td>
									<td style="font-weight:bold">:</td>
									<td align="left"><?php echo $data['corresAddress'];?>&nbsp;<?php echo $data['corresPincode'];?>&nbsp;<?php echo $data['corresCIty'];?>&nbsp;<?php echo $data['corresState'];?></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		</div>
	</div>
		<script>
			var myVar = setInterval(myTimer, 1000);
			var myVar1 = setInterval(myTimer1, 1000);
			var oldID="";
			clearInterval(myVar1);

			function myTimer() {
				var getID=document.getElementById("getUID").innerHTML;
				oldID=getID;
				if(getID!="") {
					myVar1 = setInterval(myTimer1, 500);
					showUser(getID);
					clearInterval(myVar);
				}
			}
			
			function myTimer1() {
				var getID=document.getElementById("getUID").innerHTML;
				if(oldID!=getID) {
					myVar = setInterval(myTimer, 500);
					clearInterval(myVar1);
				}
			}
			
			function showUser(str) {
				if (str == "") {
					document.getElementById("show_user_data").innerHTML = "";
					return;
				} else {
					if (window.XMLHttpRequest) {
						// code for IE7+, Firefox, Chrome, Opera, Safari
						xmlhttp = new XMLHttpRequest();
					} else {
						// code for IE6, IE5
						xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
					}
					xmlhttp.onreadystatechange = function() {
						if (this.readyState == 4 && this.status == 200) {
							document.getElementById("show_user_data").innerHTML = this.responseText;
						}
					};
					xmlhttp.open("GET","read tag user data.php?id="+str,true);
					xmlhttp.send();
				}
			}
			
			var blink = document.getElementById('blink');
			setInterval(function() {
				blink.style.opacity = (blink.style.opacity == 0 ? 1 : 0);
			}, 750); 
		</script>
	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
