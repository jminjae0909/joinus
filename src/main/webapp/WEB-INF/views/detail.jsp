<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../views/script.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CODEE</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


</head>
<script>

$(function(){
	
$(document).ready(function(){
	  var currentPosition = parseInt($(".quickmenu").css("top"));
	  $(window).scroll(function() {
	    var position = $(window).scrollTop(); 
	    $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
	  });
	});
});

</script>
<style>

#detail_title{
	margin-top: 150px;
    font-weight: 800;
    font-size: 3rem;
    line-height: 126.5%;
    letter-spacing: -.005em;
    color: #000;
}
#contents_usersDate{
	margin-top: 32px;
    padding-bottom: 32px;
    border-bottom: 3px solid #f2f2f2;
    display: flex;
    grid-gap: 15px;
    gap: 15px;
    align-items: center;
}

#contents_users{
	color: #333;
    cursor: pointer;
    font-size: 25px;
    font-weight: 700;
    padding-right: 15px;
    border-right: 2px solid #e1e1e1;
}

#contents_date{
	font-size: 18px;
    color: #717171;
}

#detail_info{
	position: relative;
}

#detail_info_Grid{
	display: grid;
    grid-template-columns: repeat(2,3fr);
    grid-row-gap: 24px;
    row-gap: 24px;
    margin-top: 60px;
}

#detail_meeting_1{
	display: flex;
    position: relative;
    align-items: center;
    font-weight: 700;
    font-size: 20px;
}

#meeting_categorty_title{
	margin-left: 100px;
	color: #717171;
    margin-right: 40px;
}

#meeting_categorty_content{
	color: #333;
}

#meeting_onoff_title{
	margin-left: 200px;
	color: #717171;
    margin-right: 40px;
}

#meeting_onoff_content{
	color: #333;
}

#meeting_membernum_title{
	margin-left: 100px;
	color: #717171;
    margin-right: 40px;
}

#meeting_membernum_content{
	color: #333;
}

#meeting_startdate_title{
	margin-left: 200px;
	color: #717171;
    margin-right: 40px;
}

#meeting_startdate_content{
	color: #333;
}

#meeting_contact_title{
	margin-left: 100px;
	color: #717171;
    margin-right: 40px;
}

#meeting_contact_content{
	color: #333;
}

#meeting_period_title{
	margin-left: 200px;
	color: #717171;
    margin-right: 40px;
}

#meeting_period_content{
	color: #333;
}

#meeting_skill_title{
	margin-left: 100px;
	color: #717171;
    margin-right: 40px;
}

#meeting_skill_content{
	color: #333;
}

#detail_content{
	margin-top: 100px;
    font-size: 1.125rem;
    word-break: break-all;
    line-height: 1.7;
    letter-spacing: -.004em;
}

#detail_content_title{
	margin: 0;
    color: #333;
    font-size: 26px;
    font-weight: 700;
    padding-bottom: 24px;
    border-bottom: 3px solid #f2f2f2;
}

#detail_content_info{
	width: 90%;
    margin: 40px auto 0;
}

#detail_map_title{
	margin: 0;
    color: #333;
    font-size: 26px;
    font-weight: 700;
    padding-bottom: 24px;
    border-bottom: 3px solid #f2f2f2;
}

#map{
	margin-top:50px;
	margin-left: 270px;
}

#detail_meeting_place{
	margin-left: 150px;
	margin-top:50px;
	font-weight: 700;
	font-size: 20px;
	color: #333;
}

a{
	text-decoration: none;
}

ul{
   list-style:none;
}
#favorites_li{
	display: flex;
    position: relative;
    align-items: center;
    font-weight: 700;
    font-size: 20px;
    margin-left: 700px;
}

#favorites_add_btn{
	border-radius: 50%;
}

#favorites_delete_btn{
	border-radius: 50%;
}

.quickmenu {
	position:absolute;
	width:250px;
	top:50%;
	margin-top:-50px;
	right:10px;
	background:#fff;
}

.quickmenu ul {
	position:relative;
	float:left;
	width:100%;
	display:inline-block;
	*display:inline;
	border:2px solid #e2e2e2;
	border-radius: 1rem;
}

.quickmenu ul li {
	margin-left: -32;
	float:left;
	width:245px;
	border-bottom:1px solid #ddd;
	text-align:center;
	display:inline-block;
	*display:inline;
	font-weight: 600;
}
.quickmenu ul li a {
	position:relative;
	float:left;
	width:100%;
	height:30px;
	line-height:30px;
	text-align:left;
	color: #333;
	font-size:9.5pt;
	margin-left: 10px;
}
.quickmenu ul li a:hover {
	color:#000;
}
.quickmenu ul li:last-child {
	border-bottom:0;
}
.quickmenu a{
	text-decoration: none;
}
.quickmenu label{
	margin-left: 60px;
	color: #333;
	font-size: 15px;
    font-weight: 700;
}

.quickmenu_label{
	margin-bottom: 20px;
}

