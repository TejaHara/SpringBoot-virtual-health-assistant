<!DOCTYPE html>
<%@page import="com.example.demo.Models.Patient"%>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<!--base href="/"-->
		<!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/css/bootstrap-social.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/styles.css">
		<title>Welcome Patient</title>

	</head>

	<body>
		<nav class="navbar navbar-dark navbar-expand-sm  fixed-top">
			<div class="container">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
					<span class="navbar-toggler-icon"></span>
				</button>	
				<a class="navbar-brand mr-auto" href="./index.html"><img src="img/logo.png" alt="VMedico           " height="30" width="41"></a>
				<div class="collapse navbar-collapse" id="Navbar">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item "><a class="nav-link" href="./index.html"><span class="fa fa-home fa-lg"></span> Home</a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><span class="fa fa-info fa-lg"></span> About</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><span class="fa fa-list fa-lg"></span> Menu</a></li>
						<li class="nav-item"><a class="nav-link" href="./contactus.html"><span class="fa fa-address-card fa-lg"></span> Contact</a></li>
					</ul>
					<span class="navbar-text">
                    <a href="logout" id="loginButton">
                        <span class="fa fa-sign-in"></span>Logout</a>
                	</span>
					</div>
				</div>
        </nav>
        <%Patient patient = (Patient) session.getAttribute("patient");
        %>

		<header class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="row row-header">
                <div class="col-md-4 col-sm-4">
                	<br><br><br><br><br>
                    <h2>Welcome <%=patient.getFullName()%></h2>
                </div>
                <div class="col"></div>
                <div class="col-md-4 col-sm align-self-center"><br><br>
                    <img src="/images/Jumbo-tron-logo.png" alt="logo" class="img-fluid">
                </div>


            </div>
        </div>
    </header>
<br><br><br><br>
		<div class="container">
			

			<div class="row row-content">
				<div class="col col-sm-6">
					<h2></h2>
					<p>    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <em>enim ad minim veniam</em>, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
					<p>    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
					</p>
					</div>
				<div class="col-sm">
					<div class="card">
						<h3 class="card-header bg-primary text-white">Covid-19 Stats</h3>
						<div class="card-body">
							<dl class="row">
								<dt class="col-6">Total No. of cases</dt>
								<dd class="col-6">19,847,800</dd>
								<dt class="col-6">Cured</dt>
								<dd class="col-6">12,750,384</dd>
								<dt class="col-6">Active Cases</dt>
								<dd class="col-6">6,367,963</dd>
								<dt class="col-6">Severe</dt>
								<dd class="col-6">65,009</dd>
								<dt class="col-6">Deaths</dt>
								<dd class="col-6">730,376</dd>						
							</dl>
						</div>
					</div>
				</div>
				</div>
							<div class="row row-content">
				
				<div class="col-md-12"><br><br><br><br><br>
					<div class="card card-body bg-light">
						<blockquote class="blockquote">
							<p class="mb-0">
							You are better-off wearing a mask rather than your glossy lipstick.
							</p>
							<footer class="blockquote-footer">Teja Hara,
								<cite title="Source Title">Shower Thoughts</cite>
							</footer>
						</blockquote>
					</div>
					<br><br><br><br>
				
			</div>
