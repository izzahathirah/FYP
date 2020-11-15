



<?php if($_SESSION['id'])
	
{ ?><div class="brand " style="background-color:#116466">
		<a href="#" class="logo" style="font-size:16px; color:#D1E8E2;   font-weight: bold;">Kamsis Management System</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li class="ts-account">
<?php	
$uid=$_SESSION['login'];

	 $ret = "SELECT * FROM userregistration where email=?";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('s',$uid);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
				<a href="#"><img src="img/stud.png" class="ts-avatar hidden-side" alt=""> <?php echo $row->regNo;?> <i class="fa fa-angle-down hidden-side"></i></a>
							<?php } ?>
				<ul>
					<li><a href="my-profile.php">My Account</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>

<?php
} else { ?>
<div class="brand clearfix">
		<a href="#" class="logo" style="font-size:16px;">Kamsis Management System</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		
	</div>
	<?php } ?>