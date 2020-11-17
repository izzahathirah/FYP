<TABLE  id="table">
  <TR>
    <TH>Sr.No.</TH>
    
    <TH>KeyTag</TH>
    <TH>Room-no</TH>
    <TH>CardID</TH>
  </TR>
<?php 
//Connect to database
require('includes/config.php');

	 $ret = "SELECT * FROM users INNER JOIN rooms ON users.CardID = rooms.CardID ";  
	$stmt= $mysqli->prepare($ret) ;
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
   <TR>
      <TD><?php echo $row->id;?></TD>
      
      <TD><?php echo $row->keytag;?></TD>
      <TD><?php echo $row->blok;?>-<?php echo $row->aras;?>-<?php echo $row->room_no;?></TD>
      <TD><?php echo $row->CardID;?></TD>
   </TR>
<?php } ?>
</TABLE>