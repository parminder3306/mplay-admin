<?php
   session_start();

if(isset($_POST["login"])){
   if($_POST["pin"] == "2285"){
        $_SESSION["login"] = "true";
    }else{
      echo '<script>alert("Wrong Pin !");</script>';    
    }
}  

?>

<?php include "header.php";?>
<title>MegaPlay</title>
<body>
    
<header class="header">MegaPlay</header>
<div class="container">
<?php if(!isset($_SESSION["login"])){ ?>
    
<center><form style="width:50%;" action="" method="POST">
  <input type="tel" name="pin" style="padding:15px;" placeholder="Enter Pin"/> </br>
   <button class="btn" name="login" type="submit">Login Now</button> 
</form> </center>   
    
<?  die(); } ?>

    <div class="row-fluid">
    <a class="btn btn-primary" href="#myModalChannel" data-toggle="modal">Add Channels</a>
    <a class="btn btn-primary" href="#myModalCategory" data-toggle="modal">Add Categories</a>
	<a class="btn btn-primary" href="#myModalMovies" data-toggle="modal">Add Movies</a>
	
	<div style="float:right;">
    <a class="btn btn-primary" href="javascript:voiid(0);"><span style="color:red;">Users Online: <span id="online">0</span></span></span></a>
	<a class="btn btn-primary" href="admob.php">Google Ads</a>
	<a class="btn btn-primary" href="myChannels.php">My Channels</a>
    <a class="btn btn-primary" href="myCategories.php">My Categories</a>
	<a class="btn btn-primary" href="index.php">My Movies</a>
	</div>
	

<?php include('modal_add.php'); ?>

                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            <thead>
                                <tr>
                                    <th style="text-align:center;">Title</th>
                                    <th style="text-align:center;">Description</th>
                                    <th style="text-align:center;">Quality</th>
                                    <th style="text-align:center;">Language</th>
                                    <th style="text-align:center;">Channel</th>
                                    <th style="text-align:center;">Category</th>
                                    <th style="text-align:center;">Img_link</th>
                                    <th style="text-align:center;">D_link</th>
                                    <th style="text-align:center;">Date</th>
									<th style="text-align:center;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php
							require_once('db.php');
						    if(isset($_GET["notify"])){
						    $notify=$_GET["notify"];
						    $m = $conn->prepare("SELECT * FROM movies where id='$notify'");
						    $m->execute();
						    $r = $m->fetch();
							$a = $conn->prepare("SELECT * FROM fcm");
                        	$a->execute();
                        	for($i=0; $rw = $a->fetch(); $i++){
                            $url = "https://fcm.googleapis.com/fcm/send";
                            $serverKey = 'AIzaSyBrGJXeUqoKOtkl-vBNNDlyJCFl8Un6qCU';
                            $notification = array('image' =>$r["img_link"],'title' =>$r["title"], 'body' =>$r["description"], 'sound' => 'default', 'badge' => '1', 'click_action' =>"MainActivity");
                            $arrayToSend = array('to' => $rw["token"], 'notification' => $notification,'priority'=>'high');
                            $json = json_encode($arrayToSend);
                            $headers = array();
                            $headers[] = 'Content-Type: application/json';
                            $headers[] = 'Authorization: key='. $serverKey;
                            $ch = curl_init();
                            curl_setopt($ch, CURLOPT_URL, $url);
                            curl_setopt($ch, CURLOPT_CUSTOMREQUEST,"POST");
                            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
                            curl_setopt($ch, CURLOPT_HTTPHEADER,$headers);
                            $response = curl_exec($ch);
                            curl_close($ch);
                            echo "<script>alert('".$response."'); window.location='index.php'</script>";
                            
                            }
							}
							
								$result = $conn->prepare("SELECT * FROM movies ORDER BY id DESC");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
								$id=$row['id'];
							?>
								<tr>
								<td style="text-align:center; word-break:break-all; width:300px;"> <?php echo $row ['title']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['description']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['quality']; ?></td>
								<td style="text-align:center; word-break:break-all; width:200px;"> <?php echo $row ['language']; ?></td>
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['channel']; ?></td>
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['category']; ?></td>
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['img_link']; ?></td>
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['d_link']; ?></td>
								<td style="text-align:center; word-break:break-all; width:450px;"> <?php echo $row ['date']; ?></td>
								<td style="text-align:center; width:350px;">
								    <a href="index.php<?php echo '?notify='.$id; ?>" class="btn btn-warning">Notify</a>
									<a href="edit_movie.php<?php echo '?id='.$id; ?>" class="btn btn-info">Edit</a>
									 <a href="#delete<?php echo $id;?>"  data-toggle="modal"  class="btn btn-danger" >Delete </a>
								</td>
									
										<!-- Modal -->
								<div id="delete<?php  echo $id;?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-header">
								<h3 id="myModalLabel">Delete</h3>
								</div>
								<div class="modal-body">
								<p><div style="font-size:larger;" class="alert alert-danger">Are you Sure you want Delete <b style="color:red;"><?php echo $row['title']; ?></b> Data?</p>
								</div>
								<hr>
								<div class="modal-footer">
								<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">No</button>
								<a href="delete.php<?php echo '?action=movie&id='.$id; ?>" class="btn btn-danger">Yes</a>
								</div>
								</div>
								</div>
								</tr>
								<?php } ?>
                            </tbody>
                        </table>


          
        </div>
        </div>
        </div>
    </div>


</body>
</html>


