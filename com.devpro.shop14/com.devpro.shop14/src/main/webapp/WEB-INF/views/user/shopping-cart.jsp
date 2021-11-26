<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>${projectTitle }</title>

		<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>


	</head>
    <body class="cnt-home">
		<!-- ============================================== HEADER ============================================== -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>Shopping Cart</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-xs">
	<div class="container">
		<div class="row ">
			<div class="shopping-cart">
				<div class="shopping-cart-table ">
	<c:if test="${not empty thongbao }">
		<div class="alert alert-primary" role="alert" style="color: blue;font-size: 24px;font-weight: bold;">
			${thongbao }
		</div>
	</c:if>

	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					
					<th class="cart-description item">Image</th>
					<th class="cart-product-name item">Product Name</th>
					
					<th class="cart-qty item">Quantity</th>
					<th class="cart-sub-total item">Subtotal</th>
					<th class="cart-total last-item">Grandtotal</th>
					<th class="cart-romove item">Remove</th>
				</tr>
			</thead><!-- /thead -->
			<tfoot>
				<tr>
					<td colspan="7">
						<div class="shopping-cart-btn">
							<span class="">
								<a href="${base }/home" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
							</span>
						</div><!-- /.shopping-cart-btn -->
					</td>
				</tr>
			</tfoot>
			<tbody>
				<c:forEach items="${cart.cartItems }" var="cartItem">
					<tr>
					
					<td class="cart-image">
						<a class="entry-thumbnail" href="detail.html">
						    <img src="${base }/upload/${cartItem.productImage}" alt="">
						    <h4 class='cart-product-description'><a href="detail.html"></a>${cartItem.productId}</h4>
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="${base }/detail/${cartItem.productId}">${cartItem.productName}</a></h4>
					</td>
					
					<td class="cart-product-quantity">
						${cartItem.quanlity}
		            </td>
					<td class="cart-product-sub-total"><span class="cart-sub-total-price">${cartItem.priceUnit }</span></td>
					<td class="cart-product-grand-total"><span class="cart-grand-total-price">${cartItem.quanlity * cartItem.priceUnit} </span></td>
					<td class="romove-item">
						<a href="#" title="cancel" class="icon btn-delete" onclick="deleteProduct(${cartItem.productId})"><i class="fa fa-trash-o"></i></a>
						<%-- <button type="button" onclick="deleteProduct(${cartItem.productId})" class="btn-btn-delete"><i class="fa fa-trash-o"></i></button> --%>
					</td>
				</tr>
				</c:forEach>
				
				
			</tbody><!-- /tbody -->
		</table><!-- /table -->
	</div>
	<div class="col-md-8">
	<form method="post" action="${base }/cart/finish">
  	<c:choose>
  		<c:when test="${isLogined }">
  			<div class="form-group">
		    <label for="customerName">Customer Name</label>
		    <input type="text" class="form-control" readonly="readonly" id="customerName" name="customerName"  placeholder="Enter CustomerName" value="${userLogined.username } " required="required">
		  </div>
		  <div class="form-group">
		    <label for="customerAddress">Customer Address</label>
		    <input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Enter Address" required="required">
		  </div>
		  <div class="form-group">
		    <label for="customerPhone">Customer Phone</label>
		    <input type="text" class="form-control" id="customerPhone" name="customerPhone" placeholder="Enter Phone" required="required">
		  </div>
		  
		  <div class="form-group">
		    <label for="customerEmail">Customer Email</label>
		    <input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Email" required="required">
		  </div>
  		</c:when>
  		<c:otherwise>
  			<div class="form-group">
		    <label for="customerName">Customer Name</label>
		    <input type="text" class="form-control" id="customerName" name="customerName"  placeholder="Enter CustomerName" required="required">
		  </div>
		  <div class="form-group">
		    <label for="customerAddress">Customer Address</label>
		    <input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Enter Address" required="required">
		  </div>
		  <div class="form-group">
		    <label for="customerPhone">Customer Phone</label>
		    <input type="text" class="form-control" id="customerPhone" name="customerPhone" placeholder="Enter Phone" required="required">
		  </div>
		  
		  <div class="form-group">
		    <label for="customerEmail">Customer Email</label>
		    <input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Enter Email" required="required">
		  </div>
  		</c:otherwise>
  	</c:choose>
  <button type="submit" class="btn btn-primary" style="margin-left: 30px">Submit</button>
</form>
</div>
</div>

		</div> <!-- /.row -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->

<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->

<!-- ============================================================= FOOTER ============================================================= -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
<!-- ============================================================= FOOTER : END============================================================= -->


	<!-- For demo purposes – can be removed on production -->
	
	
	<!-- For demo purposes – can be removed on production : End -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

		
	
	<script type="text/javascript">
	function deleteProduct(productId) {
		// javascript object.
		// data la du lieu ma day len action cua controller
		//alert(1);
		let data = {
			/* txtYourName: $("#exampleInputName").val(), // lay theo id
			txtEmail: $("#exampleInputEmail1").val(), // lay theo id
			txtTitle: $("#exampleInputTitle").val(),
			txtComments: $("#exampleInputComments").val(), */
			productId: productId
		};
		
		// $ === jQuery
		// json == javascript object
		$.ajax({
			url : "/cart-delete",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),//biến trong (stringify) là phần trên khai báo let data;

			dataType : "json", // kieu du lieu tra ve tu controller la json
			success : function(jsonResult) {
			//	alert("Chuc mung! da luu thanh cong dia chi email " + jsonResult.message.txtTitle);
				//message: ở bên contact controller có chỗ phần json.put
				$("#totalCartItemId").html(jsonResult.totalItems);
				alert('Successfully removed !');
				location.reload();
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 
				
			}
		});}
	</script>

</body>
</html>
