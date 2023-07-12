<?php
require_once('db.php');
							
$result = $conn->prepare("SELECT * FROM movies");
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
    
$get_id=$row["id"];
$img_link=$row["img_link"];

if(download_image_movies($img_link,"images/movies/".$get_id.".png") == "success"){
$sql = "UPDATE movies SET img_link ='https://megaplay.in/admin/images/movies/".$get_id.".png' WHERE id = '$get_id' ";
$conn->exec($sql);
 echo "<script>alert('Success');</script>"; 
}else{
   echo "<script>alert('!error');</script>"; 
}

								}


function download_image_movies($url,$saveto){
    $ch = curl_init ($url);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
    $raw=curl_exec($ch);
    curl_close ($ch);
    if(file_exists($saveto)){
        unlink($saveto);
    }
    $fp = fopen($saveto,'x');
    fwrite($fp, $raw);
    fclose($fp);
    
     if ($raw) {
        return "success";
    } else {
        return "failure";
    }
}

?>