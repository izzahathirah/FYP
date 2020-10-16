<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if(isset($_POST['submit']))
{
$almari=$_POST['almari'];
$meja=$_POST['meja'];
$katil=$_POST['katil'];
$kerusi=$_POST['kerusi'];
$id=$_GET['id'];
$query="update rooms set almari=?,meja=? ,katil=? ,kerusi=? where id=?";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('sssss',$almari,$meja,$katil,$kerusi,$id);
$stmt->execute();
echo"<script>alert('Room Details has been Updated successfully');</script>";
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
	<title>Edit Room Details</title>
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
</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Edit Room Details </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Edit Room Details</div>
									<div class="panel-body">
										<form method="post" class="form-horizontal">
												<?php	
												$id=$_GET['id'];
	$ret="select * from rooms where id=?";
		$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('i',$id);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
						<div class="hr-dashed"></div>
						<div class="form-group">
						<label class="col-sm-2 control-label">Wardrobe </label>
					<div class="col-sm-8">
					<input type="text"  name="almari" value="<?php echo $row->almari;?>"  class="form-control"> </div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">Table  </label>
					<div class="col-sm-8">
					<input type="text"  name="meja" value="<?php echo $row->meja;?>"  class="form-control"> </div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">Chair  </label>
					<div class="col-sm-8">
					<input type="text"  name="kerusi" value="<?php echo $row->kerusi;?>"  class="form-control"> </div>
					</div>
					
						<div class="form-group">
						<label class="col-sm-2 control-label">Bed  </label>
					<div class="col-sm-8">
					<input type="text"  name="katil" value="<?php echo $row->katil;?>"  class="form-control"> </div>
					</div>
				 <div class="form-group">
				<label class="col-sm-2 control-label">Room no </label>
		<div class="col-sm-8">
	<input type="text" class="form-control" name="rmno" id="rmno" value="<?php echo $row->room_no;?>" disabled>
	<span class="help-block m-b-none">
													Room no can't be changed.</span>
						 </div>
						</div>
<div class="form-group">
									<label class="col-sm-2 control-label">KeyTag </label>
									<div class="col-sm-8">
									<input type="text" class="form-control" name="keytag" value="<?php echo $row->keytag;?>" >
												</div>
											</div>


<?php } ?>
												<div class="col-sm-8 col-sm-offset-2">
													
													<input class="btn btn-primary" type="submit" name="submit" value="Update Room Details ">
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