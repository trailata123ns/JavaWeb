<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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

	    <title>boxshop premium HTML5 & CSS3 Template</title>

	    <!-- Bootstrap Core CSS -->
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
				<li class='active'>Contact</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content">
	<div class="container">
    <div class="contact-page">
		<div class="row">
			
				<div class="col-md-12 contact-map outer-bottom-vs">
					
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3715.0281535078075!2d106.64600771398997!3d21.388796085804508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a98a0fd5b1757%3A0x64874bbfbbde07dd!2zQ2jhu6MgTGlt!5e0!3m2!1svi!2s!4v1623675750434!5m2!1svi!2s" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>
				<c:if test="${not empty thongbao }">
					<div class="alert alert-primary" role="alert">
						${thongbao }
					</div>
				</c:if>
	<div class="col-md-9 contact-form">
	
	<div class="col-md-12 contact-title">
		<h4 style="font-size: 24px;color: rgb(41, 167, 248)">?????i ng?? ch??m s??c kh??ch h??ng TIKI</h4>
		<p style="font-size: 16px">Tiki lu??n s???n s??ng l???ng nghe c??u h???i v?? ?? ki???n ????ng g??p t??? b???n. Ch??ng t??i s??? ph???n h???i ngay trong 24h ti???p theo!</p>
	</div>
	<sf:form action="${base}/lien-he/gui-yeu-cau" method="post" modelAttribute="contactTiki" enctype="multipart/form-data">
		<div class="col-md-12 ">
		<!-- <form class="register-form" role="form"> -->
			<div class="form-group">
		    <sf:select path="txtLuaChon" name="txtLuaChon" id="txtLuaChon" style="width: 100%;height: 40px;border: 1px solid #eee;border-radius: 5px; outline: none;">
		    	<sf:option value="B???o h??nh">B???o h??nh</sf:option>
		    	<sf:option value="B???o hi???m">B???o hi???m</sf:option>
		    	<sf:option value="Chat v???i nh?? b??n">Chat v???i nh?? b??n</sf:option>
		    	<sf:option value="Chat v???i tiki">Chat v???i tiki</sf:option>
		    	<sf:option value="?????t h??ng">?????t h??ng</sf:option>
		    	<sf:option value="????n h??ng tikinow">????n h??ng tikinow</sf:option>
		    	
		    </sf:select>
		  </div>
		<!-- </form> -->
	</div>
		<div class="col-md-12 ">
		<!-- <form class="register-form" role="form"> -->
			<div class="form-group">
		    <label class="info-title" for="exampleInputName">?????a ch??? email c???a b???n <span>*</span></label>
		    <sf:input path="txtEmail" type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail" placeholder="Nh???p ?????a ch??? email"/>
		  </div>
		<!-- </form> -->
	</div>
	<div class="col-md-12 ">
		<!-- <form class="register-form" role="form"> -->
			<div class="form-group">
		    <label class="info-title" for="exampleInputName">S??? ??i???n tho???i <span>*</span></label>
		    <sf:input path="txtPhone" type="email" class="form-control unicase-form-control text-input" id="exampleInputPhone" placeholder="Nh???p s??? ??i???n tho???i"/>
		  </div>
		<!-- </form> -->
	</div>
	<div class="col-md-12">
		<div class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">M?? ????n h??ng <span>*</span></label>
		    <sf:input path="txtCodeOrders" type="input" class="form-control unicase-form-control text-input" id="exampleInputCodeOrders" placeholder="Nh???p m?? ????n h??ng(n???u c??)"/>
		  </div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputTitle">Title <span>*</span></label>
		    <sf:input path="txtTitle" type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="Nh???p ti??u ?????" />
		  </div>
		</div>
	</div>
	<div class="col-md-12">
		<div class="register-form" role="form">
			<div class="form-group">
		    <label class="info-title" for="exampleInputComments">Your Comments <span>*</span></label>
		    <sf:textarea path="txtComments" class="form-control unicase-form-control" id="exampleInputComments" placeholder="M?? t??? chi ti???t v???n ????? c???a b???n"></sf:textarea>
		  </div>
		</div>
	</div>
	<div class="col-md-12">
	<div class="form-group">
		<label for="inputFile">Picture(Multiple)</label>
		<input id="inputFile" name="inputFile" type="file" class="form-control-file" multiple="multiple">
	</div>
	</div>
	<div class="col-md-12 outer-bottom-small m-t-20">
		<button type="button"
			class="btn-upper btn btn-primary checkout-page-button" onclick="saveContactTiki()">Send
		Ajax</button>
		<button type="submit"
			class="btn-upper btn btn-primary checkout-page-button" >Send
		</button>
	</div>
	</sf:form>
</div>

		</div>
	</div>
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->

<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
<!-- ============================================================= FOOTER ============================================================= -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
<!-- ============================================================= FOOTER : END============================================================= -->


	<!-- For demo purposes ??? can be removed on production -->
	
	
	<!-- For demo purposes ??? can be removed on production : End -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

	<!-- For demo purposes ??? can be removed on production -->
	
	
	<!-- For demo purposes ??? can be removed on production : End -->


	<script type="text/javascript">
	function saveContactTiki() {
		// javascript object.
		// data la du lieu ma day len action cua controller
		let data = {
			txtLuaChon: $("#txtLuaChon").val(),
			txtEmail: $("#exampleInputEmail").val(), // lay theo id
			txtPhone: $("#exampleInputPhone").val(), // lay theo id
			txtCodeOrders: $("#exampleInputCodeOrders").val(),
			txtTitle: $("#exampleInputTitle").val(),
			txtComments: $("#exampleInputComments").val(),
		};
		
		// $ === jQuery
		// json == javascript object
		$.ajax({
			url : "/contactTiki-ajax",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),

			dataType : "json", // kieu du lieu tra ve tu controller la json
			success : function(jsonResult) {
				//alert("Chuc mung! da luu thanh cong dia chi email " + jsonResult.message.txtLuaChon);
				alert(jsonResult.message);
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 
				
			}
		});
	}
	</script>

</body>
</html>
