<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
	prefix="tilesx"%>
<tilesx:useAttribute name="current" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="<c:url value="/resources/bootstrap/css/bootstrap-theme.min.css" />" />

<script src="<c:url value="/resources/js/jquery/jquery-3.1.0.js"/>"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="<c:url value="/resources/bootstrap/js/bootstrap.js"/>"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><tiles:getAsString name="title"></tiles:getAsString></title>
</head>
<body>
	<div class="container">

		<div class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<spring:url value="/" />">CMartinez</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="${current == 'index' ? 'active' : ''}"><a
							href='<spring:url value="/" />'>Home</a></li>
						<li class="${current == 'users' ? 'active' : ''}"><a
							href="<spring:url value="/users.html" />">Users</a></li>
						<li class="${current == 'register' ? 'active' : ''}"><a
							href="<spring:url value="/register.html" />">Register</a></li>
						<li class="${current == 'login' ? 'active' : ''}"><a
							href="<spring:url value="/login.html" />">Login</a></li>
						<li class="${current == 'account' ? 'active' : ''}"><a
							href="<spring:url value="/account.html" />">My account</a></li>
						<li><a href="<spring:url value="/logout" />">Logout</a></li>
						<li class="dropdown"><a href="" class="dropdown-toggle"
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
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</div>
		<!--/.nav-bar -->

		<tiles:insertAttribute name="body" />


		<br /> <br />

		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>