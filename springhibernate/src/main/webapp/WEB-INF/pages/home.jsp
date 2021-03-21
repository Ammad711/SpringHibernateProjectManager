<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>
	<div class="container mt-3">
		<h1 class="text-center">Welcome to SpringHibernate Project
			Manager</h1>
		<c:if test="${not empty msg}">
			<div class="alert alert-success">
				<b><c:out value="${msg }"></c:out></b>
			</div>
		</c:if>
		<div class="row mt-5">
			<div class="col-md-2">
				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active"
						aria-current="true">Menu</button>
					<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add</a> <a
						href='<c:url value='/home'></c:url>'
						class="list-group-item list-group-item-action">View</a>
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home'}">
					<h1 class="text-center">All Data</h1>
					<c:forEach items="${data }" var="t">
						<div class="card">
							<div class="card-body">
								<h3>
									<c:out value="${t.title}"></c:out>
								</h3>
								<p>
									<c:out value="${t.content}"></c:out>
								</p>
								<h3>
									<c:out value="${t.date}"></c:out>
								</h3>
							</div>
						</div>

					</c:forEach>
				</c:if>
				<c:if test="${page=='add'}">
					<h1 class="text-center">Add Data</h1>
					<br />
					<form:form action="savedata" method="post" modelAttribute="Data">
						<div class="form-group">
							<form:input path="title" cssClass="form-control"
								placeholder="Enter your title" />
						</div>
						<br />
						<div class="form-group">
							<form:textarea path="content" cssClass="form-control"
								placeholder="Enter your content" cssStyle="height:300px;" />
						</div>
						<br />
						<div class="container text-center">
							<button class="btn btn-outline-success">Add Data</button>
						</div>
					</form:form>
				</c:if>
			</div>
		</div>

		<!-- Optional JavaScript; choose one of the two! -->

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
			crossorigin="anonymous"></script>

		<!-- Option 2: Separate Popper and Bootstrap JS -->
		<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    -->
</body>
</html>