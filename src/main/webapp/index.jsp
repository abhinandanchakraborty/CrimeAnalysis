<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Crime Analysis</title>

<!-- Bootstrap -->
<link rel="icon" type="image/png" href="assets/img/favicon.png"
	sizes="32x32">
<link
	href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

<script src="assets/bower_components/html5shiv/dist/html5shiv.min.js"></script>
<script src="assets/bower_components/respond/dest/respond.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Present <span
							class="sr-only">(current)</span></a></li>
					<li><a href="#">Prediction</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Dropdown <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="row">
		<div class="col-md-12">
				<div class="panel panel-primary">
					<div class="panel-heading">Crime Types</div>
					<div class="panel-body">
						<div id="loading">
							<p>
								<img src="assets/img/loading.gif" height="100" width="200" />
							</p>
						</div>
						<div id="container"></div>
					</div>
				</div>
			</div>
	</div>
	<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Crime Types in Word Cloud</div>
					<div class="panel-body">
						<div id="loading">
							<p>
								<img src="assets/img/loading.gif" height="100" width="200" />
							</p>
						</div>
						<div id="crimecloud"></div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">Crime in Daywise</div>
					<div class="panel-body">
						<div id="loading">
							<p>
								<img src="assets/img/loading.gif" height="100" width="200" />
							</p>
						</div>
						<div id="daywise_analysis"></div>
					</div>
				</div>
			</div>
		</div>

	<div class="container-fluid">
		<p>
			Use <a href="../sticky-footer-navbar">the sticky footer with a
				fixed navbar</a> if need be, too.
		</p>
	</div>

	<div id="footer">
		<div class="container-fluid">
			<p class="footer-block">Footer</p>
		</div>
	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
	<script src="assets/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<script src="assets/bower_components/angular/angular.min.js"></script>
	<script src="assets/bower_components/d3/d3.min.js"></script>
	<script src="assets/bower_components/highcharts/highcharts.js"></script>
	<!-- HighStock and HighMaps Commented  -->
	<!-- <script src="assets/bower_components/highcharts/highmaps.js"></script>
    <script src="assets/bower_components/highcharts/highstock.js"></script> -->
	<script src="assets/bower_components/highcharts/highcharts-more.js"></script>
	<script src="assets/bower_components/highcharts/highcharts-3d.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

</body>
</html>