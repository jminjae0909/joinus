<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/script.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

ul.tabs {
	float: left;
	margin: 0px;
	padding: 0px;
	list-style: none;
	width: 15%;
	height: 300px;
	font-weight: bold;
}

ul.tabs li {
	float: left;
	width: 100%;
	background: none;
	color: #222;
	padding: 22px 16px;
	cursor: pointer;
	text-align: center;
	display: inline-block;
	outline: none;
	transition: 0.3s;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	width: 70%;
	float: left;
	display: none;
	padding: 10px 20px;
	border-top: 3px solid #eee;
}

.tab-content.current {
	display: inherit;
}

#tab-1 {
	padding-top: 3%;
	padding-left: 5%;
}

h6 {
	font-family: GmarketSansMedium;
}

.tab {
	margin-top: 58px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('ul.tabs li').click(function() {

			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			/* 현재 클릭한 li에 currnet 추가 */
			$(this).addClass('current');
			/* 현재 클릭한 li에 data-tab을 id로 하는 div에 current 추가 */
			$("#" + tab_id).addClass('current');

		});
		var link = document.location.href;
		var tab = link.includes("?rl=");
		if (tab) {
			console.log(tab);
			$("ul.tabs li").removeClass('current');
			$("#tab-1").removeClass('current');
			$("#tab-3").removeClass('current');
			$("#tab-4").removeClass('current');
			$("ul.tabs li:nth-child(2)").addClass('current');
			$("#tab-2").addClass('current');
		}

		var tab = link.includes("?il=");
		if (tab) {
			console.log(tab);
			$("ul.tabs li").removeClass('current');
			$("#tab-1").removeClass('current');
			$("#tab-2").removeClass('current');
			$("#tab-4").removeClass('current');
			$("ul.tabs li:nth-child(3)").addClass('current');
			$("#tab-3").addClass('current');
		}

		var link = document.location.href;
		var tab = link.includes("?sign=");
		if (tab) {
			console.log(tab);
			$("ul.tabs li").removeClass('current');
			$("#tab-1").removeClass('current');
			$("#tab-2").removeClass('current');
			$("#tab-3").removeClass('current');
			$("#tab-4").removeClass('current');
			$("ul.tabs li:nth-child(5)").addClass('current');
			$("#tab-5").addClass('current');
		}

		$("#btn1").on("click", function() {

			var pw = $("#pw").val();
			var pwok = $("#pwok").val();
			if (pw == pwok) {
				frm.action = "updateClient.jsp";
				frm.method = "get";
				frm.submit();

			}
		});

	});
</script>
</head>
<body>
	<header id="header" class="header d-flex align-items-center">
		<jsp:include page="head.jsp" />
	</header>
	<div class="tab">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">회원정보수정</li>
			<li class="tab-link" data-tab="tab-2">작성글조회</li>
			<li class="tab-link" data-tab="tab-3">관심목록조회</li>
			<li class="tab-link" data-tab="tab-4">나의후기조회</li>
		</ul>

		<div id="tab-1" class="tab-content current">

			<form action="modify.jsp" name="frm">
				<h6>비밀번호를 다시한번 입력해주세요.</h6>
				<p>
					<input type="password" name="pw" id="pw" /> <input type="hidden"
						name="pwok" id="pwok" value="" /> <input type="submit" value="확인"
						id="btn13" class="btn btn-outline-success" />

				</p>
			</form>
		</div>

		<div id="tab-2" class="tab-content"></div>

		<div id="tab-3" class="tab-content"></div>
		<div id="tab-4" class="tab-content"></div>
		<div id="tab-5" class="tab-content"></div>
	</div>
</body>
</html>