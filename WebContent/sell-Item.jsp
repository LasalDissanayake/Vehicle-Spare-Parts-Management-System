<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electro-elegance</title>
    
    <style>
    	body {
			 background-color: #E5E1DA !important;
				}
		table.table-bordered > thead > tr > th,
	    table.table-bordered > tbody > tr > td {
	        border: 2px solid #000; /* Change border color here */
	    }
		
        .content {
            padding: 20px;
            background-color: #E5E1DA !important;
        }
        .main-content {
		    margin: 20px auto; /* Add space around the main content */
		    
		    background-color: #E5E1DA !important;
		}
		
		.table-responsive {
		    margin-top: 20px; /* Add space above the table */
		    margin-bottom: 20px; /* Add space below the table */
		    display: flex;
		    justify-content: center; /* Center the table horizontally */
		}
		
		.footer {
		    margin-top: 20px; /* Add space above the footer */
		}
		
        
        
    </style>
</head>

<body>
<div class="footer">
		<jsp:include page="header.jsp"></jsp:include>
	</div>


	
       <input type="hidden" value="<%= session.getAttribute("userID") %>" name="userID">
                    <!-- Main content wrapper -->
                    <div class="main-content">
                        <!-- Main content here -->
                        <div class="container">
                            <h3 class="text-center">List of Products</h3>
                            
                            <div class="container text-left">
                                <a href="<%=request.getContextPath()%>/newProductUser" class="btn btn-success">Add New Product</a>
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
                                        <c:forEach var="Product" items="${listProductsUser}">
                                            <tr>
                                                <td><c:out value="${Product.productID}" /></td>
                                                <td><c:out value="${Product.productName}" /></td>
                                                <td><c:out value="${Product.description}" /></td>
                                                <td><c:out value="${Product.category}" /></td>
                                                <td><c:out value="${Product.price}" /></td>
                                                <td><c:out value="${Product.quantity}" /></td>  
                                                <td><c:out value="${Product.userID}" /></td>     
                                                <td>
                                                    <a href="<%=request.getContextPath()%>/editProductUser?productID=<c:out value='${Product.productID}' />" class="btn btn-primary">Edit</a>
                                                    <a href="<%=request.getContextPath()%>/deleteProductUser?productID=<c:out value='${Product.productID}' />" class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
           
    
    <div class="footer">
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>