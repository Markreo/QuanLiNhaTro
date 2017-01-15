<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.4
Version: 1.4
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<!--Head-->
<head>
	<meta charset="utf-8" />
	<title>Login Page</title>

	<meta name="description" content="login page" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

	<!--Basic Styles-->
	<link href="${resource(dir: 'assets/css', file: 'bootstrap.min.css')}" rel="stylesheet"/>
	<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'font-awesome.min.css')}" rel="stylesheet"/>
	<link href="${resource(dir: 'assets/css', file: 'weather-icons.min.css')}" rel="stylesheet"/>

	<!--Fonts-->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" type="text/css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

	<!--Beyond styles-->
	<link href="${resource(dir: 'assets/css', file: 'beyond.min.css')}" rel="stylesheet"/>
	<link href="${resource(dir: 'assets/css', file: 'demo.min.css')}" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'typicons.min.css')}" rel="stylesheet" />
	<link href="${resource(dir: 'assets/css', file: 'animate.min.css')}" rel="stylesheet" />
	<link id="skin-link" href="${resource(dir: 'assets/css/skins', file: 'blue.min.css')}" rel="stylesheet" type="text/css" />

</head>
<!--Head Ends-->
<!--Body-->
<body>
<div class="login-container animated fadeInDown">
	<div class="loginbox bg-white">

		<form action='${postUrl}' method='POST' id='loginForm' class='form' autocomplete='off' id="login-nav">
			<div class="loginbox-title">ĐĂNG NHẬP</div>
			<div class="loginbox-textbox">
				<input name='j_username' type="text" class="form-control" placeholder="Tên đăng nhập" />
			</div>
			<div class="loginbox-textbox">
				<input name='j_password' type="password" class="form-control" placeholder="Mật khẩu" />
			</div>
			<div class="loginbox-forgot">
				<a href="">Quên mật khẩu?</a>
			</div>
			<div class="loginbox-submit">
				<input type="submit" class="btn btn-primary btn-block" value="Login">
			</div>
		</form>
	</div>
</div>

<!--Basic Scripts-->
<script src="${resource(dir: 'assets/js', file: 'jquery.min.js')}"></script>
<script src="${resource(dir: 'assets/js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'assets/js/slimscroll', file: 'jquery.slimscroll.min.js')}"></script>

</body>
<!--Body Ends-->
</html>
