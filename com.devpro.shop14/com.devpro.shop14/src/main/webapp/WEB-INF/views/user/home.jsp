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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">
<title>${projectTitle }</title>
<!-- VARIABLES -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<!-- Bootstrap Core CSS -->
<!-- CSS -->
<jsp:include page="/WEB-INF/views/user/layout/css.jsp"></jsp:include>
<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
</head>
<body class="cnt-home">
	<!-- ============================================== HEADER ============================================== -->
	<jsp:include page="/WEB-INF/views/user/layout/header.jsp"></jsp:include>

	<!-- ============================================== HEADER : END ============================================== -->
	<div class="body-content outer-top-xs" id="top-banner-and-menu">
		<div class="container">
			<div class="row">
				<!-- ============================================== SIDEBAR ============================================== -->
				<div class="col-xs-12 col-sm-12 col-md-3 sidebar">

					<!-- ================================== TOP NAVIGATION ================================== -->
					
		<div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
          
          <nav class="yamm megamenu-horizontal">
            	<ul class="mega-menu">
            		<c:forEach items="${categories }" var="cate">
            			<li class="dropdown menu-item"> 
            				<a href="#">${cate.name}</a>
               			</li>
           			</c:forEach>
         		</ul>
            
          </nav>
          <!-- /.megamenu-horizontal --> 
        </div>
					<!-- ================================== TOP NAVIGATION : END ================================== -->

					<!-- ============================================== HOT DEALS ============================================== -->
					<div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
						<h3 class="section-title">hot deals</h3>
						<div
							class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
							<div class="item">
								<div class="products">
									<div class="hot-deal-wrapper">
										<div class="image">
											<img
												src="${base}/user/images/hot-deals/p5.jpg"
												alt="">
										</div>
										<div class="sale-offer-tag">
											<span>49%<br> off
											</span>
										</div>
										<div class="timing-wrapper">
											<div class="box-wrapper">
												<div class="date box">
													<span class="key">120</span> <span class="value">DAYS</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="hour box">
													<span class="key">20</span> <span class="value">HRS</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="minutes box">
													<span class="key">36</span> <span class="value">MINS</span>
												</div>
											</div>
											<div class="box-wrapper hidden-md">
												<div class="seconds box">
													<span class="key">60</span> <span class="value">SEC</span>
												</div>
											</div>
										</div>
									</div>
									<!-- /.hot-deal-wrapper -->

									<div class="product-info text-left m-t-20">
										<h3 class="name">
											<a href="${base}/detail">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="product-price">
											<span class="price"> $600.00 </span> <span
												class="price-before-discount">$800.00</span>
										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->

									<div class="cart clearfix animate-effect">
										<div class="action">
											<div class="add-cart-button btn-group">
												<button class="btn btn-primary icon" data-toggle="dropdown"
													type="button">
													<i class="fa fa-shopping-cart"></i>
												</button>
												<button class="btn btn-primary cart-btn" type="button">Add
													to cart</button>
											</div>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
							</div>
							<div class="item">
								<div class="products">
									<div class="hot-deal-wrapper">
										<div class="image">
											<img
												src="${base}/user/images/hot-deals/p5.jpg"
												alt="">
										</div>
										<div class="sale-offer-tag">
											<span>35%<br> off
											</span>
										</div>
										<div class="timing-wrapper">
											<div class="box-wrapper">
												<div class="date box">
													<span class="key">120</span> <span class="value">Days</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="hour box">
													<span class="key">20</span> <span class="value">HRS</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="minutes box">
													<span class="key">36</span> <span class="value">MINS</span>
												</div>
											</div>
											<div class="box-wrapper hidden-md">
												<div class="seconds box">
													<span class="key">60</span> <span class="value">SEC</span>
												</div>
											</div>
										</div>
									</div>
									<!-- /.hot-deal-wrapper -->

									<div class="product-info text-left m-t-20">
										<h3 class="name">
											<a href="${base}/detail">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="product-price">
											<span class="price"> $600.00 </span> <span
												class="price-before-discount">$800.00</span>
										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->

									<div class="cart clearfix animate-effect">
										<div class="action">
											<div class="add-cart-button btn-group">
												<button class="btn btn-primary icon" data-toggle="dropdown"
													type="button">
													<i class="fa fa-shopping-cart"></i>
												</button>
												<button class="btn btn-primary cart-btn" type="button">Add
													to cart</button>
											</div>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
							</div>
							<div class="item">
								<div class="products">
									<div class="hot-deal-wrapper">
										<div class="image">
											<img
												src="${base}/user/images/hot-deals/p10.jpg"
												alt="">
										</div>
										<div class="sale-offer-tag">
											<span>35%<br> off
											</span>
										</div>
										<div class="timing-wrapper">
											<div class="box-wrapper">
												<div class="date box">
													<span class="key">120</span> <span class="value">Days</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="hour box">
													<span class="key">20</span> <span class="value">HRS</span>
												</div>
											</div>
											<div class="box-wrapper">
												<div class="minutes box">
													<span class="key">36</span> <span class="value">MINS</span>
												</div>
											</div>
											<div class="box-wrapper hidden-md">
												<div class="seconds box">
													<span class="key">60</span> <span class="value">SEC</span>
												</div>
											</div>
										</div>
									</div>
									<!-- /.hot-deal-wrapper -->

									<div class="product-info text-left m-t-20">
										<h3 class="name">
											<a href="${base}/detail">Floral Print Buttoned</a>
										</h3>
										<div class="rating rateit-small"></div>
										<div class="product-price">
											<span class="price"> $600.00 </span> <span
												class="price-before-discount">$800.00</span>
										</div>
										<!-- /.product-price -->

									</div>
									<!-- /.product-info -->

									<div class="cart clearfix animate-effect">
										<div class="action">
											<div class="add-cart-button btn-group">
												<button class="btn btn-primary icon" data-toggle="dropdown"
													type="button">
													<i class="fa fa-shopping-cart"></i>
												</button>
												<button class="btn btn-primary cart-btn" type="button">Add
													to cart</button>
											</div>
										</div>
										<!-- /.action -->
									</div>
									<!-- /.cart -->
								</div>
							</div>
						</div>
						<!-- /.sidebar-widget -->
					</div>
					<!-- ============================================== HOT DEALS: END ============================================== -->

					<!-- ============================================== SPECIAL OFFER ============================================== -->

					<div class="sidebar-widget outer-bottom-small wow fadeInUp">
						<h3 class="section-title">Special Offer</h3>
						<div class="sidebar-widget-body outer-top-xs">
							<div
								class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p30.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p29.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p28.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p27.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p26.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p25.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p24.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p23.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->
														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p22.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.sidebar-widget-body -->
					</div>
					<!-- /.sidebar-widget -->
					<!-- ============================================== SPECIAL OFFER : END ============================================== -->
					<!-- ============================================== PRODUCT TAGS ============================================== -->
					
					<!-- /.sidebar-widget -->
					<!-- ============================================== PRODUCT TAGS : END ============================================== -->
					<!-- ============================================== SPECIAL DEALS ============================================== -->

					<div class="sidebar-widget outer-bottom-small wow fadeInUp">
						<h3 class="section-title">Special Deals</h3>
						<div class="sidebar-widget-body outer-top-xs">
							<div
								class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p28.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p15.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p26.jpg"
																	alt="image">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p18.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p17.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p16.jpg"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->
														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
								<div class="item">
									<div class="products special-product">
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p15.jpg"
																	alt="images">
																	<div class="zoom-overlay"></div>
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p14.jpg"
																	alt="">
																	<div class="zoom-overlay"></div>
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
										<div class="product">
											<div class="product-micro">
												<div class="row product-micro-row">
													<div class="col col-xs-5">
														<div class="product-image">
															<div class="image">
																<a href="#"> <img
																	src="${base}/user/images/products/p13.jpg"
																	alt="image">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->
													</div>
													<!-- /.col -->
													<div class="col col-xs-7">
														<div class="product-info">
															<h3 class="name">
																<a href="#">Floral Print Shirt</a>
															</h3>
															<div class="rating rateit-small"></div>
															<div class="product-price">
																<span class="price"> $450.99 </span>
															</div>
															<!-- /.product-price -->

														</div>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.product-micro-row -->
											</div>
											<!-- /.product-micro -->

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.sidebar-widget-body -->
					</div>
					<!-- /.sidebar-widget -->
					<!-- ============================================== SPECIAL DEALS : END ============================================== -->
					<!-- ============================================== NEWSLETTER ============================================== -->
					
					<!-- /.sidebar-widget -->
					<!-- ============================================== NEWSLETTER: END ============================================== -->

					<!-- ============================================== Testimonials============================================== -->
					

					<!-- ============================================== Testimonials: END ============================================== -->

					<div class="home-banner">
						<img
							src="${base}/user/images/banners/LHS-banner.jpg"
							alt="Image">
					</div>
				</div>
				<!-- /.sidemenu-holder -->
				<!-- ============================================== SIDEBAR : END ============================================== -->

				<!-- ============================================== CONTENT ============================================== -->
				<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="hero">
						<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
							<div class="item"
								style="background-image: url(${base}/user/images/banners/cat-banner-1.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Top Brands</div>
										<div class="big-text fadeInDown-1">New Collections</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit.</span>
										</div>
										<!-- <div class="button-holder fadeInDown-3">
											<a href="index.php?page=single-product"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div> -->
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

							<div class="item"
								style="background-image: url(${base}/user/images/sliders/02.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Spring 2021</div>
										<div class="big-text fadeInDown-1">
											Women <span class="highlight">Fashion</span>
										</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Nemo enim ipsam voluptatem quia voluptas sit
												aspernatur aut odit aut fugit</span>
										</div>
										<!-- <div class="button-holder fadeInDown-3">
											<a href="index.php?page=single-product"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div> -->
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

						</div>
						<!-- /.owl-carousel -->
					</div>

					<!-- ========================================= SECTION – HERO : END ========================================= -->

					<!-- ============================================== INFO BOXES ============================================== -->
					<div class="info-boxes wow fadeInUp">
						<div class="info-boxes-inner">
							<div class="row">
								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">money back</h4>
											</div>
										</div>
										<h6 class="text">30 Days Money Back Guarantee</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="hidden-md col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">free shipping</h4>
											</div>
										</div>
										<h6 class="text">Shipping on orders over $99</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">Special Sale</h4>
											</div>
										</div>
										<h6 class="text">Extra $5 off on all items</h6>
									</div>
								</div>
								<!-- .col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.info-boxes-inner -->

					</div>
					<!-- /.info-boxes -->
					<!-- ============================================== INFO BOXES : END ============================================== -->
					<!-- ============================================== SCROLL TABS ============================================== -->
					
					<!-- /.scroll-tabs -->
					<!-- ============================================== SCROLL TABS : END ============================================== -->
					<!-- ============================================== WIDE PRODUCTS ============================================== -->
					
					<!-- /.wide-banners -->

					<!-- ============================================== WIDE PRODUCTS : END ============================================== -->
					<!-- ============================================== FEATURED PRODUCTS ============================================== -->
					
					<!-- /.section -->
					<!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
					<!-- ============================================== WIDE PRODUCTS ============================================== -->
					
					<!-- /.wide-banners -->
					<!-- ============================================== WIDE PRODUCTS : END ============================================== -->
					<!-- ============================================== BEST SELLER ============================================== -->

					
					<!-- /.sidebar-widget -->
					<!-- ============================================== BEST SELLER : END ============================================== -->

					<!-- ============================================== BLOG SLIDER ============================================== -->

					<!-- /.section -->
					<!-- ============================================== BLOG SLIDER : END ============================================== -->

					<!-- ============================================== FEATURED PRODUCTS ============================================== -->
		<div class="clearfix filters-container m-t-10">
          <div class="row">
            <div class="col col-sm-6 col-md-2">
              <div class="filter-tabs">
                <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                  <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                  <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>List</a></li>
                </ul>
              </div>
              <!-- /.filter-tabs --> 
            </div>
            <!-- /.col -->
            <div class="col col-sm-12 col-md-6">
              <div class="col col-sm-3 col-md-6 no-padding">
                <div class="lbl-cnt"> <span class="lbl">Sort by</span>
                  <div class="fld inline">
                    <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                      <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> Position <span class="caret"></span> </button>
                      <ul role="menu" class="dropdown-menu">
                        <li role="presentation"><a href="#">position</a></li>
                        <li role="presentation"><a href="#">Price:Lowest first</a></li>
                        <li role="presentation"><a href="#">Price:HIghest first</a></li>
                        <li role="presentation"><a href="#">Product Name:A to Z</a></li>
                      </ul>
                    </div>
                  </div>
                  <!-- /.fld --> 
                </div>
                <!-- /.lbl-cnt --> 
              </div>
              <!-- /.col -->
              <div class="col col-sm-3 col-md-6 no-padding">
                <div class="lbl-cnt"> <span class="lbl">Show</span>
                  <div class="fld inline">
                    <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                      <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 1 <span class="caret"></span> </button>
                      <ul role="menu" class="dropdown-menu">
                        <li role="presentation"><a href="#">1</a></li>
                        <li role="presentation"><a href="#">2</a></li>
                        <li role="presentation"><a href="#">3</a></li>
                        <li role="presentation"><a href="#">4</a></li>
                        <li role="presentation"><a href="#">5</a></li>
                        <li role="presentation"><a href="#">6</a></li>
                        <li role="presentation"><a href="#">7</a></li>
                        <li role="presentation"><a href="#">8</a></li>
                        <li role="presentation"><a href="#">9</a></li>
                        <li role="presentation"><a href="#">10</a></li>
                      </ul>
                    </div>
                  </div>
                  <!-- /.fld --> 
                </div>
                <!-- /.lbl-cnt --> 
              </div>
              <!-- /.col --> 
            </div>
            <!-- /.col -->
            <div class="col col-sm-6 col-md-4 text-right">
              <div class="pagination-container">
                <ul class="list-inline list-unstyled">
                  <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                  <li><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- /.list-inline --> 
              </div>
              <!-- /.pagination-container --> </div>
            <!-- /.col --> 
          </div>
          <!-- /.row --> 
        </div>
        <div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
            <div class="tab-pane active " id="grid-container">
              <div class="category-product">
                <div class="row">
                	<c:forEach items="${products }" var="pro">
                  		<div class="col-sm-6 col-md-4 wow fadeInUp">
                  
                    <div class="products">
                      <div class="product">
                        <div class="product-image">
                          <div class="image"> <a href="${base}/detail/${pro.id}"><img  src="${base }/upload/${pro.avatar}" alt=""></a> </div>
                          <!-- /.image -->
                          
                          <div class="tag new"><span>new</span></div>
                        </div>
                        <!-- /.product-image -->
                        
                        <div class="product-info text-left">
                          <h3 class="name"><a href="${base}/detail/${pro.id}">${pro.title }</a></h3>
                          <div class="rating rateit-small"></div>
                          <div class="description"></div>
                          <div class="product-price"> <span class="price"> ${pro.priceSale } </span> <span class="price-before-discount">$ 800</span> </div>
                          <!-- /.product-price --> 

                        </div>
                        <!-- /.product-info -->
                        <div class="cart clearfix animate-effect">
                          <div class="action">
                            <ul class="list-unstyled">
                              <li class="add-cart-button btn-group">
                                <button class="btn btn-primary " title="AddToCart" onclick="addToCart(${pro.id},1)"> <i class="fa fa-shopping-cart"></i> </button>
                                       
                              </li>
                              <li class="lnk wishlist"> <a class="add-to-cart" href="${base}/detail" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                              <li class="lnk"> <a class="add-to-cart" href="${base}/detail/${pro.id}" title="Detail"> <i class="fa fa-signal"></i> </a> </li>
                            </ul>
                          </div>
                          <!-- /.action --> 
                        </div>
                        <!-- /.cart --> 
                      </div>
                      <!-- /.product --> 
                      
                    </div>
                    <!-- /.products --> 
                  </div>
                  	</c:forEach>
                  
      
                </div>
                <!-- /.row --> 
              </div>
              <!-- /.category-product --> 
              
            </div>
            <!-- /.tab-pane -->
            
            <div class="tab-pane "  id="list-container">
              <div class="category-product">
                <div class="category-product-inner wow fadeInUp">
                  <c:forEach var="pro" items="${products }">
                  	<div class="products">
                    <div class="product-list product">
                      <div class="row product-list-row">
                        <div class="col col-sm-4 col-lg-4">
                          <div class="product-image">
                            <div class="image"> <img src="${base}/user/images/products/p3.jpg" alt=""> </div>
                          </div>
                          <!-- /.product-image --> 
                        </div>
                        <!-- /.col -->
                        <div class="col col-sm-8 col-lg-8">
                          <div class="product-info">
                            <h3 class="name"><a href="${base}/detail">${pro.title }</a></h3>
                            <div class="rating rateit-small"></div>
                            <div class="product-price"> <span class="price"> ${pro.priceSale } </span> <span class="price-before-discount">${pro.price }</span> </div>
                            <!-- /.product-price -->
                            <div class="description m-t-10">${pro.shortDescription}</div>
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="${base}/detail" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="${base}/detail" title="Compare"> <i class="fa fa-signal"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                            
                          </div>
                          <!-- /.product-info --> 
                        </div>
                        <!-- /.col --> 
                      </div>
                      <!-- /.product-list-row -->
                      <div class="tag new"><span>new</span></div>
                    </div>
                    <!-- /.product-list --> 
                  </div>
                  </c:forEach>
                  <!-- /.products --> 
                </div>
                <!-- /.category-product-inner -->
                
                
               
              </div>
              <!-- /.category-product --> 
            </div>
            <!-- /.tab-pane #list-container --> 
          </div>
          <!-- /.tab-content -->
          <div class="clearfix filters-container">
            <div class="text-right">
              <div class="pagination-container">
                <ul class="list-inline list-unstyled">
                  <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                  <li><a href="#">1</a></li>
                  <li class="active"><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
                <!-- /.list-inline --> 
              </div>
              <!-- /.pagination-container --> </div>
            <!-- /.text-right --> 
            
          </div>
          <!-- /.filters-container --> 
          
        </div>
					<!-- /.section -->
					<!-- ============================================== FEATURED PRODUCTS : END ============================================== -->

				</div>
				<!-- /.homebanner-holder -->
				<!-- ============================================== CONTENT : END ============================================== -->
			</div>
			<!-- /.row -->
			<!-- ============================================== BRANDS CAROUSEL ============================================== -->

			<!-- /.logo-slider -->
			<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /#top-banner-and-menu -->

	<!-- ============================================================= FOOTER ============================================================= -->
	<jsp:include page="/WEB-INF/views/user/layout/footer.jsp"></jsp:include>
	<!-- ============================================================= FOOTER : END============================================================= -->

	<!-- For demo purposes – can be removed on production -->

	<!-- For demo purposes – can be removed on production : End -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	
	
	
	<jsp:include page="/WEB-INF/views/user/layout/js.jsp"></jsp:include>
	       <script type="text/javascript">
		 function addToCart(productId,quanlity) {
			//alert("Thêm vào giỏ hàng thành công");
			   let data = {
					productId: productId,
					quanlity: quanlity	
				};
				// $ === jQuery
				// json == javascript object
				 jQuery.ajax({
					url : "/cart/add",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(data),
					dataType : "json", // kieu du lieu tra ve tu controller la json
					success : function(jsonResult) {
						let totalItems = jsonResult.totalItems;
						jQuery("#totalCartItemId").html(totalItems);
						alert(jsonResult.message);
					},
					error : function(jqXhr, textStatus, errorMessage) { // error callback 
						
					} 
				});    
		 }
	</script>
	
</body>
</html>