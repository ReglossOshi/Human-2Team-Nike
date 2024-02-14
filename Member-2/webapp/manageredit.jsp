<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 로그인 여부 확인
    if (session.getAttribute("id") == null) {
        response.sendRedirect("login.jsp"); // 로그인 페이지로 이동
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/manageredit.css">
<title>회원정보 수정</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="index.jsp" class="logodiv">
                <img src="image/icons.png" alt="icon">
                <div class="logoname">의류 생산 관리</div>
            </a>
        </div>
        <%@ include file="menu.jsp" %>
        <ul class="menu">
            <li>
                <a><%=session.getAttribute("id")%>님, 환영합니다.</a>
                <ul class="submenu">
                    <li><a href="#">회원정보</a></li>
                    <li><a href="logout.jsp">로그아웃</a></li>
                </ul>
            </li>
        </ul>
    </header>
    
    <div class="container">
        <h2>회원정보</h2>
        <br>
        <form action="update_profile.jsp" method="post">
        <div class="container_in">
            <label for="id">아이디: <%= session.getAttribute("id") %></label><br>
            <br>
            <label for="name">이름: <%= session.getAttribute("name") %></label><br>
    		<br>
            <label for="email">이메일: <%= session.getAttribute("email") %></label><br>
            <br>
            <label for="phone">휴대폰 번호: <%= session.getAttribute("phone") %></label><br>
        </div>    
        </form>
    </div>
</body>
</html>