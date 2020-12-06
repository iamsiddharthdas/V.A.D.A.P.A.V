<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Academic Portal</title>
<link href="book/css/bootstrap.css" rel="stylesheet" />
<link href="book/css/font-awesome.css" rel="stylesheet" />
<link href="book/css/layout.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<style>
.myhead{
margin-top:0px;
margin-bottom:0px;
text-align:center;
}
a.nounderline {text-decoration: none; }
</style>
<script>
var countDownDate = new Date("Oct 27, 2019 08:00:00").getTime();
var x = setInterval(function() {
var now = new Date().getTime();
var distance = countDownDate - now;
var days = Math.floor(distance / (1000 * 60 * 60 * 24));
var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
var seconds = Math.floor((distance % (1000 * 60)) / 1000);
document.getElementById("demo").innerHTML = days + "Days " + hours + "Hrs "
+ minutes + "Min " + seconds + "Sec ";
</script>
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
<form class="form-inline" role="form" >
<center>
<a href="book/login.php"style="color:white"><p class="btn btn-info btn-sm"> FACULTY LOGIN</p></a>
<a href="register.php" style="color:white"><p class="btn btn-success btn-sm">  FACULTY SIGNUP</p></a>
</center>
</form>
</div>
</body>
</html>
