<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<nav class="navbar navbar-expand navbar-light bg-white static-top osahan-nav sticky-top">
	&nbsp;&nbsp; 
	<button class="btn btn-link btn-sm text-secondary order-1 order-sm-0" id="sidebarToggle">
	<i class="fas fa-bars"></i>
	</button> &nbsp;&nbsp;
	<a class="navbar-brand mr-1" href="index"><img class="img-fluid" alt="" src="img/logo.png"></a>
	<!-- Navbar Search -->
	<form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-5 my-2 my-md-0 osahan-navbar-search">
		<div class="input-group">
		   	<input type="text" class="form-control" placeholder="<s:message code="searchfor"/>">
		   	<div class="input-group-append">
		      	<button class="btn btn-light" type="button">
		      	<i class="fas fa-search"></i> 
		      	</button>
		   	</div>
		</div>
	</form>
	<!-- Navbar -->
	<ul class="navbar-nav ml-auto ml-md-0 osahan-right-navbar">
 		<c:choose>
			<c:when test="${empty(sUserId)}">
				<div class="mb-auto mt-auto">
					<button class="btn btn-outline-primary btn-lg" onclick="location.href='login'">로그인</button>
				</div>
			</c:when>
			<c:otherwise>
				<li class="nav-item mx-1">
			      	<a class="nav-link" href="upload">
			      	<i class="fas fa-plus-circle fa-fw"></i>
			      	<s:message code="uploadvideo"/>
			      	</a>
			   	</li>
				<li class="nav-item dropdown no-arrow osahan-right-navbar-user">
					<a class="nav-link dropdown-toggle user-dropdown-link" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<img alt="Avatar" src="img/user.png">
					${sUserId}
					</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
						<a class="dropdown-item" href="account"><i class="fas fa-fw fa-user-circle"></i> &nbsp; <s:message code="mychannel"/></a>
						<a class="dropdown-item" href="settings"><i class="fas fa-fw fa-cog"></i> &nbsp; <s:message code="settings"/></a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="logout_action"><i class="fas fa-fw fa-sign-out-alt"></i> &nbsp; <s:message code="logout"/></a>
					</div>
				</li>
			</c:otherwise>
 		</c:choose>
	</ul>
</nav>