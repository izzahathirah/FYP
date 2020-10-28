<?php
include('includes/config.php');

if(!empty($_POST["rids"])) 
{
$id=$_POST["rids"];
 $query ="SELECT * FROM rooms WHERE id = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->rooms);
 
 }
}

if(!empty($_POST["ridss"])) 
{
$id=$_POST["ridss"];
 $query ="SELECT * FROM rooms WHERE id= ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->keytag);
 
 }
}
if(!empty($_POST["roomid"])) 
{
$id=$_POST["roomid"];
 $query ="SELECT * FROM rooms WHERE id = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->meja);
 
 }
}


if(!empty($_POST["rid"])) 
{
$id=$_POST["rid"];
 $query ="SELECT * FROM rooms WHERE id = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->almari);
 
 }
}
if(!empty($_POST["rmid"])) 
{
$id=$_POST["rmid"];
 $query ="SELECT * FROM rooms WHERE id = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->katil);
 
 }
}
if(!empty($_POST["rmsid"])) 
{
$id=$_POST["rmsid"];
 $query ="SELECT * FROM rooms WHERE id = ?";
$stmt = $mysqli->prepare($query);
$stmt->bind_param('s',$id);
$stmt->execute();
$res=$stmt->get_result();
while($row=$res->fetch_object())
{  echo htmlentities($row->kerusi);
 
 }
}

?>