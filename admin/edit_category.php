<?php 
$eid=$_GET['id'];
?>
<!DOCTYPE html>
<html lang="en">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <title>Edit Category</title>
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
$result = $conn->prepare("SELECT * FROM category where id='$eid'");
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$id=$row['id'];
?>
<form  method="post" action="edit_PDO.php<?php echo '?action=category&eid='.$id; ?>"  enctype="multipart/form-data">
                                <h4>Edit Information</h4>
                                <hr>
								<div><input type="text" name="mcategory" placeholder="Category Title" value="<?php echo $row["category"]; ?>" required></div>
                                	<div><select name="mstatus" required>
						   <option value="<?php echo $row["status"]; ?>"><?php echo $row["status"]; ?></option>
						   <option value="Show">Show</option>
						   <option value="Hide">Hide</option>
						   </select></div>	
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
								