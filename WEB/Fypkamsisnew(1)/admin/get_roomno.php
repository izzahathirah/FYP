<?php
include('includes/config.php');


if(!empty($_POST["roomid"])) 
{
$id=$_POST["roomid"];
$query ="SELECT * FROM facilities WHERE roomno = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->almari);
 
 }
}


if(!empty($_POST["roomids"])) 
{
$id=$_POST["roomids"];
 $query ="SELECT * FROM facilities WHERE roomno = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->meja);
 
 }
}
if(!empty($_POST["roomidss"])) 
{
$id=$_POST["roomidss"];
 $query ="SELECT * FROM facilities WHERE roomno= ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->kerusi);
 
 }
}
if(!empty($_POST["roomidsss"])) 
{
$id=$_POST["roomidsss"];
 $query ="SELECT * FROM facilities WHERE roomno = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->katil);
 
 }
}

if(!empty($_POST["roomidssss"])) 
{
$id=$_POST["roomidssss"];
 $query ="SELECT * FROM facilities WHERE roomno = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->keytag);
 
 }
}

?>