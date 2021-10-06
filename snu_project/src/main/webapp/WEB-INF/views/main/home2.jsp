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
		<%@ include file="../../include/header.jsp"%>
		${student.getName()}
		<%@ include file="../../include/footer.jsp"%>
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