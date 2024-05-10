<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Motor Mart</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background-color: #E5E1DA !important;
	background-image: url('bg.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.sidebar {
	height: calc(100vh - 60px); /* Adjusted sidebar height */
	width: 250px;
	position: fixed;
	left: 0;
	background-color: #34495e; /* Dark blue background */
	padding-top: 10px; /* Adjust padding to fit content */
}

.sidebar .nav-link {
	color: #fff; /* White text color */
	transition: color 0.3s ease;
}

.sidebar .nav-link:hover {
	color: #ccc; /* Light gray text color on hover */
}

.nav-link.active {
	font-weight: bold;
	background-color: #333333;
	padding: 8px 15px;
	border-radius: 5px;
}

.sidebar {
	padding: 20px;
	border-right: 1px solid #ccc;
}

.content {
	padding: 20px;
}

/* Increase opacity of table */
.table-bordered>thead>tr>th, .table-bordered>tbody>tr>td {
	border: 2px solid #000; /* Change border color here */
	opacity: 0.9; /* Increase opacity */
}

footer {
	position: fixed;
	bottom: 0;
	width: 100%;
	background-color: #333333;
	color: white;
	text-align: center;
	padding: 10px 0;
}
/* Adjust opacity and make the container transparent */
.container {
	background-color: rgba(255, 255, 255, 0.5); /* White with opacity */
	padding: 20px;
	margin-top: 20px;
	border-radius: 10px; /* Add rounded corners */
}

.table-container {
	text-align: center;
	/* Center-align the contents within the container */
}

.table-container table {
	margin-left: auto; /* Set left margin to auto */
	margin-right: auto; /* Set right margin to auto */
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #333333">
			<div>
				<a href="#" class="navbar-brand"> Product Management </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list_product"
					class="nav-link">Products</a></li>
			</ul>
		</nav>
	</header>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2">
				<div class="sidebar">
					<!-- Sidebar content here -->
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link"
							href="admin-dash.jsp">Dashboard</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<%=request.getContextPath()%>/list_user">Users</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="<%=request.getContextPath()%>/list_product">Products</a></li>
						<li class="nav-item"><a
							href="<%=request.getContextPath()%>/list_cart" class="nav-link">Cart</a>
						</li>
						<li class="nav-item"><a
							href="<%=request.getContextPath()%>/list_payment"
							class="nav-link">Payments</a></li>
						<li class="nav-item"><a
							href="<%=request.getContextPath()%>/list_feedback"
							class="nav-link">Feedbacks</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10">
				<div class="content">
					<!-- Main content wrapper -->
					<div class="main-content">
						<!-- Main content here -->
						<div class="container">
							<h3 class="text-center">List of Products</h3>
							<hr>
							<div class="container text-left">
								<a href="<%=request.getContextPath()%>/newProduct"
									class="btn btn-success">Add New Product</a>
							</div>
							<br>
							<div class="table-responsive text-center">
								<table class="table table-bordered d-inline-block">
									<thead>
										<tr>
											<th>Product ID</th>
											<th>Product Name</th>
											<th>Description</th>
											<th>Category</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>User ID</th>
											<th>Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="Product" items="${listProducts}">
											<tr>
												<td><c:out value="${Product.productID}" /></td>
												<td><c:out value="${Product.productName}" /></td>
												<td><c:out value="${Product.description}" /></td>
												<td><c:out value="${Product.category}" /></td>
												<td><c:out value="${Product.price}" /></td>
												<td><c:out value="${Product.quantity}" /></td>
												<td><c:out value="${Product.userID}" /></td>
												<td><a
													href="<%=request.getContextPath()%>/editProduct?productID=<c:out value='${Product.productID}' />"
													class="btn btn-primary">Edit</a> <a
													href="<%=request.getContextPath()%>/deleteProduct?productID=<c:out value='${Product.productID}' />"
													class="btn btn-danger">Delete</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<!-- Footer content here -->
		<p>&copy; 2024 Motor Mart Sparepart management Application</p>
	</footer>
</body>
</html>
