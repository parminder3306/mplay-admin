<?php
include "db.php";

$get1=(isset($_GET['movies']))?$sp->real_escape_string(trim($_GET['movies'])):'';
$get2=(isset($_GET['category']))?$sp->real_escape_string(trim($_GET['category'])):'';
$get3=(isset($_GET['channel']))?$sp->real_escape_string(trim($_GET['channel'])):'';
$get4=(isset($_GET['version']))?$sp->real_escape_string(trim($_GET['version'])):'';
$get5=(isset($_GET['admob']))?$sp->real_escape_string(trim($_GET['admob'])):'';
$get6=(isset($_GET['online']))?$sp->real_escape_string(trim($_GET['online'])):'';

$deviceId=(isset($_GET['deviceId']))?$sp->real_escape_string(trim($_GET['deviceId'])):'';
$token=(isset($_GET['token']))?$sp->real_escape_string(trim($_GET['token'])):'';


if($get1 == "true"){
$mjson=null;
$movies = mysqli_query($sp,'select * from movies');
while($row = mysqli_fetch_assoc($movies)){
$mjson[]= $row;

}	
echo json_encode($mjson);	
}

if($get2 == "true"){
$cjson=null;    
$category = mysqli_query($sp,'select * from category');
while($row = mysqli_fetch_assoc($category)){
$cjson[]= $row;

}	
echo json_encode($cjson);	
}

if($get3 == "true"){
$chjson=null;    
$channels = mysqli_query($sp,'select * from channels where status="Show"');
while($row = mysqli_fetch_assoc($channels)){
$chjson[]= $row;

}	
echo json_encode($chjson);	
}

if($get4 == "true"){
echo "8.0";	
}

if($get5 == "true"){
$adjson=null;    
$admob= mysqli_query($sp,'select * from admob where status="Active"');
while($row = mysqli_fetch_assoc($admob)){
$adjson[]= $row;

}	
echo json_encode($adjson);
}

if($get6 == "true" && $deviceId && $token){
mysqli_query($sp,"INSERT INTO fcm (deviceId,token)VALUES('$deviceId','$token')");
include "online.php";
}

?>