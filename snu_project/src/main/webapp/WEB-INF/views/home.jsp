<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>선거</title>
<!-- link rel="shortcut icon" href="아이콘 경로" /!-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />



<style type="text/css">
/* 반응형 css*/
@media ( min-width :1200px) {
	div.snu_sns_btn {
		position: absolute;
		top: 0;
		right: 80px;
	}
	div.snu_header {
		height: 800px;
	}
}

@media ( max-width :767px) {
	div.snu_header {
		height: 300px;
	}
}

/*
header css
*/
.container {
	padding: 0px;
	width: 100%;
}

.snu_header {
	width: 100%;
	display: flex;
	background-color: white;
	padding: 10px 0px;
	background-image:
		url('${pageContext.request.contextPath}/assets/img/seoul.png');
	height: 500px;
	background-repeat: no-repeat;
}

.snu_header .row {
	margin: 0px;
	width: 100%;
	position: relative;
}

.snu_logo {
	color: white;
	background-color: #0F0F70;
	font-size: 30px;
	padding: 20px 0px;
	text-align: center;
}

.snu_motto {
	padding-top: 50px;
	font-weight: bold;
	color: white;
}

.snu_vote_period span {
	font-weight: bold;
	color: #0F0F70;
	font-size: 14px;
}

.snu_sns_btn {
	position: absolute;
	top: 0;
	right: 0;
}

.snu_sns_btn a {
	display: inline-block;
	background-color: #0F0F70;
	padding: 10px;
	width: 40px;
	height: 40px;
	line-height: 18px;
	text-align: center;
	border-radius: 0.5em;
	margin-right: 10px;
}

.snu_sns_btn i {
	color: white;
	font-size: 20px;
}
/*
header css
*/
.snu_main_promise, .snu_visit_view {
	width: 90%;
	margin: auto;
}

.snu_main_promise h1, .snu_visit_view h1 {
	font-weight: bold;
	font-size: 25px;
	color: #0F0F70;
}
/**/
html {
	position: relative;
	min-height: 100%;
}

body {
	/* Margin bottom by footer height */
	margin-bottom: 60px;
}
/* code customized by Iatek LLC 2018 */
/* Sticky carousel-example-1 styles
-------------------------------------------------- */
@media ( min-width : 768px) and (max-width: 991px) {
	/* Show 4th slide on md if col-md-4*/
	#carousel-example-1 .carousel-inner .active.col-md-4.carousel-item+.carousel-item+.carousel-item+.carousel-item
		{
		position: absolute;
		top: 0;
		right: -33.3333%; /*change this with javascript in the future*/
		z-index: -1;
		display: block;
		visibility: visible;
	}
}

@media ( min-width : 576px) and (max-width: 768px) {
	/* Show 3rd slide on sm if col-sm-6*/
	#carousel-example-1 .carousel-inner .active.col-sm-6.carousel-item+.carousel-item+.carousel-item
		{
		position: absolute;
		top: 0;
		right: -50%; /*change this with javascript in the future*/
		z-index: -1;
		display: block;
		visibility: visible;
	}
}

