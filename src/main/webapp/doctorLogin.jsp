<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
  </head>
  <body>
     <div class="container">
      <form class="form-signin" method="post" action="/doctorloginController">
      	<h2 class="form-signin-heading">Doctor Login</h2>
        <h4 class="form-signin-heading">Enter Credentials</h4>
        <p>
          <label for="username" class="sr-only">Email</label>
          <input type="email" id="email" name="emailLogin" class="form-control" placeholder="Email" required autofocus>
        </p>
        <p>
          <label for="password" class="sr-only">Password</label>
          <input type="password" id="password" name="passwordLogin" class="form-control" placeholder="Password" required>
        </p>
		
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
      </form>
</div>
</body>
</html>