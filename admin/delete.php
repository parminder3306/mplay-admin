<?php
require_once('db.php');

$get_id=$_GET['id'];

if($_GET["action"] == "movie"){
$sql = "Delete from movies where id = '$get_id'";
$conn->exec($sql);
unlink("images/movies/".$get_id.".png");
header('location:index.php');
}

if($_GET["action"] == "category"){
$sql = "Delete from category where id = '$get_id'";
$conn->exec($sql);
header('location:myCategories.php');
}

if($_GET["action"] == "channel"){
$sql = "Delete from channels where id = '$get_id'";
$conn->exec($sql);
unlink("images/channels/".$get_id.".png");
header('location:myChannels.php');
}
?>