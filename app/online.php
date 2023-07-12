<?php
include 'db.php';
$time=time();
$time_check=$time-60; //SET TIME 10 Minute
$tbl_name="user_online"; // Table name

if(isset($deviceId)){
$verify=mysqli_query($sp,"SELECT * FROM $tbl_name WHERE deviceId='$deviceId'");
$count=mysqli_num_rows($verify);
if($count=="0"){
mysqli_query($sp,"INSERT INTO $tbl_name(deviceId,time)VALUES('$deviceId','$time')");
}
else {
mysqli_query($sp,"UPDATE $tbl_name SET time='$time' WHERE deviceId = '$deviceId'");
}
}
if(isset($_GET["show"])){
$fetch=mysqli_query($sp,"SELECT * FROM $tbl_name");
$count_user_online=mysqli_num_rows($fetch);

echo $count_user_online;
}

mysqli_query($sp,"DELETE FROM $tbl_name WHERE time<$time_check");

?>