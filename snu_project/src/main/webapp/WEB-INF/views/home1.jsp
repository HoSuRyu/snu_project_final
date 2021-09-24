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
	href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />



<style type="text/css">
/* 반응형 css*/
@media ( min-width :1200px) {
	div.snu_sns_btn {
		position: absolute;
		top: 0;
		right: 80px;
	}
	div.snu_header{height:800px;}
}
@media (max-width:767px){
div.snu_header{height:300px;}

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
.snu_main_promise {
	width: 90%;
	margin: auto;
}

.snu_main_promise h1 {
	font-weight: bold;
	font-size: 25px;
	color: #0F0F70;
}

/**/


/* COMPONENT DEFINITION */
@media(max-width:1200px){

div.carousel{ --box-width: 30vw;

}


}
.carousel {
  /* INPUTABLE */
  --padding-top: 3vw;
  --padding-right: 3vw;
  --padding-left: 3vw;
  --padding-bottom: 3vw;
  --box-width: 15vw;
  --box-spacer: 3vw;
  --box-aspect-ratio: 12 / 9;
  --bg-color: white;
  --scrollbar-color: lightgrey;
  --scrollbar-thumb-size: 5px;
  --border-radius-width: 2px;

  /* DERIVED -  Do Not Override !! */
  --box-height: calc(var(--box-width) * var(--box-aspect-ratio));
  --padding-bottom-base: calc(
    var(--padding-bottom) - var(--scrollbar-thumb-size)
  );
  --padding-bottom-outer: calc(var(--padding-bottom-base) * 0.5);
  --padding-bottom-inner: calc(var(--padding-bottom-base) * 0.5);

  /* style */
  background: var(--bg-color);
  padding-top: var(--padding-top);
  padding-right: var(--padding-right);
  padding-left: var(--padding-left);
  padding-bottom: var(--padding-bottom-outer);
  border-radius: var(--border-radius-width);
}

.carousel__container {
  display: flex;
  overflow-x: scroll;
  scroll-snap-type: x mandatory;
  padding-bottom: var(--padding-bottom-inner);

  &::-webkit-scrollbar {
    height: var(--scrollbar-thumb-size);
  }

  &::-webkit-scrollbar-thumb {
    background-color: var(--scrollbar-color);
    border-radius: 50px;
    visibility: hidden;
    border-radius: var(--border-radius-width);
  }
  &:hover::-webkit-scrollbar-thumb {
    visibility: visible;
  }
}
.carousel__box + .carousel__box {
  margin-left: var(--box-spacer);
}
.carousel__box {
  flex-shrink: 0;
  width: var(--box-width);
  height: var(--box-height);
  overflow: hidden;
  position: relative;
  border-radius: var(--border-radius-width);
  
  scroll-snap-align: start;
}
.carousel__box img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

/* THIS CODEPEN IMPLEMENTATION - 1 BASIC STYLE */
$cool-green: hsl(139deg 80% 73%);

  @media (min-width: 800px) {
    padding-inline: 3vmax;
  }
}
.good-green {
  color: $cool-green;
}
.bottom-spacer {
  padding: 0;
  margin-top: 15vmax;
}
.heading {
  font-weight: 400;
  font-size: calc(1rem * 1.414 * 1.414 * 1.414);
  line-height: 1;
  letter-spacing: 0.02em;
}
.section {
  margin: 3vw 0;
}
p {
  margin-top: 1vw;
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
			<div class="carousel my-carousel-1">
				<div class="carousel__container">
					<div class="carousel__box">
						<img
							src="https://source.unsplash.com/random/800x600/?art,abstract" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,color" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,design" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,woman" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,travel" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,design" />
					</div>
					<div class="carousel__box">
						<img
							src="https://source.unsplash.com/random/800x600/?art,architecture" />
					</div>
					<div class="carousel__box">
						<img
							src="https://source.unsplash.com/random/800x600/?art,geometry" />
					</div>
					<div class="carousel__box">
						<img
							src="https://source.unsplash.com/random/800x600/?art,abstract,geometry" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,summer" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,color" />
					</div>
					<div class="carousel__box">
						<img src="https://source.unsplash.com/random/800x600/?art,design" />
					</div>
				</div>
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
		
	</script>



</body>
</html>