<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kuala_Lumpur');
include('includes/checklogin.php');
check_login();

$aid=$_SESSION['id'];
if(isset($_POST['update']))
{
$id=$_POST['id'];
$username=$_POST['username'];
$SerialNumber=$_POST['SerialNumber'];
$gender=$_POST['gender'];
$CardID=$_POST['CardID'];

$query="update  users set id=?, username=?,SerialNumber=?,gender=?,CardID=?";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('issss',$id ,$username,$SerialNumber,$gender,$CardID);
$stmt->execute();
echo"<script>alert('Your Card is Ready to use');</script>";
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
	
	<?php	
$aid=$_SESSION['id'];
	$ret="select * from userregistration where id=?";
		$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('s',$aid);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
	<title><?php echo $row->regNo;?></title>
	
	<?php } ?>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
<?php 
//Connect to database
require('includes/config.php');

	 $ret = "SELECT * FROM users INNER JOIN rooms ON users.CardID = rooms.CardID  ";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title"><?php echo $row->matric_number;?>'s&nbsp;Profile </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading" >


</div><div class="panel-body">
		<form method="post" action="" class="form-horizontal">
							<?php

							 $stmt=$mysqli->prepare("SELECT CardID FROM users WHERE CardID=? || SerialNumber=? ");
				$stmt->bind_param('ss',$CardID,$SerialNumber);
				$stmt->execute();
				$stmt -> bind_result($SerialNumber);
				$rs=$stmt->fetch();
				$stmt->close();
				if($rs)
				{ ?>
			<h3 style="color: red" align="center">Your Key Is activated</h3>
			<div align="center">
				<div class="col-md-4">&nbsp;</div>
			<div class="col-md-4">
										<div class="panel panel-default">
											<div class="panel-body bk-success text-light">
												<div class="stat-panel text-center">

												<div class="stat-panel-number h1 ">My Room</div>
													
												</div>
											</div>
											<a href="room-details.php" class="block-anchor panel-footer text-center">See All &nbsp; <i class="fa fa-arrow-right"></i></a>
										</div>
									</div>
								</div>
				<?php }
				else{
								
							?>					

<div class="panel-body">
<form method="post" action="" name="registration" class="form-horizontal" onSubmit="return valid();">
								
								

<div class="form-group">
<label class="col-sm-2 control-label"> Registration No : </label>
<div class="col-sm-8">
<input type="text" name="regno" id="regno"  class="form-control" required="required" value="<?php echo $row->matric_number;?>" readonly="true">
</div>
</div>

<?php	
$aid=$_SESSION['id'];
	$ret="select * from userregistration where id=?";
		$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('s',$aid);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
<div class="form-group">
<label class="col-sm-2 control-label">Full name : </label>
<div class="col-sm-8">
<input type="text" name="username" id="username"  class="form-control" value="<?php echo $row->firstName;?>&nbsp;<?php echo $row->lastName;?>"   required="required" >
</div>
</div>
<?php } ?>

<?php 
//Connect to database
require('includes/config.php');

	 $ret = "SELECT * FROM rooms INNER JOIN userregistration ON rooms.matric_number = userregistration.regNo ";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
<input type="hidden" name="gender" id="gender"  class="form-control"  value="<?php echo $row->gender;?>" >

<div class="form-group">
<label class="col-sm-2 control-label">CardID : </label>
<div class="col-sm-8">
<input type="text" name="CardID" id="CardID"  class="form-control" maxlength="10" value="<?php echo $row->CardID;?>" readonly>
</div>
</div>

<input type="hidden" name="SerialNumber" id="SerialNumber"  class="form-control"  value="<?php echo $row->CardID;?>" >

<?php 
//Connect to database
require('includes/config.php');

	 $ret = "SELECT * FROM rooms INNER JOIN users ON rooms.CardID = users.CardID ";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
<input type="hidden" name="id" id="id"  class="form-control" maxlength="10" value="<?php echo $row->id;?>" required="required">
<?php } ?>
<?php } ?>


<?php } ?>
			
						



<div class="col-sm-6 col-sm-offset-4">

<input type="submit" name="update" Value="Activate lock Key" class="btn btn-primary">
</div>
</form>

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
</body>
<script type="text/javascript">
	$(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
                $('#paddress').val( $('#address').val() );
                $('#pcity').val( $('#city').val() );
                $('#pstate').val( $('#state').val() );
                $('#ppincode').val( $('#pincode').val() );
            } 
            
        });
    });
</script>
	<script>
function checkAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'id='+$("#id").val(),
type: "POST",
success:function(data){
$("#room-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>


<script type="text/javascript">

$(document).ready(function() {
	$('#duration').keyup(function(){
		var fetch_dbid = $(this).val();
		$.ajax({
		type:'POST',
		url :"ins-amt.php?action=userid",
		data :{userinfo:fetch_dbid},
		success:function(data){
	    $('.result').val(data);
		}
		});
		

})});

</script>

<script>
	var blink = document.getElementById('blink');
			setInterval(function() {
				blink.style.opacity = (blink.style.opacity == 0 ? 1 : 0);
			}, 750); 
			</script>
</html><?php } ?>