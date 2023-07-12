	    <!-- Button to trigger modal -->
	<br>
	<br>
	<br>
    <!-- Modal channel -->
    <div id="myModalChannel" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
		<form method="post" action="add.php?action=channel"  enctype="multipart/form-data">
    <div style="font-size: 20px;" id="myModalLabel">Add Channels</div>
    </div>
    <div class="modal-body">
					<center>
					<div><input type="text" name="channel" placeholder="Channel Title" required></div>	
					<div><input type="text" name="logo" placeholder="Channel Logo" required></div>	
					<div><select name="status" required>
						   <option value="">Select Status</option>
						   <option value="Show">Show</option>
						   <option value="Hide">Hide</option>
						   </select></div>	
	<center>
    </div>
    <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
<button type="submit" name="Submit" class="btn btn-primary">Add</button>
    </div>
	

					</form>
    </div>		

 <!-- Modal channel -->
    <div id="myModalCategory" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
		<form method="post" action="add.php?action=category"  enctype="multipart/form-data">
    <div style="font-size: 20px;" id="myModalLabel">Add Category</div>
    </div>
    <div class="modal-body">
					<center>
					<div><input type="text" name="category" placeholder="Category Name" required></div>	
					<div><select name="status" required>
						   <option value="">Select Status</option>
						   <option value="Show">Show</option>
						   <option value="Hide">Hide</option>
						   </select></div>	
	<center>
    </div>
    <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
<button type="submit" name="Submit" class="btn btn-primary">Add</button>
    </div>
	

					</form>
    </div>			
	
	
	 <!-- Modal movies-->
    <div id="myModalMovies" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
		<form method="post" action="add.php?action=movie"  enctype="multipart/form-data">
    <div style="font-size: 20px;" id="myModalLabel">Add Movies</div>
    </div>
    <div class="modal-body">
					<center>
					<div><input type="text" name="title" placeholder="Title" required></div>
					<div><textarea class="form-control" rows="3" name="description" placeholder="Description" required></textarea></div>							
					<div><select name="quality" required>
						   <option value="">Select Quality</option>
						   <option value="144p">144p</option>
						   <option value="240p">240p</option>
						   <option value="360p">360p</option>
						   <option value="480p">480p</option>
						   <option value="720p">720p</option>
						   <option value="1080p">1080p</option>
						   </select></div>							
					<div><select name="language" required>
					       <option value="">Select Language</option>
						   <option value="Punjabi">Punjabi</option>
						   <option value="Hindi">Hindi</option>
						   <option value="English">English</option>
						   	<option value="Hindi,English">Hindi,English</option>
						   	<option value="Hindi,Tamil">Hindi,Tamil</option>
						   	<option value="Hindi,Telugu">Hindi,Telugu</option>
						   <option value="Tamil">Tamil</option>
						   <option value="Telugu">Telugu</option>
						   <option value="Urdu">Urdu</option>
						   </select></div>
				<div><select name="channel" required>
						  <option value="">Select Channel</option>
						   <?php
			             require ('db.php');
						 $chann = $conn->prepare("SELECT * FROM channels");
						 $chann->execute();
						 for($i=0; $r= $chann->fetch(); $i++){
							 echo '<option value="'.$r["channel_name"].'">'.$r["channel_name"].'</option>';  							   
						   }						   
						   ?>				
						   </select></div>	   
					<div><select name="category" required>
					     <option value="">Select Category</option>
						   <?php
			             require ('db.php');
						 $cat = $conn->prepare("SELECT * FROM category");
						 $cat->execute();
						 for($i=0; $c = $cat->fetch(); $i++){
							 echo '<option value="'.$c["category"].'">'.$c["category"].'</option>';  							   
						   }						   
						   ?>				
						   </select></div>													
					<div><textarea rows="3" name="img_link" placeholder="Image Link" required></textarea></div>															
					<div><textarea rows="3" name="d_link" placeholder="Download Links" required></textarea></div>															
	<center>
    </div>
    <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
<button type="submit" name="Submit" class="btn btn-primary">Add</button>
    </div>
	

					</form>
    </div>			