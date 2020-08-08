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
    <title>Welcome to VMedioc</title>
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-sm fixed-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand mr-auto" href="#"><img src="img/logo.png" alt="VMedico�����������" height="30" width="40"></a>
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
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
                    <h1>Ristorante con Fusion</h1>
                    <h3>Welcome Doctor</h3>
                </div>
                <div class="col"></div>
                <div class="col-12 col-sm align-self-center">
                    <img src="img/logo.png" alt="logo" class="img-fluid">
                </div>


            </div>
        </div>
    </header>

    <div class="container">
        
<br><br><br>

		
	
		
		









        <div class="row row-content align-items-center">
            <div class="col-12 col-sm-4 order-sm-last col-md-3">
                <h3>Our Lipsmacking Culinary Creations</h3>
            </div>
            <div class="col col-sm col-md">
                <div class="media">
                    <img src="img/uthappizza.png" alt="Uthappizza" class="d-flex mr-3 img-thumbnail align-self-center">
                    <div class="media-body">
                        <h2 class="mt-0">Uthappizza <span class="badge badge-danger"> HOT </span> <span
                                class="badge badge-pill badge-secondary"> $4.99 </span></h2>
                        <p>A unique combination of Indian Uthappam (pancake) and Italian pizza, topped with Cerignola
                            olives, ripe vine cherry tomatoes, Vidalia onion, Guntur chillies and Buffalo Paneer.</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="row row-content align-items-center">
            <div class="col-12 col-sm-4 col-md-3">
                <h3>This Month's Promotions</h3>
            </div>
            <div class="col col-sm col-md">
                <div class="media">
                    <img src="img/buffet.png" alt="Buffet"
                        class="d-flex mr-3 order-sm-last img-thumbnail align-self-center">
                    <div class="media-body">
                        <h2 class="mt-0">Weekend Grand Buffet <span class="badge badge-danger"> NEW </span></h2>
                        <p>Featuring mouthwatering combinations with a choice of five different salads, six enticing
                            appetizers, six main entrees and five choicest desserts. Free flowing bubbly and soft
                            drinks. All for just $19.99 per person </p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row row-content align-items-center">
            <div class="col-12 col-sm-4 order-sm-last col-md-3">
                <h3>Meet our Culinary Specialists</h3>
            </div>
            <div class="col col-sm col-md">
                <div class="media">
                    <img src="img/alberto.png" alt="Alberto" class="d-flex mr-3 img-thumbnail align-self-center">
                    <div class="media-body">
                        <h2 class="mt-0">Alberto Somayya</h2>
                        <h4>Executive Chef</h4>
                        <p>Award winning three-star Michelin chef with wide International experience having worked
                            closely with whos-who in the culinary world, he specializes in creating mouthwatering
                            Indo-Italian fusion experiences. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <br>

    <div class="container">
        <div class="row justify-content-center">
            <div class="row align-self-center  col-12 col-sm-6">
                <div class="card" id="reserve_card">

                    <h3 class="card-header bg-warning text-white">Reserve Table</h3>
                    <div class="card-body">
                        <dl class="row">
                            <dt class="col-3">Number of Guests</dt>
                            <dd class="col-9">
                                <div class="form-horizontal" role="form">
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                    value="option1"> 1 
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio2"
                                                    value="option2"> 2 
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio3"
                                                    value="option3"> 3 
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1"
                                                    value="option1"> 4 
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio2"
                                                    value="option2"> 5 
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" name="inlineRadioOptions" id="inlineRadio3"
                                                    value="option3"> 6 
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </dd>
                            <dt class="col-3">Date &amp; Time</dt>
                            <dd class="col-9">
                                <div class="form-group row">
                                    <div class="col-5 col-md-5">
                                        <input type="text" class="form-control" id="areacode" name="areaCode"
                                            placeholder="Date">
                                    </div>

                                    <div class="col-5 col-md-5">
                                        <input type="text" class="form-control" id="telnum" name="telNum"
                                            placeholder="Time">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-12 col-sm align-self-center">
                                        <button class="btn block-button bg-primary text-white">  Reserve  </button>
                                    </div>
                                </div>

                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
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
<!-- <script src="js/scripts.js"></script>
<script>
    $(document).ready(function(){
        $("#mycarousel").carousel( { interval: 2000 } );
        $("#carouselButton").click(function(){
            if($('#carouselButton').children('span').hasClass('fa-pause')){
                $("#mycarousel").carousel('pause');
                $('#carouselButton').children('span').removeClass('fa-pause');
                $('#carouselButton').children('span').addClass('fa-play')

            }
            else if($('#carouselButton').children('span').hasClass('fa-play')){
                $("#mycarousel").carousel('cycle');
                $('#carouselButton').children('span').removeClass('fa-play');
                $('#carouselButton').children('span').addClass('fa-pause')

            }
        });
        
    

    
        $("#loginButton").click(function(){
            $("#loginModal").modal('show');
        });
    
        $("#reserveButton").click(function(){
            $("#reserveModal").modal('show');
        });
    });
</script> -->



</body>

</html>