<?php
include("php/dbconnect.php");
include("php/checklogin.php");
?>
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
<style type="text/css">
.fa_custom {
color: #0099CC
}
.center {
text-align: center;
width: 100%;
}
a:link, body a:active {

color: #808084;
text-decoration: none;
}
</style>
</head>
<?php
include("php/header.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">DASHBOARD</h1>
<h2 style="text-align:center;"><strong>WELCOME</strong> </h2>
<br>
</div>
</div>
<div class="center">
<br>
<i class="fa fa-folder-open fa_custom  fa-4x"></i>
<br>
<b>
<p> <a href="search.php">Academic Records</a></p>
</b><br><br>
<i class="fa fa-folder-open fa_custom  fa-4x"></i>
<br>
<b>
<p><a href="activity.php">Extra Curricular Activity</a></p>
</b><br>
</div>
</div>
</div>
<div id="footer-sec">
</div>
<script src="js/jquery-1.10.2.js"></script>
</body>
</html>
