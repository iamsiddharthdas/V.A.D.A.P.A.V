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
<script src="js/jquery-1.10.2.js"></script>
</head>
<?php
include("php/header.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Enroll
<?php
echo (isset($_GET['action']) && @$_GET['action']=="add" || @$_GET['action']=="edit")?
' <a href="branch.php" class="btn btn-primary btn-sm pull-right">Back <i class="glyphicon glyphicon-arrow-right"></i></a>':'<a href="branch.php?action=add" class="btn btn-primary btn-sm pull-right"><i class="glyphicon glyphicon-plus"></i> Add </a>';
?>
</h1>
</div>
</div>
<?php
if(isset($_GET['action']) && @$_GET['action']=="add" || @$_GET['action']=="edit")
{
?>
<script type="text/javascript" src="js/validation/jquery.validate.min.js"></script>
<div class="row">
<div class="col-sm-8 col-sm-offset-2">
<div class="panel panel-primary">
<div class="panel-heading">
<?php echo ($action=="add")? "Add Venue": "Edit Venue"; ?>
</div>
<form action="branch.php" method="post" id="signupForm1" class="form-horizontal">
<div class="panel-body">
<div class="form-group">
<section class="content">
<div class="box">
<div class="box-header with-border">
<h3 class="box-title"></h3>
<div class="box-tools pull-right">
<button class="btn btn-flat btn-primary"  data-toggle="tooltip" title="Create Schedule" id="create">Create Schedule</button>
<button class="btn btn-flat btn-success"  data-toggle="tooltip" title="View Schedule" id="view">View Schedule</button>
<button class="btn btn-flat btn-default"  data-toggle="tooltip" title="Cancel Create Schedule" id="cancel" style="display:none">Cancel</button>
<button  id="print-sched" data-toggle="tooltip" title="Print Schedule" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
</div>
</div>
<div class="box-body">
<div class="row">
<duv class="col-xs-12">
<div class="col-xs-2">
<label>School Year</label>
<input type="text" class="form-control" id="sy" placeholder="Input year eg.2014">
</div>
<div class="col-xs-2">
<h3 id="sy2"></h3>
</div>
<div class="col-xs-4">
<label>Year Level</label>
<select class="form-control" id="year_level"></select>
</div>
<div class="col-xs-3" id="createsched" style="display:none">
<label>Room</label>
<div class="input-group input-group-sm">
<input type="text" class="form-control" id="room" placeholder="input room">
<span class="input-group-btn">
<button class="btn btn-info btn-flat" type="button" id="generateschedule">Generate Schedule</button>
</span>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
<?php
}else{
?>
<div class="panel panel-default">
<div class="panel-heading">
Manage Enrollment
</div>
<div class="panel-body">
<div class="table-sorting table-responsive">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>SNo</th>
<th>Registration Number</th>
<th>Name</th>
<th>Email ID</th>
<th>Phone</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
<?php
}
?>
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
