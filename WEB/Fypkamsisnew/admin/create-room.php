<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

$Write="<?php $" . "UIDresult=''; " . "echo $" . "UIDresult;" . " ?>";
	file_put_contents('UIDContainer.php',$Write);

//code for add courses
if(isset($_POST['submit']))
{

$rooms=$_POST['rooms'];
$rfid=$_POST['rfid'];
$matric_number=$_POST['matric_number'];
$meja=$_POST['meja'];
$almari=$_POST['almari'];
$kerusi=$_POST['kerusi'];
$katil=$_POST['katil'];
$keytag=$_POST['keytag'];
$room_no=$_POST['room_no'];
$sql="SELECT matric_number FROM rooms where matric_number=?";
$stmt1 = $mysqli->prepare($sql);
$stmt1->bind_param('s',$matric_number);
$stmt1->execute();
$stmt1->store_result(); 
$row_cnt=$stmt1->num_rows;;
if($row_cnt>0)
{
echo"<script>alert('Student Matric Number alreadt exist');</script>";
}
else
{
$query="insert into rooms (rooms,rfid,matric_number,meja,almari,kerusi,katil,keytag,room_no) values(?,?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('sssssssss',$rooms,$rfid,$matric_number,$meja,$almari,$kerusi,$katil,$keytag,$room_no);
$stmt->execute();
echo"<script>alert('Room has been added successfully');</script>";
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
	<title>Create Room</title>
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
<script src="jquery.min.js"></script>

<script>
			$(document).ready(function(){
				 $("#rfid").load("UIDContainer.php");
				setInterval(function() {
					$("#rfid").load("UIDContainer.php");
				}, 500);
			});
		</script>
<script>
function getSeater(val) {
$.ajax({
type: "POST",
url: "get_roomno.php",
data:'roomid='+val,
success: function(data){
//alert(data);
$('#almari').val(data);
}
});

$.ajax({
type: "POST",
url: "get_roomno.php",
data:'roomids='+val,
success: function(data){
//alert(data);
$('#meja').val(data);
}
});

$.ajax({
type: "POST",
url: "get_roomno.php",
data:'roomidss='+val,
success: function(data){
//alert(data);
$('#kerusi').val(data);
}
});

$.ajax({
type: "POST",
url: "get_roomno.php",
data:'roomidsss='+val,
success: function(data){
//alert(data);
$('#katil').val(data);
}
});

$.ajax({
type: "POST",
url: "get_roomno.php",
data:'roomidssss='+val,
success: function(data){
//alert(data);
$('#keytag').val(data);
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
					
						<h2 class="page-title">Setup Student Room </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Student Room</div>
									<div class="panel-body">
									
										<form method="post" class="form-horizontal">
											
											<div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Select Room Type</label>
												<div class="col-sm-8">
												<Select name="rooms" class="form-control" required>
<option value="">Select Room Type</option>

<option value="2">Two Person</option>

<option value="4">Four Person</option>

</Select>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">RFID Reg.No</label>
<div class="col-sm-8">
<textarea  class="form-control" name="rfid" id="rfid" placeholder="Please Scan your Card / Key Chain to display ID" required></textarea>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Select Student Matric Number</label>
<div class="col-sm-8">
<select name="matric_number" id="matric_number" class="form-control" required> 
<option value="">Select Student Matric Number</option>
<?php $query ="SELECT * FROM userregistration ";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->regNo;?>"><?php echo $row->regNo;?>&nbsp;&nbsp;(<?php echo $row->firstName;?>&nbsp;<?php echo $row->lastName;?>)</option>
<?php } ?>
</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Room No.</label>
<div class="col-sm-8">
<select name="room_no" id="room_no" class="form-control" onChange="getSeater(this.value);" required> 
<option value="">Select Room Number</option>
<?php $query ="SELECT * FROM facilities ";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->roomno;?>"><?php echo $row->roomno;?></option>
<?php } ?>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">KeyTag</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="keytag" id="keytag" value="" readonly>
</div>
</div>
<hr>

<div class="panel-heading">Facilities Section</div>
<div class="form-group">
<label class="col-sm-2 control-label">Wardrobe Reg.No</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="almari" id="almari" value="" readonly>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Table Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="meja" id="meja" value="" readonly>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Chair Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="kerusi" id="kerusi" value=""  readonly>
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Bed Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="katil" id="katil" value=""  readonly>
</div>
</div>
<div class="col-sm-8 col-sm-offset-2">
<input class="btn btn-primary" type="submit" name="submit" value="Create Room ">
												</div>
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
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</script>
</body>

</html>