@media ( min-width : 1px) {
	#carousel-example-1 .carousel-item {
		margin-right: 0;
	}
	/* show 2 items */
	#carousel-example-1 .carousel-inner .active+.carousel-item {
		display: block;
	}
	#carousel-example-1 .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
		#carousel-example-1 .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left)+.carousel-item
		{
		transition: none;
	}
	#carousel-example-1 .carousel-inner .carousel-item-next {
		position: relative;
		transform: translate3d(0, 0, 0);
	}
	/* left or forward direction */
	#carousel-example-1 .active.carousel-item-left+.carousel-item-next.carousel-item-left,
		#carousel-example-1 .carousel-item-next.carousel-item-left+.carousel-item,
		#carousel-example-1 .carousel-item-next.carousel-item-left+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(-100%, 0, 0);
		visibility: visible;
	}
	/* farthest right hidden item must be also positioned for animations */
	#carousel-example-1 .carousel-inner .carousel-item-prev.carousel-item-right
		{
		position: absolute;
		top: 0;
		left: 0;
		z-index: -1;
		display: block;
		visibility: visible;
	}
	/* right or prev direction */
	#carousel-example-1 .active.carousel-item-right+.carousel-item-prev.carousel-item-right,
		#carousel-example-1 .carousel-item-prev.carousel-item-right+.carousel-item,
		#carousel-example-1 .carousel-item-prev.carousel-item-right+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(100%, 0, 0);
		visibility: visible;
		display: block;
		visibility: visible;
	}
}
/* MD */
@media ( min-width : 768px) {
	/* show 3rd of 3 item slide */
	#carousel-example-1 .carousel-inner .active+.carousel-item+.carousel-item
		{
		display: block;
	}
	#carousel-example-1 .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left)+.carousel-item+.carousel-item
		{
		transition: none;
	}
	#carousel-example-1 .carousel-inner .carousel-item-next {
		position: relative;
		transform: translate3d(0, 0, 0);
	}
	/* left or forward direction */
	#carousel-example-1 .carousel-item-next.carousel-item-left+.carousel-item+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(-100%, 0, 0);
		visibility: visible;
	}
	/* right or prev direction */
	#carousel-example-1 .carousel-item-prev.carousel-item-right+.carousel-item+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(100%, 0, 0);
		visibility: visible;
		display: block;
		visibility: visible;
	}
}
/* LG */
@media ( min-width : 991px) {
	/* show 4th item */
	#carousel-example-1 .carousel-inner .active+.carousel-item+.carousel-item+.carousel-item
		{
		display: block;
	}
	#carousel-example-1 .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left)+.carousel-item+.carousel-item+.carousel-item
		{
		transition: none;
	}
	/* Show 5th slide on lg if col-lg-3 */
	#carousel-example-1 .carousel-inner .active.col-lg-3.carousel-item+.carousel-item+.carousel-item+.carousel-item+.carousel-item
		{
		position: absolute;
		top: 0;
		right: -25%; /*change this with javascript in the future*/
		z-index: -1;
		display: block;
		visibility: visible;
	}
	/* left or forward direction */
	#carousel-example-1 .carousel-item-next.carousel-item-left+.carousel-item+.carousel-item+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(-100%, 0, 0);
		visibility: visible;
	}
	/* right or prev direction //t - previous slide direction last item animation fix */
	#carousel-example-1 .carousel-item-prev.carousel-item-right+.carousel-item+.carousel-item+.carousel-item+.carousel-item
		{
		position: relative;
		transform: translate3d(100%, 0, 0);
		visibility: visible;
		display: block;
		visibility: visible;
	}
	.carousel-control-prev, .carousel-control-next {
		width: 0%;
	}
	.carousel-control-next {
		right: -30px;
	}
	.carousel-control-prev {
		left: -30px;
	}
}

.snu_promise_info {
	width: 85%;
	padding: 20% 0%;
	margin: auto;
	border-radius: 0.5em;
	box-shadow: 5px 5px 5px 2px rgb(0 0 0/ 30%)
}

.snu_promise_text {
	color: white;
	font-size: 18px;
	font-weight: bold;
}

.snu_promise_icon {
	color: white;
	font-size: 50px;
}

@media ( max-width :767px) {
	.snu_promise_text {
		font-size: 14px;
	}
	.snu_promise_icon {
		font-size: 35px;
	}
}
</style>

</head>

