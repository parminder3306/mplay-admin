<?php
include 'db.php';

if($_GET['action'] == "movie"){

$title= $_POST['title'];
$description= $_POST['description'];
$quality= $_POST['quality'];
$language= $_POST['language'];
$channel= $_POST['channel'];
$category= $_POST['category'];
$img_link= $_POST['img_link'];
$d_link= $_POST['d_link'];

$sql = "INSERT INTO movies (title, description, quality, language, channel, category, img_link, d_link, date)
VALUES ('$title', '$description', '$quality', '$language', '$channel', '$category', '$img_link', '$d_link','".date("d-m-Y")."')";

$conn->exec($sql);
echo "<script>alert('Movie successfully added!'); window.location='index.php'</script>";
}

if($_GET['action'] == "category"){

$category= $_POST['category'];
$status= $_POST['status'];
$sql = "INSERT INTO category (category,status)VALUES ('$category','$status')";

$conn->exec($sql);
echo "<script>alert('Category successfully added!'); window.location='myCategories.php'</script>";
}

if($_GET['action'] == "channel"){

$channel= $_POST['channel'];
$logo= $_POST['logo'];
$status= $_POST['status'];
$sql = "INSERT INTO channels (channel_name,channel_logo,status)VALUES ('$channel','$logo','$status')";

$conn->exec($sql);
echo "<script>alert('Channel successfully added!'); window.location='myChannels.php'</script>";
}
?>