</style>
<body>

	<jsp:include page="head.jsp" />
	
	<div class="quickmenu">	
		<label class="quickmenu_label">‍조회수TOP 모임‍🔥</label>
  		<ul>
 			 <c:forEach var="hitsdto" items="${list2}">
				<c:choose>
					<c:when test="${fn:length(hitsdto.meeting_title) > 20}">
						<li>
							<a href="/meeting/detail?meeting_number=${hitsdto.meeting_number }&users_id=${ldto.users_id}">
								<c:out value="${fn:substring(hitsdto.meeting_title,0,19)}"/>....
							</a>
						</li>
					</c:when>
					<c:otherwise>
						<li>
							<a href="/meeting/detail?meeting_number=${hitsdto.meeting_number }&users_id=${ldto.users_id}">
								<c:out value="${hitsdto.meeting_title}"/>
							</a>
						</li>	
    				</c:otherwise> 	
   			 	</c:choose>
  			</c:forEach>
  		</ul>
	</div>
		
	<div class="container">		
			<section>
				<div id="detail_title">
					${dto.meeting_title}					
				</div>
				<div id="contents_usersDate">
					<div id="contents_users">
						${dto.users_id}
					</div>
					<div id="contents_date">
						${dto.meeting_insertdate}
					</div>
					
				<div id="contents_favorites">
					<ul id="favorites_ul">
						<li id="favorites_li">
							<form action="favorites_add" method="post">
								<c:if test="${ldto.users_id ne dto2.users_id}">
								<input type="submit" value="❤️" class="btn btn-outline-danger" id="favorites_add_btn" onclick="overClick()"/>
								<input type="hidden" name="meeting_number" value="${dto.meeting_number }" />
								<input type="hidden" name="users_id" value="${ldto.users_id }" />							
								</c:if>
							</form>
							
							<form action="favorites_delete" method="Get">
								<c:if test="${ldto.users_id eq dto2.users_id and ldto.users_id ne null}">
								<input type="submit" value="🤍" class="btn btn-danger" id="favorites_delete_btn" />
								<input type="hidden" name="meeting_number" value="${dto.meeting_number }" />
								<input type="hidden" name="users_id" value="${ldto.users_id }" />
								</c:if>
							</form>						
						</li>
					</ul>															 						 	
					</div>
				</div>
				
				<div id="detail_info">
					<ul id="detail_info_Grid">
						<li id="detail_meeting_1">						
							<span id="meeting_categorty_title">모집 종류</span>
							<span id="meeting_categorty_content">
								<c:if test="${dto.meeting_category eq 1 }">
									<c:out value="스터디" />
								</c:if>
								<c:if test="${dto.meeting_category eq 0 }">
									<c:out value="프로젝트" />
								</c:if>
							
							</span>
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_onoff_title">진행 방식</span>
							<span id="meeting_onoff_content">${dto.meeting_onoff}</span>						
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_membernum_title">모집 인원</span>
							<span id="meeting_membernum_content">${dto.meeting_membernum}명</span>						
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_startdate_title">시작 예정</span>
							<span id="meeting_startdate_content">${dto.meeting_startdate}</span>						
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_contact_title">오픈 카톡</span>
							<span id="meeting_contact_content">${dto.meeting_contact}</span>						
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_period_title">예상 기간</span>
							<span id="meeting_period_content">${dto.meeting_period}</span>						
						</li>
						<li id="detail_meeting_1">
							<span id="meeting_skill_title" style="position: relative; top: -40px;">사용 기술</span>
							<div id="meeting_contact_content" style="position: relative; top: -40px;">
								<div style="margin-bottom: 50px; margin-top: 50px;">
									<c:if test = "${fn:contains(dto.meeting_skill, 'java')}">
									<span><img src="https://holaworld.io/images/languages/java.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>							
									<c:if test = "${fn:contains(dto.meeting_skill, 'Spring')}">
									<span><img src="https://holaworld.io/images/languages/spring.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'Nodejs')}">
									<span><img src="https://holaworld.io/images/languages/nodejs.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'Kotlin')}">
									<span><img src="https://holaworld.io/images/languages/kotlin.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'TypeScript')}">
									<span><img src="https://holaworld.io/images/languages/typescript.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'React')}">
									<span><img src="https://holaworld.io/images/languages/react.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'Vue')}">
									<span><img src="https://holaworld.io/images/languages/vue.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'MySQL')}">
									<span><img src="https://holaworld.io/images/languages/mysql.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'Python')}">
									<span><img src="https://holaworld.io/images/languages/python.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
									<c:if test = "${fn:contains(dto.meeting_skill, 'php')}">
									<span><img src="https://holaworld.io/images/languages/php.svg" alt="" style="width: 50px; height: 50px;"/></span>
									</c:if>
								</div>				
							</div>
						</li>				
					</ul>
				</div>
			</section>
			
			<div id="detail_content">
				<h2 id="detail_content_title">프로젝트 소개</h2>
			</div>
			<div id="detail_content_info">
				${dto.meeting_contents}				
			</div>
			<br />
			<br />
			<br />
			<br />
			<div id="detail_map">
				<h2 id="detail_map_title">모임장소</h2>			
					<div id="detail_meeting_place">${dto.meeting_place}</div>
					
				<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
					<jsp:include page="../views/map.jsp">
						<jsp:param value="${dto.meeting_place }" name="place"/>
					</jsp:include>
				</div>
			</div>
	
		<br />
		<br />
		<br />
		<br />
		<table class="table table-striped-columns">
		<tr>
				<td colspan="4">
					<a href="/joinus/main" class="btn btn-dark">목록</a>
					<c:if test="${ldto.users_id eq dto.users_id }">
						<a href="/meeting/modify?meeting_number=${dto.meeting_number }" class="btn btn-dark">수정</a>
						<a href="/meeting/delete?meeting_number=${dto.meeting_number }" class="btn btn-dark">삭제</a>
					</c:if>
				</td>
				</tr>
		</table>
		
		<%@ include file="/WEB-INF/views/comments.jsp" %>
	
	</div>
</body>
</html>