<body>
	<div class="container">
		<div class="snu_header">
			<div class="row">
				<div class="col-md-1 col-sm-1 col-xs-1"></div>

				<div class="col-md-2 col-sm-3 col-xs-3 snu_logo ">SUNBON</div>

				<div class="col-md-4 col-sm-5 hidden-xs  snu_motto ">선본슬로거 어쩌구
					저쩌구 어쩌구</div>

				<div class="col-md-4 hidden-sm hidden-xs snu_vote_period"
					style="margin-top: 15px;">
					<span>제 41대 사범대 학생회 선거기간:</span> <br /> <span>2021년 10월 15일
						~ 2021년 10월 17일</span> <br /> <span>vote for us</span>
				</div>

				<div class="col-md-1"></div>

				<div class="snu_sns_btn" style="margin-top: 20px;">
					<a href=""><i class="fab fa-instagram"></i></a> <a href=""><i
						class="fab fa-facebook-f"></i></a> <a href=""><i
						class="fab fa-youtube"></i></a>
				</div>
			</div>
		</div>


		<div class="snu_main_promise">
			<h1>저희 선본은 이런 사범대학을 꿈꿉니다.</h1>
			<div class="images-content">
				<div class="container-fluid">
					<div id="carousel-example-1" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner row w-100 mx-auto" role="listbox"
							style="padding: 10px 0px;">
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3 active">
								<div class="snu_promise_info"
									style="background-color: rgb(46, 204, 113);">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3">

								<div class="snu_promise_info"
									style="background-color: rgb(131, 198, 159)">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3">


								<div class="snu_promise_info"
									style="background-color: rgb(0, 111, 48);">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3">

								<div class="snu_promise_info"
									style="background-color: rgb(0, 111, 48);">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3">

								<div class="snu_promise_info"
									style="background-color: rgb(56, 230, 130);">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>
							<div
								class="carousel-item col-6  col-xs-6 col-sm-6 col-md-4 col-lg-3">
								<div class="snu_promise_info"
									style="background-color: rgb(95, 182, 132);">
									<div style="text-align: center; padding: 5% 0%;">
										<i class="far fa-user snu_promise_icon"></i>
									</div>
									<div style="text-align: center; padding: 10% 0%;">
										<span class="snu_promise_text">후보자에 대해</span>
									</div>
									<div style="text-align: center;">
										<span class="snu_promise_text"> 궁금하시다면</span>
									</div>
								</div>
							</div>

						</div>
						<a class="carousel-control-prev" href="#carousel-example-1"
							role="button" data-slide="prev" style="left: -30px; opacity: 1;">
							<i style="color: #0F0F70; font-size: 25px;"
							class="fas fa-angle-left"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example-1"
							role="button" data-slide="next" style="right: -30px; opacity: 1;">
							<i style="color: #0F0F70; font-size: 25px;"
							class="fas fa-angle-right"></i> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>

		</div>

		<div class="snu_visit_view">
			<h1>여러분께서는 어떤 사범대를 꿈꾸시나요?</h1>
			<div class="row">
				<div class="col-md-2"><span>여러분께서 원하시는 사범대의 모습을 적어주세요</span></div>
				<div class="col-md-10"></div>
			</div>

		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
	<script>
		/*
		Carousel Images
		 */
		$('#carousel-example-1')
				.on(
						'slide.bs.carousel',
						function(e) {
							/*
							    CC 2.0 License Iatek LLC 2018 - Attribution required
							 */
							var $e = $(e.relatedTarget);
							var idx = $e.index();
							var itemsPerSlide = 5;
							var totalItems = $('#carousel-example-1 .carousel-item').length;

							if (idx >= totalItems - (itemsPerSlide - 1)) {
								var it = itemsPerSlide - (totalItems - idx);
								for (var i = 0; i < it; i++) {
									// append slides to end
									if (e.direction == "left") {
										$('#carousel-example-1 .carousel-item')
												.eq(i)
												.appendTo(
														'#carousel-example-1 .carousel-inner');
									} else {
										$('#carousel-example-1 .carousel-item')
												.eq(0)
												.appendTo(
														'#carousel-example-1 .carousel-inner');
									}
								}
							}
						});
	</script>



</body>
</html>