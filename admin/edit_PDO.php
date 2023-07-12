<?php
include 'db.php';
include 'download_images.php';

$get_id=$_REQUEST['eid'];

if($_GET["action"] == "movie"){

$title= $_POST['mtitle'];
$description= $_POST['mdescription'];
$quality= $_POST['mquality'];
$language= $_POST['mlanguage'];
$channel= $_POST['mchannel'];
$category= $_POST['mcategory'];
$img_link= $_POST['mimg_link'];
$d_link= $_POST['md_link'];

if(download_image_movies($img_link,"images/movies/".$get_id.".png") == "success"){
$sql = "UPDATE movies SET title ='$title', description ='$description', quality ='$quality', language ='$language', channel ='$channel',category ='$category', img_link ='https://megaplay.in/admin/images/movies/".$get_id.".png', d_link ='$d_link' WHERE id = '$get_id' ";
$conn->exec($sql);
echo "<script>alert('Successfully Edit The Movie!'); window.location='index.php'</script>";
}else{
   echo "<script>alert('!error');</script>"; 
}
}

if($_GET["action"] == "category"){

$category= $_POST['mcategory'];
$status= $_POST['mstatus'];

$sql = "UPDATE category SET category ='$category', status ='$status'  WHERE id = '$get_id' ";
$conn->exec($sql);
echo "<script>alert('Successfully Edit The Category!'); window.location='myCategories.php'</script>";
}

if($_GET["action"] == "channel"){

$channel= $_POST['mchannel'];
$logo= $_POST['mlogo'];
$status= $_POST['mstatus'];

if(download_image_channels($logo,"images/channels/".$get_id.".png") == "success"){
$sql = "UPDATE channels SET channel_name ='$channel',channel_logo ='https://megaplay.in/admin/images/channels/".$get_id.".png', status ='$status'  WHERE id = '$get_id' ";
$conn->exec($sql);
echo "<script>alert('Successfully Edit The Channel!'); window.location='myChannels.php'</script>";
}else{
   echo "<script>alert('!error');</script>"; 
}
}



?>

