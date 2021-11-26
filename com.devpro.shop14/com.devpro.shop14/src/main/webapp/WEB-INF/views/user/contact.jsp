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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">

<title>${projectTitle}</title>

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<!-- Bootstrap Core CSS -->
<!-- CSS -->
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
			</div>
			<!-- /.breadcrumb-inner -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.breadcrumb -->

	<div class="body-content">
		<div class="container">
			<div class="contact-page">
				<div class="row">

					<div class="col-md-12 contact-map outer-bottom-vs">

						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3715.0281535078075!2d106.64600771398997!3d21.388796085804508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a98a0fd5b1757%3A0x64874bbfbbde07dd!2zQ2jhu6MgTGlt!5e0!3m2!1svi!2s!4v1623675750434!5m2!1svi!2s"
							width="600" height="500" style="border: 0;" allowfullscreen=""
							loading="lazy"></iframe>
					</div>
					<div class="col-md-9 contact-form">
						<div class="col-md-12 contact-title">
							<h2>Contact Form</h2>
						</div>
						<c:if test="${not empty thongbao }">
							<div class="alert alert-primary text-center" role="alert" style="font-size: 24px; color: blue">
								${thongbao }
							</div>
						</c:if>
						
						<!-- Normal Form -->
						<%-- <form action="${base}/save-contact" method="post">
						<div class="col-md-4 ">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputName">Your
										Name <span>*</span>
									</label> <input type="email"
										class="form-control unicase-form-control text-input"
										id="exampleInputName" placeholder="" name="txtYourName">
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputEmail1">Email
										Address <span>*</span>
									</label> <input type="email"
										class="form-control unicase-form-control text-input"
										id="exampleInputEmail1" placeholder="" name="txtEmail">
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputTitle">Title
										<span>*</span>
									</label> 
									<input type="email"
										class="form-control unicase-form-control text-input"
										id="exampleInputTitle" placeholder="Title" name="txtTitle">
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputComments">Your
										Comments <span>*</span>
									</label>
									<textarea class="form-control unicase-form-control"
										id="exampleInputComments" name="txtComments"></textarea>
								</div>
							</div>
						</div>
						<div class="col-md-12 outer-bottom-small m-t-20">
							<button type="submit"
								class="btn-upper btn btn-primary checkout-page-button">Send
								Message</button>
						</div>
						</form> --%>
						
						<!-- Spring Form -->
						<sf:form action="${base}/contact" method="post" modelAttribute="contact">
						<!-- contact ở đây được định nghĩa trong chỗ ContactController, phần model
								attributes -->
						<div class="col-md-6 ">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputName">First
										Name <span>*</span>
									</label> <sf:input path="firstName" type="text"
										class="form-control unicase-form-control text-input"
										id="exampleInputName" placeholder="" name="txtFirstName"/>
								</div>
							</div>
						</div>
						<div class="col-md-6 ">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputName">Your
										Name <span>*</span>
									</label> <sf:input path="lastName" type="text"
										class="form-control unicase-form-control text-input"
										id="exampleInputName" placeholder="" name="txtYourName"/>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputEmail1">Email
										Address <span>*</span>
									</label> <sf:input path="email" type="email"
										class="form-control unicase-form-control text-input"
										id="exampleInputEmail1" placeholder="" name="txtEmail"/>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputTitle">Request-Type
										<span>*</span>
									</label> 
									<sf:input path="requestType" type="text"
										class="form-control unicase-form-control text-input"
										id="exampleInputTitle" placeholder="Title" name="txtTitle"/>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="register-form" role="form">
								<div class="form-group">
									<label class="info-title" for="exampleInputComments">Your
										Comments <span>*</span>
									</label>
									<sf:textarea path="message" class="form-control unicase-form-control"
										id="exampleInputComments" name="txtComments"></sf:textarea>
								</div>
							</div>
						</div>
						<div class="col-md-12 outer-bottom-small m-t-20">
							<button type="submit"
								class="btn-upper btn btn-primary checkout-page-button">Send
								Message</button>
								<!-- <button type="button"
								class="btn-upper btn btn-primary checkout-page-button" onclick="saveContact()">Send
								Ajax</button> -->
						</div>
					  </sf:form>
					</div>
					<div class="col-md-3 contact-info">
						<div class="contact-title">
							<h4>Information</h4>
						</div>
						<div class="clearfix address">
							<span class="contact-i"><i class="fa fa-map-marker"></i></span> <span
								class="contact-span">ThemesGround, 789 Main rd, Anytown,
								CA 12345 USA</span>
						</div>
						<div class="clearfix phone-no">
							<span class="contact-i"><i class="fa fa-mobile"></i></span> <span
								class="contact-span">+(888) 123-4567<br>+(888)
								456-7890
							</span>
						</div>
						<div class="clearfix email">
							<span class="contact-i"><i class="fa fa-envelope"></i></span> <span
								class="contact-span"><a href="#">truongtho201120@gmail.com</a></span>
						</div>
					</div>
				</div>
				<!-- /.contact-page -->
			</div>
			<!-- /.row -->
			<!-- ============================================== BRANDS CAROUSEL ============================================== -->

			<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
		</div>
		<!-- /.container -->
		<!-- ============================================================= FOOTER ============================================================= -->
		<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
		<!-- ============================================================= FOOTER : END============================================================= -->


		<!-- For demo purposes – can be removed on production -->


		<!-- For demo purposes – can be removed on production : End -->

		<!-- JavaScripts placed at the end of the document so the pages load faster -->
		<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>

		<!-- For demo purposes – can be removed on production -->

		//
	//	<script src="switchstylesheet/switchstylesheet.js"></script>

		<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	
	<script type="text/javascript">
	function saveContact() {
		// javascript object.
		// data la du lieu ma day len action cua controller
		let data = {
			txtYourName: $("#exampleInputName").val(), // lay theo id
			txtEmail: $("#exampleInputEmail1").val(), // lay theo id
			txtTitle: $("#exampleInputTitle").val(),
			txtComments: $("#exampleInputComments").val(),
		};
		
		// $ === jQuery
		// json == javascript object
		$.ajax({
			url : "/contact-ajax",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),//biến trong (stringify) là phần trên khai báo let data;

			dataType : "json", // kieu du lieu tra ve tu controller la json
			success : function(jsonResult) {
				alert("Chuc mung! da luu thanh cong dia chi email " + jsonResult.message.txtTitle);
				//message: ở bên contact controller có chỗ phần json.put
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 
				
			}
		});}
	</script>
		<!-- For demo purposes – can be removed on production : End -->
</body>
</html>
