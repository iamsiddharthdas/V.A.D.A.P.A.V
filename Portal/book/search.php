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
<script type='text/javascript' src='js/jquery/jquery-ui-1.10.1.custom.min.js'></script>
</head>
<?php
include("php/header.php");
?>
<div id="page-wrapper">
<div id="page-inner">
<div class="row">
<div class="col-md-12">
<h1 class="page-head-line">Student Academic Details</h1>
</div>
</div>
<div class="row" style="margin-bottom:20px;">
<div class="col-md-12">
<fieldset class="scheduler-border" >
<legend  class="scheduler-border">Search:</legend>
<form class="form-inline" role="form" id="searchform">
<div class="col-sm-3">
<label for="email">Student ID</label>
<input type="text" class="form-control" id="student" name="student">
</div>
<br>
<button type="button" class="btn btn-success btn-sm" id="find" > Find </button>
<button type="reset" class="btn btn-danger btn-sm" id="clear" > Clear </button>
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
<div class="panel panel-default">
<div class="panel-heading">
Course Details
</div>
<div class="panel-body">
<div class="table-sorting table-responsive" id="subjectresult">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>SNo</th>
<th>Course Code</th>
<th>Course</th>
<th>Course Type</th>
<th>Category</th>
<th>Credits</th>
<th>Grade</th>
<th>Faculty</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
Project Details
</div>
<div class="panel-body">
<div class="table-sorting table-responsive" id="subjectresult">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>SNo</th>
<th>Semester</th>
<th>Course Type</th>
<th>Course Code</th>
<th>Course</th>
<th>Project Title</th>
<th>Guide</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
Research Work
</div>
<div class="panel-body">
<div class="table-sorting table-responsive" id="subjectresult">
<table class="table table-striped table-bordered table-hover" id="tSortable22">
<thead>
<tr>
<th>SNo</th>
<th>Project Title</th>
<th>Year Published</th>
<th>Co-Authors</th>
<th>Guide</th>
</tr>
</thead>
<tbody>
</tbody>
</table>
</div>
</div>
</div>
<div class="modal fade" id="myModal" role="dialog">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Register Now</h4>
</div>
<div class="modal-body" id="formcontent">
</div>
<div class="modal-footer">
<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="footer-sec">
</div>
</body>
</html>
