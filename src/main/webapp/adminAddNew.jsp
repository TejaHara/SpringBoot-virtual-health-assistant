<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="/css/bootstrap-social.css">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/styles.css">
    <title>New Entry</title>
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-sm fixed-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand mr-auto" href="#"><img src="/images/nav-bar-logo.png" alt="VMedico�����������" height="30" width="40"></a>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="./index.html"><span
                                class="fa fa-home fa-lg"></span>Home</a> </li>
                    <li class="nav-item"><a class="nav-link" href="./aboutus.html"> <span
                                class="fa fa-info fa-lg"></span> About</a> </li>
                    <li class="nav-item"><a class="nav-link" href="#"><span class="fa fa-list fa-lg"></span> Menu</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="./contactus.html"><span
                                class="fa fa-address-card    fa-lg"></span> Contact</a> </li>

                </ul>
                <span class="navbar-text">
                    <a href="/logout" id="loginButton">
                        <span class="fa fa-sign-in"></span> Logout</a>
                </span>
            </div>

        </div>
    </nav>


    





 <header class="jumbotron jumbotron-fluid">
        <div class="row">
            <div class="row row-header">
                <div class="col-md-4 col-sm-4">
                	<br><br><br>
                    <h1>VMedico</h1>
                </div>
                <div class="col"></div>
                <div class="col-md-4 col-sm align-self-center">\
                <br>
                    <img src="/images/Jumbo-tron-logo.png" alt="logo" class="img-fluid">
                </div>


            </div>
        </div>
    </header>

    <div class="container">
        

		
		<br><br><br>
		

  <div class="container">
  <div class="row-md-12 text-center">
  <h2>Whom do you want to add?</h2></div>
  <br><br><br>
  
  <div class="row text-center">
    <div class="col-sm-3 col-xs-8">
      <a href="adminAddPatient.jsp"><button class="btn btn-dark btn-lg" type="button" >�Patient�</button></a>    
    </div>


      <div class="col-sm-3 col-xs-8">
        <a href="adminAddDoctor.jsp"><button class="btn btn-light btn-lg" type="button">��Doctor��</button></a>
            
      </div>

      <div class="col-sm-3 col-xs-8">
        <a href="adminAddLab.jsp"><button class="btn btn-dark btn-lg" type="button">Laboratory</button></a>
      </div>

      <div class="col-sm-3 col-xs-8">
        <a href="adminAddHospital.jsp"><button class="btn btn-light btn-lg" type="button">Hospital</button></a>
      </div></div>

  </div>
		
		

<br><br><br>

	<br><br><br>

	






</div>

        
    <br>
    <br>




    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-4 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="./aboutus.html">About</a></li>
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
                        <i class="fa fa-fax fa-lg"></i> +852 8765 4321<br>
                        <i class="fa fa-envelope fa-lg"></i> <a href="mailto:confusion@food.net">confusion@food.net</a>
                    </address>
                </div>
                <div class="col-12 col-sm-4 align-self-center">
                    <div class="text-center">
                        <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                        <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook"></i></a>
                        <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube"></i></a>
                        <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o"></i></a>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-auto">
                    <p>� Copyright 2020 VMedico</p>
                </div>
            </div>
        </div>
    </footer>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>


</body>

</html>