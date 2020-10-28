<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
include('database.php');
    $id = null;
    if ( !empty($_GET['id'])) {
        $id = $_REQUEST['id'];
    }
     
    $pdo = Database::connect();
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql = "SELECT * FROM rooms where id = ?";
	$q = $pdo->prepare($sql);
	$q->execute(array($id));
	$data = $q->fetch(PDO::FETCH_ASSOC);
	Database::disconnect();
check_login();
//code for registration
if(isset($_POST['submit']))
{
$roomno=$_POST['roomno'];

$meja=$_POST['meja'];
$katil=$_POST['katil'];
$almari=$_POST['almari'];
$kerusi=$_POST['kerusi'];
$keytag=$_POST['keytag'];
$stayfrom=$_POST['stayf'];
$duration=$_POST['duration'];
$course=$_POST['course'];
$regno=$_POST['regno'];
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$contactno=$_POST['contact'];
$emailid=$_POST['email'];
$emcntno=$_POST['econtact'];

$query="insert into  registration(roomno,meja,katil,almari,kerusi,keytag,stayfrom,duration,course,regno,firstName,lastName,gender,contactno,emailid,egycontactno,guardianName,guardianRelation,guardianContactno,corresAddress,corresCIty,corresState,corresPincode,pmntAddress,pmntCity,pmnatetState,pmntPincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('sssssssssssssssssssssssssss',$roomno,$meja,$katil,$almari,$kerusi,$keytag,$stayfrom,$duration,$course,$regno,$fname,$lname,$gender,$contactno,$emailid,$emcntno,$gurname,$gurrelation,$gurcntno,$caddress,$ccity,$cstate,$cpincode,$paddress,$pcity,$pstate,$ppincode);
$stmt->execute();
echo"<script>alert('Student Succssfully register');</script>";
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
	<script>
			$(document).ready(function(){
				 $("#getUID").load("UIDContainer.php");
				setInterval(function() {
					$("#getUID").load("UIDContainer.php");	
				}, 500);
			});
		</script>
<script>
function getSeater(val) {
$.ajax({
type: "POST",
url: "get_seater.php",
data:'roomid='+val,
success: function(data){
//alert(data);
$('#meja').val(data);
}
});

$.ajax({
type: "POST",
url: "get_seater.php",
data:'rids='+val,
success: function(data){
//alert(data);
$('#roomno').val(data);
}
});

$.ajax({
type: "POST",
url: "get_seater.php",
data:'ridss='+val,
success: function(data){
//alert(data);
$('#keytag').val(data);
}
});
$.ajax({
type: "POST",
url: "get_seater.php",
data:'rid='+val,
success: function(data){
//alert(data);
$('#almari').val(data);
}
});

$.ajax({
type: "POST",
url: "get_seater.php",
data:'rmid='+val,
success: function(data){
//alert(data);
$('#katil').val(data);
}
});

$.ajax({
type: "POST",
url: "get_seater.php",
data:'rmsid='+val,
success: function(data){
//alert(data);
$('#kerusi').val(data);
}
});
}
</script>

</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Comfirmation  </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading">Check Registration Facilities Number </div>
									<div class="panel-body">
										<form method="post" action="" class="form-horizontal">
							<?php
$uid=$_SESSION['login'];
							 $stmt=$mysqli->prepare("SELECT emailid FROM registration WHERE emailid=? || regno=? ");
				$stmt->bind_param('ss',$uid,$uid);
				$stmt->execute();
				$stmt -> bind_result($email);
				$rs=$stmt->fetch();
				$stmt->close();
				if($rs)
				{ ?>
			<h3 style="color: red" align="center">Comfirmation section already Update</h3>
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
<div class="form-group">
<label class="col-sm-4 control-label"><h4 style="color: green" align="left">Room Facilities Related info </h4> </label>
</div>
<?php	
$uid=$_SESSION['login'];

	 $ret = "SELECT * FROM userregistration INNER JOIN rooms ON userregistration.regNo = rooms.matric_number where email=?";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('s',$uid);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
<div class="form-group">
<label class="col-sm-2 control-label">Matric Number</label>
<div class="col-sm-8">

<input type="text"  name="regno" id="regno" class="form-control"  value="<?php echo $row->regNo;?>" required>
</input> 


</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Blok</label>
<div class="col-sm-2">
<input type="text" name="keytag" id="keytag" value="<?php echo $row->blok;?>"  class="form-control"  readonly="true">

</div>
<label class="col-sm-1 control-label">Level</label>
<div class="col-sm-2">
<input type="text" name="keytag" id="keytag" value="<?php echo $row->aras;?>"  class="form-control"  readonly="true">

</div>


<label class="col-sm-1 control-label">Room.no</label>
<div class="col-sm-2">
<input type="text" name="roomno" id="roomno"  value="<?php echo $row->room_no;?>" class="form-control" onBlur="checkAvailability()" readonly="true">
<span id="room-availability-status" style="font-size:12px;"></span>
</div>

</div>		
<div class="form-group">
<label class="col-sm-2 control-label">Key Tag</label>
<div class="col-sm-2">
<input type="text" name="keytag" id="keytag" value="<?php echo $row->keytag;?>"  class="form-control"  readonly="true">

</div>		
</div>						
<div class="form-group">
<label class="col-sm-2 control-label">Table Reg.no</label>
<div class="col-sm-4">
<input type="text" name="meja" id="meja" value="<?php echo $row->meja;?>"  class="form-control" readonly="true">
</div>

<div class="col-sm-4">
<button class="btn btn-primary" >Comfirm</button><a href="https://websdk-label-demo.scandit.com/">Link to start scanner</a>



</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Wardrobe Reg.no</label>
<div class="col-sm-8">
<input type="text" name="almari" id="almari" value="<?php echo $row->almari;?>" class="form-control" readonly="true">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Bed Reg.no</label>
<div class="col-sm-8">
<input type="text" name="katil" id="katil"  value="<?php echo $row->katil;?>" class="form-control"  readonly="true">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Chair Reg.no</label>
<div class="col-sm-8">
<input type="text" name="kerusi" id="kerusi"  value="<?php echo $row->kerusi;?>" class="form-control" readonly="true">
</div>
</div>

<?php } ?>






<div class="col-sm-6 col-sm-offset-4">
<button class="btn btn-default" type="submit">Cancel</button>
<input type="submit" name="submit" Value="Register" class="btn btn-primary">
</div>
</form>
<?php } ?>

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


</html>