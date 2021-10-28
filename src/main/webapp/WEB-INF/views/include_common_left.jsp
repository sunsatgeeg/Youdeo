<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<ul class="sidebar navbar-nav">
	<li class="nav-item"><a class="nav-link" href="index"> <i class="fas fa-fw fa-home"></i> <span><s:message code="home" /></span>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="channels"> <i class="fas fa-fw fa-users"></i> <span><s:message code="subscribe" /></span>
	</a></li>
	<li class="nav-item"><a class="nav-link" href="history_page"> <i class="fas fa-fw fa-history"></i> <span><s:message code="viewhistory" /></span>
	</a></li>

	<!-- 나중에 기능 추가
	<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" href="categories" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fas fa-fw fa-list-alt"></i>
		<span>Categories</span>
		</a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="categories">Movie</a>
			<a class="dropdown-item" href="categories">Music</a>
			<a class="dropdown-item" href="categories">Television</a>
		</div>
	</li>
	 -->
	<li class="nav-item channel-sidebar-list">
		<h6>
			<s:message code="subscriptions" />
		</h6>
		<ul>
			<li><a href="subscriptions"> <img class="img-fluid" alt="" src="img/s1.png"> Your Life
			</a></li>
			<li><a href="subscriptions"> <img class="img-fluid" alt="" src="img/s2.png"> Unboxing <!--<span class="badge badge-warning">2</span> -->
			</a></li>
		</ul>
	</li>
</ul>