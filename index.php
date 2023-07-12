<?php include 'app/db.php'; ?>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" href="favicon.png" type="image/gif" sizes="16x16">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Knect Media.">
	<meta name="description" content="Watch & Download Movies App">
	<meta name="keywords" content="">
	<title>MegaPlay</title>
	
	
<?php 
$shareid=(isset($_GET['shareid']))?$sp->real_escape_string(trim($_GET['shareid'])):'';
if(!empty($shareid)){ 
$movies = mysqli_query($sp,"select * from movies where id='$shareid'");
while($row = mysqli_fetch_assoc($movies)){

?>

<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="<?php echo $row["title"];?>" />
<meta property="og:description" content="<?php echo $row["description"];?>" />
<meta property="og:url" content="https://megaplay.in/?shareid=<?php echo $row["id"];?>"/>
<meta property="og:image" content="<?php echo $row["img_link"];?>" />
<?php
}
}
?>
	
	
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,600|Roboto:400,400i,500" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/hexagons.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<!-- start header Area -->
	<header id="header">
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo"><img width="180px" src="img/logo.jpg" alt="" title="" />
				</div>
			</div>
		</div>
	</header>
	<!-- end header Area -->

	<!-- start banner Area -->
	<section class="home-banner-area">
		<div class="container">
			<div class="row fullscreen d-flex align-items-center justify-content-between">
				<div class="home-banner-content col-lg-6 col-md-6">
					<h1>
						Watch & Download Movies
					</h1>
					<p>You can enjoy movies, videos, webseries on MegaPlay App.</p>
					<div class="download-button d-flex flex-row justify-content-start">
						<div class="buttons dark flex-row d-flex">
							<i class="fa fa-android" aria-hidden="true"></i>
							<div class="desc">
								<a href="https://megaplay.in/apk/megaplay.apk">
									<p>
										<span>Download</span><br>
										Latest version 8.0
									</p>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-img col-lg-4 col-md-6">
					<img width="300px" class="img-fluid" src="img/shot.jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start fact Area -->
	<section class="fact-area">
		<div class="container">
			<div class="fact-box">
				<div class="row align-items-center">
					<div class="col single-fact">
						<h2>500K+</h2>
						<p>Total Downloads</p>
					</div>
					<div class="col single-fact">
						<h2>10K+</h2>
						<p>Daily Users</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End fact Area -->
	

	<!-- Start Screenshot Area -->
	<section class="section-gap-top">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-6">
					<div class="section-title text-center">
						<h2>Latest Movies</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="owl-carousel owl-screenshot">
			 <?php 
$movies = mysqli_query($sp,"select * from movies order by id DESC limit 10");
while($row = mysqli_fetch_assoc($movies)){
?>
				    
					<div class="single-screenshot">
						<img style="width: 250px;height: 300px;" src="<?php echo $row["img_link"];?>" alt="">
					</div>
					
					<?php } ?>
				</div>
			</div>
		</div>
	</section>
	<!-- End Screenshot Area -->



	<!-- Start Footer Area -->
	<footer class="footer-area">
		<div class="container">
			<div class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-6 col-md-12">Designed by Knect Media 2020.</a></p>
			</div>
		</div>
	</footer>
	<!-- End Footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/tilt.jquery.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	<script src="js/hexagons.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>

</html>