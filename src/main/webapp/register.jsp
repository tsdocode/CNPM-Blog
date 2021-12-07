<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<script src="//code.jquery.com/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"
	type="text/javascript"></script>

<script src="resources/js/index.js" type="text/javascript"></script>

<script src="resources/js/validation.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/style.css">

<title>Register</title>
</head>
<body>

	<c:set var="err" scope="page" value="fail"></c:set>
	<nav class="navbar navbar-inverse " style="border-radius: 0%;">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Blog</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Menu <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Register</h3>
					</div>

					<div class="panel-body">

						<c:if test="${message.equals(err)}">
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<span class="glyphicon glyphicon-exclamation-sign"
									aria-hidden="true"></span> <strong>Warning!</strong> Email or
								username already exists
							</div>
						</c:if>
						<form accept-charset="UTF-8" role="form" id="validate_reg_form"
							method="post" action="Register">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Username"
										name="username" type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="email"
										type="text">
								</div>
								<div class="form-group">
									<input id="pass" class="form-control" placeholder="Password"
										name="password" type="password" value="">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Re Password"
										name="re-password" type="password" value="">
								</div>

								<input class="btn btn-lg btn-info btn-block" type="submit"
									value="Register">

							</fieldset>
						</form>

						<div class="click-register">
							<a href="login.jsp">Click here to login</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<footer id="footer" class="footer-1">
		<div class="footer-copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<p>Copyright © 2021. All rights reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>