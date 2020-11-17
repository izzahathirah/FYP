<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if(isset($_POST['submit']))
{
$meja=$_POST['meja'];
$katil=$_POST['katil'];
$almari=$_POST['almari'];
$kerusi=$_POST['kerusi'];
$roomno=$_POST['roomno'];
$aras=$_POST['aras'];
$blok=$_POST['blok'];

$keytag=$_POST['keytag'];
$sql="SELECT roomno  FROM facilities where roomno=? && aras=? && blok=? && keytag=?";
$stmt1 = $mysqli->prepare($sql);
$stmt1->bind_param('ssss',$roomno,$aras,$blok,$keytag);
$stmt1->execute();
$stmt1->store_result(); 
$row_cnt=$stmt1->num_rows;;
if($row_cnt>0)
{
echo"<script>alert('Room alreadt exist');</script>";
}
else
{
$query="insert into  facilities (meja,katil,almari,kerusi,roomno,aras,blok,keytag) values(?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('ssssssss',$meja,$katil,$almari,$kerusi,$roomno,$aras,$blok,$keytag);
$stmt->execute();
echo"<script>alert('Facilities Information has been added successfully');</script>";
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
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
  .box{
        color: #000000;
      
        display: none;
      
    }
   

</style>
<script>
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        var inputValue = $(this).attr("id");
        var targetBox = $("." + inputValue);
        $(".box").not(targetBox).hide();
        $(targetBox).show();
    });
});
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
					
						<h2 class="page-title" style="margin-top:8%; ">Add a Room Information </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Room Information</div>
									<div class="panel-body">
		
										<form method="post" class="form-horizontal">
											
											<div class="hr-dashed"></div>



<div class="form-group">
<label class="col-sm-2 control-label">Room No.</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="roomno" id="roomno" value="" placeholder="Room Number" required="required">
</div>

<label class="col-sm-1 control-label">Level.</label>
<div class="col-sm-2">
 <select  name="aras" id="aras" class="form-control"  required>
 <option readonly="true" >Level</option>
 <option value="1">1</option>
 <option value="2">2</option>
 <option value="3">3</option>
 <option value="4">4</option>
 <option value="5">5</option>
    </select>
</div>
<label class="col-sm-1 control-label ">Blok</label>
<div class="col-sm-2 ">

 <select  name="blok" id="blok" class="form-control " >
 <option readonly="true">Blok</option>
 <option value="A3" style="color: #2F2FA2; font-weight: bold;">A3</option>
 <option value="A4" style="color: #2F2FA2; font-weight: bold;">A4</option>
 <option value="A5" style="color: #2F2FA2; font-weight: bold;">A5</option>

 <option value="B1" style="color: #F64C72; font-weight: bold;">B1</option>
 <option value="B2" style="color: #F64C72; font-weight: bold;">B2</option>
 <option value="B3" style="color: #F64C72; font-weight: bold;">B3</option>
 <option value="B4" style="color: #F64C72; font-weight: bold;">B4</option>
 <option value="B5" style="color: #F64C72; font-weight: bold;">B5</option>
 <option value="B6" style="color: #F64C72; font-weight: bold;">B6</option> 
 <option value="B7" style="color: #F64C72; font-weight: bold;">B7</option>
    </select>

</div>
</div>	


<div class="form-group">
<label class="col-sm-2 control-label">KeyTag</label>
<div class="col-sm-2">
 <select  name="keytag" id="keytag" class="form-control" >
 <option readonly="true">KeyTag</option>
 <option value="A">A</option>
 <option value="B">B</option>
 <option value="C">C</option>
 <option value="D">D</option>

    </select>
</div>



</div>
<div class="form-group">
<label class="col-sm-2 control-label">Wardrobe Reg.No</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="almari" id="almari" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Table Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="meja" id="meja" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Chair Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="kerusi" id="kerusi" value="" required="required">
</div>
</div>
<div class="form-group">
<label class="col-sm-2 control-label">Bed Reg.no</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="katil" id="katil" value="" required="required">
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