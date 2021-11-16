<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul class="sidebar navbar-nav">
	<li class="nav-item"><a class="nav-link" href="index"> <i class="fas fa-fw fa-home"></i><span><s:message code="home" /></span>
	</a></li>
	<c:choose>
		<c:when test="${!empty(sUserId)}">
			<li class="nav-item">
				<a class="nav-link" href="subscriptions"> <i class="fas fa-fw fa-users"></i><span><s:message code="subscribe" /></span></a>
			</li>

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
			<li class="nav-hr"></li>
			<li class="nav-item">
				<a class="nav-link" href="view_history"><i class="fas fa-history"></i><span>시청 기록</span></a>
			</li>
			<li class="channel-sidebar-list">
				<h6 id='h6'>
					<s:message code="subscriptions" />
				</h6> 
				<c:forEach items="${navSubList}" var="sub">
					<ul>
						<li>
							<a href="user?u_id=${sub.s_id}"> <img class="channel-profile-img" alt="" src="img/user/${sub.user.u_profileimg}"> ${sub.user.u_name }</a>
						</li>
					</ul>
				</c:forEach>
			</li>
		</c:when>
	</c:choose>
</ul>