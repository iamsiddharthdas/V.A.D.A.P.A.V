<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Academic Portal</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.myhead{
margin-top:0px;
margin-bottom:0px;
text-align:center;
}
a.nounderline {text-decoration: none; }
</style>
</head>
<body >
<div id="wrapper">
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
<a class="navbar-brand" href="index.php">Academic Portal</a>
</div>
</nav>
<div id="page-inner">
<div class="container">
<div class="row ">
<div class="col-md-3 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
<div class="panel-body" style="background-color: #E2E2E2; margin-top:60%; margin-left:40%;border:solid 3px #0e0e0e;width:150%">
<h3 class="myhead">Academic Portal</h3>
<form role="form" action="register.php" method="post">
<hr />
<div class="form-group input-group">
<span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
<input type="text"
id="username"
name="username"
class="form-control"
placeholder="Username"
value="">
<span class="error">
<?php if (isset($errors['username'])) echo $errors['username']; ?>
</span>
</div>
<div class="form-group input-group">
<span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
<input type="password"
id="password"
name="password"
class="form-control"
value=""
placeholder="Password">
<span class="error">
<?php if (isset($errors['password'])) echo $errors['password']; ?>
</span>                                        
</div>
<div class="form-group input-group">
<span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
<input type="password"
id="cpassword"
name="cpassword"
class="form-control"
value=""
placeholder="Confirm Password">
<span class="error">
<?php if (isset($errors['cpassword'])) echo $errors['cpassword']; ?>
</span>
</div>
<div class="form-group">
<span class="pull-right">
</span>
</div>
<button class="btn btn-primary" type= "submit" name="acc">Create Account</button>
<a href="http://localhost/Portal/index.php"style="color:white"><p class="btn btn-primary"> Back Home</p></a>
</form>
</div>
</div>
</div>
</div>
</body>
</html>