</div>
<br><br><br>

			<div class="row row-content">
				<div class="col-12 col-sm-12 ">
					<h2>Patient Information</h2>
					<div id="#accordion">
						<div class="card">
							<div class="card-header" role="tab" id="peterhead"> 
								<h3 class="mb-0">
									<a class="collapsed" data-toggle="collapse" data-target="#peter">
									 Personal Information</a>
									</a>
								</h3> 
							</div>
							<div class="collapsed" id="peter" data-parent="#accordion">
								<div class="card-body">
									<div class="card">
						<h3 class="card-header bg-dark text-white">Bio</h3>
						<div class="card-body">
							<dl class="row">
								<dt class="col-6">Patient Name</dt>
								<dd class="col-6"><%=patient.getFullName()%></dd>
								<dt class="col-6">Email</dt>
								<dd class="col-6"><%=patient.getEmail()%></dd>
								<dt class="col-6">Patient ID</dt>
								<dd class="col-6"><%=patient.getPid()%></dd>
								<dt class="col-6">Weight</dt>
								<dd class="col-6"><%=patient.getWeight()%></dd>
								<dt class="col-6">Age</dt>
								<dd class="col-6"><%=patient.getAge()%></dd>
								<dt class="col-6">Gender</dt>
								<dd class="col-6"><%=patient.getGender()%></dd>
								<dt class="col-6">Contact Number</dt>
								<dd class="col-6"><%=patient.getPhoneNum()%></dd>
								<dt class="col-6">Address</dt>
								<dd class="col-6"><%=patient.getAddress()%></dd>
										
							</dl>
						</div>
					</div>
								</div>
							</div>
						</div>
						
						<div class="card">
							<div class="card-header" role="tab" id="descHead"> 
								<h3 class="mb-0">
									<a  class="collapsed" data-toggle="collapse" data-target="#desc">
									 Case Description</a>
								</h3>
							</div>
							<div class="collapse " id="desc" data-parent="#accordion">
								<div class="card-body">
								<p><%=patient.getCaseDescription()%></p>
								</div>
							</div>
						</div>
						
						<div class="card">
							<div class="card-header" role="tab" id="peterhead"> 
								<h3 class="mb-0">
									<a class="collapsed" data-toggle="collapse" data-target="#agumbe">
									 Reports</a>
								</h3>
							</div>
							<div class="collapse " id="agumbe" data-parent="#accordion">
								<div class="card-body">
									<a href=""><%=patient.getReportsLink()%></a>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" role="tab" id="presHead"> 
								<h3 class="mb-0">
									<a class="collapsed" data-toggle="collapse" data-target="#pres">
									 Prescription</a>
								</h3>
							</div>
							<div class="collapse " id="pres" data-parent="#accordion">
								<div class="card-body">
									<a href=""><%=patient.getPrescriptionList()%></a></div>
							</div>
						</div>

						
						<div class="card">
							<div class="card-header" role="tab" id="peterhead"> 
								<h3 class="mb-0">
									<a class="collapsed" data-toggle="collapse" data-target="#dummy">
									 Treated under <small>Doctor & Hospital</small></a>
								</h3>
							</div>
							<div class="collapse " id="dummy" data-parent="#accordion">
								<div class="card-body">
									<a href=""><%=patient.getDocID()%></a><br>
									<a href=""><%=patient.getHospitalID()%></a>
									</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" role="tab" id="treated"> 
								<h3 class="mb-0">
									<a class="collapsed" data-toggle="collapse" data-target="#treat">
									 Tracker</a>
								</h3>
							</div>
							<div class="collapse " id="treat" data-parent="#accordion">
								<div class="card-body">
									
								 <ul>
										<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.</li>
 										<li>Labore et dolore magna aliqua. Ut <em>enim ad minim veniam</em>, quis nostrud exercitation.</li>
  										<li>Vxercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor. </li>
  										<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</li>
  										<li>Vupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</li>
  										<li>Voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur. </li>
									</ul> 	
								</div>
							</div>
						</div>
						<br><br><br><br>
					</div>	
				</div>
			</div>

		</div>
		

		<footer class="footer">
			<div class="container">
				<div class="row">             
					<div class="col-4 offset-1 col-sm-2">
						<h5>Links</h5>
						<ul class="list-unstyled">
							<li><a href="./index.html">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Menu</a></li>
							<li><a href="./contactus.html">Contact</a></li>
						</ul>
					</div>
					<div class="col-7 col-sm-5">
						<h5>Our Address</h5>
						<address>
							121, Clear Water Bay Road<br>
							Clear Water Bay, Kowloon<br>
							HONG KONG<br>
							<i class="fa fa-phone fa-lg"></i>: +852 1234 5678<br>
							<i class="fa fa-fax fa-lg"></i>: +852 8765 4321<br>
							<i class="fa fa-envelope fa-lg"></i>: <a href="mailto:confusion@food.net">confusion@food.net</a>
						</address>
					</div>
					<div class="col-12 col-sm-4 align-self-center">
						<div class="text-center">
							<a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus fa-lg"></i></a>
							<a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook fa-lg"></i></a>
							<a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin fa-lg"></i></a>
							<a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter fa-lg"></i></a>
							<a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube fa-lg"></i></a>
							<a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope fa-lg"></i></a>
						</div>
					</div>
				</div>
				<br>
				<div class="row justify-content-center">             
					<div class="col-auto">
						<p>© Copyright 2020 VMedico</p>
					</div>
				</div>
			</div>
		</footer>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>

	</body>

</html>
