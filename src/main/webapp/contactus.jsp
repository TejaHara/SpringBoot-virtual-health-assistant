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
    <title>Contact Us</title>
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-sm fixed-top">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand mr-auto" href="#"><img src="/images/nav-bar-logo.png" alt="VMedico           " height="30" width="40"></a>
            <div class="collapse navbar-collapse" id="Navbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="./index.html">           <span
                                class="fa fa-home fa-lg"></span>Home</a> </li>
                    <li class="nav-item"><a class="nav-link" href="./aboutus.html"> <span
                                class="fa fa-info fa-lg"></span> About</a> </li>
                    <li class="nav-item"><a class="nav-link" href="#"><span class="fa fa-list fa-lg"></span> Menu</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="./contactus.html"><span
                                class="fa fa-address-card    fa-lg"></span> Contact</a> </li>

                </ul>
                
            </div>

        </div>
    </nav>


    






    <header class="jumbotron jumbotron-fluid">
        <div class="row">
            <div class="row row-header">
                <div class="col-md-4 col-sm-4">
                	<br><br><br>
                    <h1>VMedico</h1>
                    <h2>Flawless medical assistance at the comfort of your couch!</h2>
                </div>
                <div class="col"></div>
                <div class="col-md-4 col-sm align-self-center">
                <br>
                    <img src="/images/Jumbo-tron-logo.png" alt="logo" class="img-fluid">
                </div>


            </div>
        </div>
    </header>
    <div class="container">

<div class="row row-content">
           <div class="col-12">
              <h3>Location Information</h3>
           </div>
            <div class="col-12 col-sm-4 offset-sm-1">
                   <h5>Our Address</h5>
                    <address style="font-size: 100%">
		              121, Clear Water Bay Road<br>
		              Clear Water Bay, Kowloon<br>
		              HONG KONG<br>
		              <i class="fa fa-phone"></i>: +852 1234 5678<br>
		              <i class="fa fa-fax"></i>: +852 8765 4321<br>
		              <i class="fa fa-envelope"></i>:
                        <a href="mailto:confusion@food.net">v</a>
		           </address>
            </div>
            <div class="col-12 col-sm-6 offset-sm-1">
                <h5>Map of our Location</h5>
            </div>
            <div class="col-12 col-sm-11 offset-sm-1">
                <div class="btn-group" role="group">
                    <a role="button" class="btn btn-primary" href="tel:+85212345678"><i class="fa fa-phone"></i> Call</a>
                    <a role="button" class="btn btn-info"><i class="fa fa-skype"></i> Skype</a>
                    <a role="button" class="btn btn-success" href="mailto:confusion@food.net"><i class="fa fa-envelope-o"></i> Email</a>
                </div>
            </div>
        </div>

        <div class="row row-content">
           <div class="col-12">
              <h3>Send us your Feedback</h3>
           </div>
            <div class="col-12 col-md-9">
                <form action="">
                    <div class="form-group row">
                        <label for="firstname" class=" col-md-2 col-form-label">First Name</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="firstname" name="firstName" placeholder="firstName Holder">
                        </div>
                    </div>

                    <div class="form-group row">
                        
                        <label for="lastname" class=" col-md-2 col-form-label">Last Name</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="lastname" name="lastName" placeholder="lastName Holder">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="telnum" class="col-12 col-md-2 col-form-label">Telnum</label>
                        <div class="col-5 col-md-3">
                            <input type="text" class="form-control" id="areacode" name="areaCode" placeholder="areaCode Holder">
                        </div>

                        <div class="col-7 col-md-7">
                            <input type="text" class="form-control" id="telnum" name="telNum" placeholder="telNum Holder">
                        </div>
                    </div>
                        
                    <div class="form-group row">
                        <label for="email" class="col-md-2 col-form-label">Email</label>
                        <div class="col-md-10">
                            <input type="email" class="form-control" id="email" name="eMail" placeholder="eMail Holder">
                        </div>
                    </div>
                        
                        <div class="form-group row">
                            <div class="col-md-6 offset-md-2">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" name="approve" id="approve">
                                    <label class="form-check-label" for="approve">
                                        <strong>May we contact you?</strong>
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3 offset-md-1">
                                <select class="form-control" name="" id="">
                                    <option value="">Tel</option>
                                    <option value="">Email</option>
                                </select>
                            </div>
                        </div>
                    
                    <div class="form-group row">
                        <label for="feedback" class="col-md-2 col-form-label">Your feedback</label>
                        <div class="col-md-10">
                            <textarea  class="form-control" id="feedback" name="feedBack" placeholder="feedBack Holder" rows="6"></textarea>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="offset-md-2 col-md-10">
                            <button type="submit" class="btn btn-primary">Send Feedback</button>
                        </div>
                    </div>
                    
                </form>
            </div>
             <div class="col-12 col-md">
            </div>
       </div>
</div>
        
    <br>
    <br>

    

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
                        <i class="fa fa-envelope fa-lg"></i> <a href="mailto:help@vmedico.com">help@vmedico.com</a>
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