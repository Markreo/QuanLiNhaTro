<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.4
Version: 1.4
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Head -->
<head>
	<meta charset="utf-8" />
	<title>Quản lí nhà trọ</title>

	<meta name="description" content="blank page" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

	<!--Basic Styles-->
	<link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet"/>
	<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'font-awesome.min.css')}" rel="stylesheet"/>
	<link href="${resource(dir: 'assets/css', file: 'weather-icons.min.css')}" rel="stylesheet"/>

	<!--Beyond styles-->
	<link href="${resource(dir: 'assets/css', file: 'beyond.min.css')}" rel="stylesheet"/>
	<link href="${resource(dir: 'assets/css', file: 'demo.min.css')}" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'typicons.min.css')}" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'animate.min.css')}" rel="stylesheet" />
	<link id="skin-link" href="" rel="stylesheet" type="text/css" />

	<script src="${resource(dir: 'assets/js', file: 'jquery.min.js')}"></script>

	<!--Fonts-->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

	<script src="${resource(dir: 'assets/js/fuelux/wizard', file: 'wizard-custom.js')}"></script>

</head>
<!-- /Head -->
<!-- Body -->
<body>
<!-- Loading Container -->
<div class="loading-container">
	<div class="loader"></div>
</div>
<!--  /Loading Container -->
<!-- Navbar -->
<g:render template="/layouts/navbar"/>
<!-- /Navbar -->
<!-- Main Container -->
<div class="main-container container-fluid">
	<!-- Page Container -->
	<div class="page-container">

		<!-- Page Sidebar -->
		<g:render template="/layouts/sidebar"/>
		<!-- /Page Sidebar -->
		<!-- Page Content -->
		<div class="page-content">
			<!-- Page Breadcrumb -->
			<div class="page-breadcrumbs">
				<ul class="breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="#">Home</a>
					</li>
					<li class="active">Dashboard</li>
				</ul>
			</div>
			<!-- /Page Breadcrumb -->
			<!-- Page Header -->
			<div class="page-header position-relative">
				<div class="header-title">
					<h1>
						Dashboard
					</h1>
				</div>
				<!--Header Buttons-->
				<div class="header-buttons">
					<a class="sidebar-toggler" href="#">
						<i class="fa fa-arrows-h"></i>
					</a>
					<a class="refresh" id="refresh-toggler" href="">
						<i class="glyphicon glyphicon-refresh"></i>
					</a>
					<a class="fullscreen" id="fullscreen-toggler" href="#">
						<i class="glyphicon glyphicon-fullscreen"></i>
					</a>
				</div>
				<!--Header Buttons End-->
			</div>
			<!-- /Page Header -->
			<!-- Page Body -->
			<div class="page-body" id="page-body">
				<g:layoutBody/>
			</div>
			<!-- /Page Body -->
		</div>
		<!-- /Page Content -->

	</div>
	<!-- /Page Container -->
	<!-- Main Container -->

</div>
<!--Basic Scripts-->

<script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'assets/js/slimscroll', file: 'jquery.slimscroll.min.js')}"></script>

<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
<script src="${resource(dir: 'assets/js', file: 'skins.min.js')}"></script>
<!--Beyond Scripts-->
<script src="${resource(dir: 'assets/js', file: 'beyond.js')}"></script>
<script src="${resource(dir: 'assets/js/toastr', file: 'toastr.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'qlnhatro.js')}"></script>
</body>
<!--  /Body -->
</html>
