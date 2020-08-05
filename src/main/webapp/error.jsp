<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Main Page</title>

<style type="text/css">
   .jumbotron {
    background-color: darkblue;
    color: #fff;
    padding: 60px 25px;
    font-family: Montserrat, sans-serif;
  }
  .navbar {
    margin-bottom: 0;
    background-color: darkblue;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
.row{
  padding-left: 25%;
  padding-right: 25%;
  padding-top: 4%;
}
  .panel {
    
    border: 1px solid darkblue; 
    border-radius:0 !important;
    transition: box-shadow 1s;
    width: 100%;

  }
  .panel:hover {
    box-shadow: 6px 0px 40px rgba(0,0,0, .6);
  }
  

</style>
    <!-- Bootstrap -->
    
    <link rel="stylesheet" href="css/custom1.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">SBoA</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="homePage.html">HOME</a></li>
        <li><a href="#">ABOUT</a></li>
        <li><a href="#">JOBS</a></li>
        <li><a href="#">COVID-19</a></li>
        <li><a href="#">BLOGS</a></li>
        <li><a href="#">SERVICES</a></li>
        <li><a href="#">CONTACT US</a></li>
      </ul>
    </div>
  </div>
</nav>


    <div class="jumbotron text-center ">
  		<h1>VMedico</h1> 
 		<p>Waiting for your token number is bygone now!</p> 
	</div>





  <div class="row slideanim">
    <div class="col-sm-3 col-xs-8">
      <a href="patientLogin.jsp"><button class="btn btn-primary btn-lg" type="button" > Patient </button></a>    
    </div>


      <div class="col-sm-3 col-xs-8">
        <a href="doctorLogin.jsp"><button class="btn btn-primary btn-lg" type="button">  Doctor  </button></a>
            
      </div>

      <div class="col-sm-3 col-xs-8">
        <a href="laboratoryLogin.jsp"><button class="btn btn-primary btn-lg" type="button">Laboratory</button></a>
      </div>

      <div class="col-sm-3 col-xs-8">
        <a href="adminLogin.jsp"><button class="btn btn-primary btn-lg" type="button">   Admin   </button></a>
      </div>

  </div>

  <div class="navbar navbar-inverse navbar-fixed-bottom">
    <div class="navbar-text pull-left">
      <div class="container">
        <p>© State Bank of Ajman</p>
      </div>
    </div>
  </div>


  </body>
</html>