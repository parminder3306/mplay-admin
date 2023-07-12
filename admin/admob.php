<?php include('db.php'); ?>
<!DOCTYPE html>
<html lang="en">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <title>Google Ads</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">   
        <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
     
</head>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>
<body>

<header class="header">MegaPlay</header>
<body>


<div class="container">

<center>
<?php

$result = $conn->prepare("SELECT * FROM admob");
$result->execute();
$row = $result->fetch();
$count = $result->rowCount();

if(isset($_POST["update"])){

$banner= $_POST['banner'];
$interstitial= $_POST['interstitial'];
$status= $_POST['status'];

if($count == 0){
$add = "INSERT INTO admob (banner,interstitial,status)VALUES ('$banner','$interstitial','$status')";
$conn->exec($add);
echo "<script>alert('Goolge Ads successfully added!'); window.location='index.php'</script>";    
}else{
$upadte = "UPDATE admob SET banner ='$banner', interstitial ='$interstitial', status ='$status'";
$conn->exec($upadte);
echo "<script>alert('Successfully Edit The Ads!'); window.location='index.php'</script>";
}
}

?>
<form  method="post" action=""  enctype="multipart/form-data">
                                <h4>Edit Google Ads</h4>
                                <hr>
								<div><input type="text" name="banner" placeholder="Banner Ads" value="<?php echo $row["banner"]; ?>" required></div>
									<div><input type="text" name="interstitial" placeholder="Interstitial Ads" value="<?php echo $row["interstitial"]; ?>" required></div>
                                	<div><select name="status" required>
						   <option value="<?php echo $row["status"]; ?>"><?php echo $row["status"]; ?></option>
						   <option value="Active">Active</option>
						   <option value="Disabled">Disabled</option>
						   </select></div>	
								 <div class="control-group">
                                    <div class="controls">

                                        <button type="submit" name="update" class="btn btn-success" style="margin-right: 65px;">Save</button>
										<a href="index.php" class="btn">Back</a>
                                    </div>
                                </div>
                            </form>
								</center>
								</div>
</body>
</html>
								