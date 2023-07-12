<!DOCTYPE html>
<html lang="en">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
        <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
</head>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>

<script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>

<script type="text/javascript">
   function loadlink() {
      $.ajax({    //create an ajax request to display.php
        type: "GET",
        url: "https://megaplay.in/app/online.php?show=true",             
        dataType: "html",   //expect html to be returned                
        success: function(response){     
            $("#online").html(response);
        }
    });
   }
      loadlink();
   setInterval(function(){ loadlink() }, 5000);

</script>
