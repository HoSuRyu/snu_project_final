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

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/home.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/footer.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/carousel.css" />



<style type="text/css">


/* 반응형 css*/



/* 가장 작은 해상도 (모바일 , 가로 767px이하 )*/
@media ( max-width :767px) {

}

/*태블릿 or 가로 768px이상 ~ 991px이하*/
@media (min-width:992px) and (max-width: 1199px){

}

</style>

</head>

<body>
	<div class="container">
		<%@ include file="../include/header.jsp"%>


		<div class="snu_main">
			<div class="row">
				<div class="col-md-2"></div>

				<div class="col-md-4 snu_main_promise_content_box">
					<div>
						<button class="promise_btn btn default-btn">기조문 더보기</button>
						<br />
						<div style="padding: 30px 0px;">
							<span class="snu_name_info">제41대 서울대학교 사범대학 학생회 선본</span> <br>
							<span class="snu_name">선본명</span>
						</div>

						<br /> <br />

						<div class="snu_main_promise_text">
							여기서는 기조분을 요약한다. 그러나 지금은 하지않는다. <br> 왜냐면 내가 할건 아니기 떄문이다. <br>
							그러나 공백이라면 조금 어색할 거 같아 어느정도 써본다. <br> 선본 화이팅 개발자들 화이팅 팀장님들
							화이팅 <br> 그리고 정후보 부후보 화이팅 <br /> <br /> 진짜 피곤하다 여러분도 다
							피곤하시겠죠.? <br> 그리고 정후보 부후보 화이팅
						</div>
					</div>


				</div>

				<div class="col-md-4 snu_main_candidate_info">
					<button class="candidate_btn btn default-btn">후보자 더보기</button>
					<div class="snu_main_candidate_img_box">
						<img src="${pageContext.request.contextPath }/assets/img/1.png">

					</div>

				</div>

				<div class="col-md-1"></div>
			</div>

		</div>




		<div class="snu_main_promise">
			<div class="snu_promise_box">
				<h1>OUR PROMISE</h1>
				<br /> <br />
				<%@ include file="../include/main_carousel.jsp"%>
				<br /> <br /> <br />
			</div>


		</div>


		<div style="background-color: rgba(52, 152, 219, 0.08);"
			class="snu_detail_view">
			<div class="snu_detail_box">
				<br /> <br />
				<h1>MORE ABOUT US</h1>
				<br /></br>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/cn3gk3b5Mog"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<br /> <br /> <br /> <br />
			</div>
		</div>

		<%@ include file="../include/footer.jsp"%>
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