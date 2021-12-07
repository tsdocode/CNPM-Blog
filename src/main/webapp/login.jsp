<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

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

<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="resources/js/index.js" type="text/javascript"></script>

<script src="resources/js/validation.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>

<%
// delete old login session
session.invalidate();

// get cookies
Cookie[] cookies = null;

// Get an array of Cookies associated with the this domain
cookies = request.getCookies();
String email = "";
String password = "";
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("email")) {
	email = cookie.getValue();
		}
		if (cookie.getName().equals("password")) {
	password = cookie.getValue();
		}
	}
}
%>

<body>

	<nav class="navbar navbar-inverse ">
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
							<li><a href="login.jsp">Login</a></li>
							<li><a href="register.jsp">Register</a></li>
						</ul></li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<c:set var="suss" scope="page" value="true"></c:set>

	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<h4 class="modal-title" id="myModalLabel">Login to site</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-6">
						<div class="well">
							<form id="validate_login_form" method="POST" action="Login">
								<div class="form-group">
									<label for="username" class="control-label">Email</label> <input
										type="text" class="form-control" id="username" name="email"
										value="<%=email%>" placeholder="example@gmail.com">

								</div>
								<div class="form-group">
									<label for="password" class="control-label">Password</label> <input
										type="password" class="form-control" id="password"
										name="password" value="<%=password%>">

								</div>
								<c:if test="${message.equals(suss)}">
									<div class="alert alert-danger alert-dismissible">
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<span class="glyphicon glyphicon-exclamation-sign"
											aria-hidden="true"></span> <strong>Email or password
											is incorrect</strong> <br>

									</div>
								</c:if>
								<div class="checkbox">
									<label> <input type="checkbox" name="remember"
										id="remember"> Remember login
									</label>
									<p class="help-block">(if this is a private computer)</p>
								</div>
								<button type="submit" class="btn btn-info btn-block">Login</button>
								<a href="/forgot/" class="btn btn-default btn-block">Forgot
									password ?</a>
							</form>
						</div>
					</div>
					<div class="col-xs-6">
						<p class="lead">
							Register now for <span class="text-success">FREE</span>
						</p>
						<ul class="list-unstyled" style="line-height: 2">
							<li><span class="fa fa-check text-success"></span> See all
								your posts</li>
							<li><span class="fa fa-check text-success"></span> Fast
								organization</li>
							<li><span class="fa fa-check text-success"></span> Save your
								favorites content</li>
							<li><span class="fa fa-check text-success"></span> Quick
								edit</li>
							<li><span class="fa fa-check text-success"></span> Get a
								gift <small>(only new customers)</small></li>

						</ul>
						<p>
							<a href="register.jsp" class="btn btn-info btn-block">Register
								now!</a>
						</p>
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