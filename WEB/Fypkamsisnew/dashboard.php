<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

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
	
	<title>DashBoard</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">

</head>

<body>



<button onclick="togglePopup()">Show Popup</button>
<?php include("includes/header.php");?>

	<div class="ts-main-content">
		<?php include("includes/sidebar.php");?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row" >
					<div class="col-md-12">

						<h2 class="page-title" style="margin-top:10%; font-family:Lucida Sans Unicode;font-weight: bold; ">Dashboard</h2>
						
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-3">
										<div class="panel panel-default">
											<a href="my-profile.php" ><div class="panel-body bk-primary text-light">
												<div class="stat-panel text-center" >


<img src="img/stud.png" height="40px" width="40px" >
													<div class="stat-panel-number h1 " >My Profile</div>
													
												</div>
											</div>
											<a href="my-profile.php" class="block-anchor panel-footer text-center">Full Detail <i class="fa fa-arrow-right"></i></a>
										</div>
									</div>
									<div class="col-md-3" >
										<a href="room-details.php"><div class="panel panel-default" >
											<div class="panel-body bk-success text-light" style="background-color:red;">
												<div class="stat-panel text-center">
<img src="img/bed.png" height="40px" width="40px">
												<div class="stat-panel-number h1 ">My Room</div>
													
												</div>
											</div>
											<a href="room-details.php" class="block-anchor panel-footer text-center">See All &nbsp; <i class="fa fa-arrow-right"></i></a>
										</div>
									</div>
							
						<div class="col-md-3">
										<div class="panel panel-default">
											<div class="panel-body bk-success text-light">
												<div class="stat-panel text-center">
<img src="img/tick.png" height="40px" width="40px">
												<div class="stat-panel-number h1 ">Comfirmation</div>
													
												</div>
											</div>
											<a href="book-hostel.php" class="block-anchor panel-footer text-center">Update &nbsp; <i class="fa fa-arrow-right"></i></a>
										</div>
									</div>
									<div class="col-md-3">
										<a href="access-logkey.php"> <div class="panel panel-default">
											<div class="panel-body bk-success text-light" style="background-color:green;">
												<div class="stat-panel text-center">
<img src="img/lock.png" height="40px" width="40px">  
												<div class="stat-panel-number h1 ">Door History</div>
													
												</div>
											</div>
											<a href="access-logkey.php" class="block-anchor panel-footer text-center">Overview &nbsp; <i class="fa fa-arrow-right"></i></a>
										</div>
									</div>
									
									<div class="col-md-5 col-md-offset-">
						<marquee><h2 class="page-title" style="font-size:20px; font-weight: 200px;">Welcome To Kamsis Management System </h2></marquee>
						<div class=" row pt-1x pb-2x ">
						<div class="col-md-1 col-md-offset-1">
						<img src="img/jpkk.png" class="ts-avatar hidden-side" weight="40px" height="40px" alt=""> 
						</div>
							<div class="col-md-9 col-md-offset-1">
							<p>
							Welcome to the Kamsis of Tuanku Syed Sirajudin Polytechnic Kamsis. This site aims to provide a space for students to make revisions regarding Kamsis. 
							Apart from that, students can also apply to return to the village and leave the Kamsis. 
							With this system, monitoring the movement of students on Kamsis can be monitored in a more organized manner.</p>
							
							
							</div>
							
							
						</div>
						
					</div>
						<div class="col-md-5 col-md-offset-1">
						<marquee><h2 class="page-title" style="font-size:20px; font-weight: 200px; color:red;">!!! Important Annoucement !!!</h2></marquee>
						<div class=" row pt-1x pb-2x ">
						<div class="col-md-1 col-md-offset-1">
						<img src="img/alert.png" class="ts-avatar hidden-side" weight="40px" height="40px" alt=""> 
						</div>
							<div class="col-md-9 col-md-offset-1">
							<p>
						Each student must update facilities information based on their room information.
						If students do not update facilities information, the warden will take action by freezing 
						access to the matrix card in the designated room</p>
								
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

	<script>
		
	window.onload = function(){
    
		// Line chart from swirlData for dashReport
		var ctx = document.getElementById("dashReport").getContext("2d");
		window.myLine = new Chart(ctx).Line(swirlData, {
			responsive: true,
			scaleShowVerticalLines: false,
			scaleBeginAtZero : true,
			multiTooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",
		}); 
		
		// Pie Chart from doughutData
		var doctx = document.getElementById("chart-area3").getContext("2d");
		window.myDoughnut = new Chart(doctx).Pie(doughnutData, {responsive : true});

		// Dougnut Chart from doughnutData
		var doctx = document.getElementById("chart-area4").getContext("2d");
		window.myDoughnut = new Chart(doctx).Doughnut(doughnutData, {responsive : true});

	}
	</script>

</body>

</html>