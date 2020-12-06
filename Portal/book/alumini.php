<?php
include("php/dbconnect.php");
include("php/checklogin.php");
$errormsg= '';
if(isset($_POST['save']))
{
$paid = mysqli_real_escape_string($conn,$_POST['paid']);
$submitdate = mysqli_real_escape_string($conn,$_POST['submitdate']);
$transcation_remark = mysqli_real_escape_string($conn,$_POST['transcation_remark']);
$sid = mysqli_real_escape_string($conn,$_POST['sid']);
$sql = "select fees,balance  from events where id = '$sid'";
$sq = $conn->query($sql);
$sr = $sq->fetch_assoc();
$totalfee = $sr['fees'];
if($sr['balance']>0)
{
$sql = "insert into fees_transaction(stdid,submitdate,transcation_remark,paid) values('$sid','$submitdate','$transcation_remark','$paid') ";
$conn->query($sql);
$sql = "SELECT sum(paid) as totalpaid FROM fees_transaction WHERE stdid = '$sid'";
$tpq = $conn->query($sql);
$tpr = $tpq->fetch_assoc();
$totalpaid = $tpr['totalpaid'];
$tbalance = $totalfee - $totalpaid;
$sql = "update events set balance='$tbalance' where id = '$sid'";
$conn->query($sql);
echo '<script type="text/javascript">window.location="payment.php?act=1";</script>';
}
}
if(isset($_REQUEST['act']) && @$_REQUEST['act']=="1")
{
$errormsg = "<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong> Payment submit successfully</div>";
}
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
<link href="css/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" />
<script src="js/jquery-1.10.2.js"></script>
<script type='text/javascript' src='js/jquery/jquery-ui-1.10.1.custom.min.js'></script>
<link href="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$("#text").keyup(function () {
var re = new RegExp($(this).val(), "i")
$('.country').each(function () {
var text = $(this).text(),
matches = !! text.match(re);
$(this).toggle(matches)
})
})
</script>
<script>
$(document).ready(function() {
$('#panel').hide();
});
$(document).ready(function(){
$("#info").click(function(){
$("#options").slideToggle("slow");
});
});
</script>
<script>
$(document).ready(function(){
$("#find").click(function(){
$("#panel").animate({
height: 'show'
});
});
});
</script>
</head>
<?php
include("php/header.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Alumni</h1>
</div>
</div>
<?php
echo $errormsg;
?>
<div class="row" style="margin-bottom:20px;">
<div class="col-md-12">
<fieldset class="scheduler-border" >
<legend  class="scheduler-border">Search:</legend>
<form class="form-inline" role="form" id="searchform">
<div class="col-sm-3">
<input type="text" class="form-control" name="student"  type="text" id="text">
</div>
<button type="button" class="btn btn-info btn-sm" id="info">Options</button>
<button type="button" class="btn btn-success btn-sm" id="find" > Find </button>
<button type="reset" class="btn btn-danger btn-sm" id="clear" > Clear </button>
<br><br>
<div id="options">
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>Registration Number</label>
</div>
<div class="col-sm-3" id='2'>
<input type="checkbox" name="filter">
<label>Program</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>Branch</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>Country</label>
</div>
<div class="col-sm-3" >
<input type="checkbox" name="filter">
<label>Year of Graduation</label>
</div>
<div class="col-sm-3" >
<input type="checkbox" name="filter">
<label>Course</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>Company</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>City</label>
</div>
<div class="col-sm-3">
<input type="checkbox" name="filter">
<label>Name</label>
</div>
</div>
</form>
</fieldset>
</div>
</div>
<style>
#doj .ui-datepicker-calendar
{
display:none;
}
</style>
<div class="panel panel-default" id="panel">
<div class="panel-heading">
Student Details
</div>
<div class="panel-body">
<div class="table-sorting table-responsive" id="subjectresult">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>SNo</th>
<th>Registration Number</th>
<th>Name</th>
<th>Program</th>
<th>Course</th>
<th>Branch</th>
<th>Year of Graduation</th>
<th>Designation</th>
<th>Company</th>
<th>Mobile Number</th>
<th>Email ID</th>
<th>Current Address</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="footer-sec">
</div>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.metisMenu.js"></script>
<script src="js/custom1.js"></script>
</body>
</html>
