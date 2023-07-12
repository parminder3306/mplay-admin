<?php 
$eid=$_GET['id'];
?>
<!DOCTYPE html>
<html lang="en">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <title>Edit Movies</title>
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
include('db.php');
$result = $conn->prepare("SELECT * FROM movies where id='$eid'");
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$id=$row['id'];
?>
<form  method="post" action="edit_PDO.php<?php echo '?action=movie&eid='.$id; ?>"  enctype="multipart/form-data">
                                <img width="250px" src="<?php echo $row["img_link"]; ?>"/>
                                <hr>
								<div><input type="text" name="mtitle" placeholder="Title" value="<?php echo $row["title"]; ?>" required></div>
								<div><input type="text" name="mdescription" value="<?php echo $row["description"]; ?>"/></div>							
					<div><select name="mquality" required>
						   <option value="<?php echo $row["quality"]; ?>"><?php echo $row["quality"]; ?></option>
						   <option value="144p">144p</option>
						   <option value="240p">240p</option>
						   <option value="360p">360p</option>
						   <option value="480p">480p</option>
						   <option value="720p">720p</option>
						   <option value="1080p">1080p</option>
						   </select></div>							
					<div><select name="mlanguage" required>
					  <option value="<?php echo $row["language"]; ?>"><?php echo $row["language"]; ?></option>
						   <option value="Punjabi">Punjabi</option>
						   <option value="Hindi">Hindi</option>
						   <option value="Hindi,English">Hindi,English</option>
						   	<option value="Hindi,Tamil">Hindi,Tamil</option>
						   	<option value="Hindi,Telugu">Hindi,Telugu</option>
						   <option value="English">English</option>
						   <option value="Tamil">Tamil</option>
						   <option value="Telugu">Telugu</option>
						   <option value="Urdu">Urdu</option>
						   </select></div>	
						   	<div><select name="mchannel" required>
						  <option value="<?php echo $row["channel"]; ?>"><?php echo $row["channel"]; ?></option>
						   <?php
			             require ('db.php');
						 $chann = $conn->prepare("SELECT * FROM channels");
						 $chann->execute();
						 for($i=0; $r= $chann->fetch(); $i++){
							 echo '<option value="'.$r["channel_name"].'">'.$r["channel_name"].'</option>';  							   
						   }						   
						   ?>				
						   </select></div>
					<div><select name="mcategory" required>
						  <option value="<?php echo $row["category"]; ?>"><?php echo $row["category"]; ?></option>
						   <?php
			             require ('db.php');
						 $cat = $conn->prepare("SELECT * FROM category");
						 $cat->execute();
						 for($i=0; $r= $cat->fetch(); $i++){
							 echo '<option value="'.$r["category"].'">'.$r["category"].'</option>';  							   
						   }						   
						   ?>				
						   </select></div>													
					<div><input type="text" name="mimg_link" value="<?php echo $row["img_link"]; ?>"/></div>														
					<div><input type="text" name="md_link" value="<?php echo $row["d_link"]; ?>"/></div>		
                
								 <div class="control-group">
                                    <div class="controls">

                                        <button type="submit" name="update" class="btn btn-success" style="margin-right: 65px;">Save</button>
										<a href="index.php" class="btn">Back</a>
                                    </div>
                                </div>
                            </form>
<?php } ?>
								</center>
								</div>
</body>
</html>
								