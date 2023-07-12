<?php include "header.php"; ?>
<title>My Channels</title>
<body>
<header class="header"><meta http-equiv="Content-Type" content="text/html; charset=utf-8">MegaPlay</header>
            <div class="container">
    <div class="row-fluid">
    <a class="btn btn-primary" href="#myModalChannel" data-toggle="modal">Add Channels</a>
    <a class="btn btn-primary" href="#myModalCategory" data-toggle="modal">Add Categories</a>
	<a class="btn btn-primary" href="#myModalMovies" data-toggle="modal">Add Movies</a>
	
	<div style="float:right;">
	<a class="btn btn-primary" href="javascript:voiid(0);"><span style="color:red;">Users Online: <span id="online">0</span></span></span></a>
	<a class="btn btn-primary" href="myChannels.php">My Channels</a>
    <a class="btn btn-primary" href="myCategories.php">My Categories</a>
	<a class="btn btn-primary" href="index.php">My Movies</a>
	</div>

<?php include('modal_add.php'); ?>

                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            <thead>
                                <tr>
                                     <th style="text-align:center;">Icon</th>
                                    <th style="text-align:center;">Channel Name</th>
                                    <th style="text-align:center;">Channel Logo</th>
                                    <th style="text-align:center;">Status</th>
									<th style="text-align:center;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php
								require_once('db.php');
								$result = $conn->prepare("SELECT * FROM channels ORDER BY id DESC");
								$result->execute();
								for($i=0; $row = $result->fetch(); $i++){
								$id=$row['id'];
							?>
								<tr>
							    	<td style="text-align:center; word-break:break-all; width:300px;"><img style="height:70px" src="<?php echo $row ['channel_logo']; ?>"/></td>
								<td style="text-align:center; word-break:break-all; width:300px;"> <?php echo $row ['channel_name']; ?></td>
								<td style="text-align:center; word-break:break-all; width:300px;"> <?php echo $row ['channel_logo']; ?></td>
								<td style="text-align:center; word-break:break-all; width:300px;"> <?php if($row ['status'] == "Show"){ echo '<span style="color:green;">'.$row ['status'].'</span>';}else{echo '<span style="color:red;">'.$row ['status'].'</span>';}; ?></td>
								<td style="text-align:center; width:350px;">
									<a href="edit_channel.php<?php echo '?action=channel&id='.$id; ?>" class="btn btn-info">Edit</a>
									 <a href="#delete<?php echo $id;?>"  data-toggle="modal"  class="btn btn-danger" >Delete </a>
								</td>
									
										<!-- Modal -->
								<div id="delete<?php  echo $id;?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-header">
								<h3 id="myModalLabel">Delete</h3>
								</div>
								<div class="modal-body">
								<p><div style="font-size:larger;" class="alert alert-danger">Are you Sure you want Delete <b style="color:red;"><?php echo $row['channel_name']; ?></b> Data?</p>
								</div>
								<hr>
								<div class="modal-footer">
								<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">No</button>
								<a href="delete.php<?php echo '?action=channel&id='.$id; ?>" class="btn btn-danger">Yes</a>
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


