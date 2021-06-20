<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="utf-8">
<head>
  <title>Busan travel</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>
	<%
			String userID = null;
			if (session.getAttribute("userID") != null) {
					userID = (String) session.getAttribute("userID");
			}
	%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="main1.jsp">Busan travel</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="main1.jsp">관광명소</a></li>
        <li><a href="#">이용안내</a></li>
        <li class="active"><a href="11.jsp">관광코스</a></li>
        <li><a href="#">통근노선안내</a></li>
        <li><a href="user.jsp">후기/문의</a></li>
      </ul>
			 <%
			 if(userID == null) {
			 %>
			<ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
			 <%
			 } else {
				%>
			<ul class="nav navbar-nav navbar-right">
       <li><a href="search.jsp">Search</a></li>
        <li><a href="logoutAction.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
				<%
			 }
			 	%>
    </div>
  </div>
</nav>

 <br><br>
<div class="container text-center">    
  <h2>인기 부산여행</h2><br>
  	<div class="row">
	    <div class="col-sm-4">
	    		<img src="images/image3.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<div class="cont">
	      	<h4>가파른 절벽 끝에 흰여울 문화마을</h4>
	      		<a href="http://localhost:8080/woo/webProject/filedownload.jsp">파일 다운받기</a>
	      	</div>
	    </div>
	    <div class="col-sm-4"> 
	    	<a href="https://www.visitbusan.net/index.do?menuCd=DOM_000000201001001000&uc_seq=366">
	      	<img src="images/image4.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산 일몰 명소, 다대포해수욕장</h4>
	      </a>
	    </div>
	     <div class="col-sm-4">
	     	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000201001001000&uc_seq=278&lang_cd=ko">
	      	<img src="images/image8.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산항 관문의 상징 오륙도!</h4>
	      </a>  
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000202002001000&uc_seq=855&lang_cd=ko">
	      	<img src="images/image5.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>부산 야경을 한눈에 볼 수 있는 황령산</h4>
	      </a>
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000201001001000&uc_seq=286&lang_cd=ko">
	      	<img src="images/image6.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>바다 위의 케이블카! 송도 케이블카</h4>
	      </a>
	    </div>
	    <div class="col-sm-4">
	    	<a href="https://www.visitbusan.net/kr/index.do?menuCd=DOM_000000202002001000&uc_seq=1014&lang_cd=ko">
	      	<img src="images/image7.jpg" class="img-responsive" style="width:100%" alt="Image">
	      	<h4>힐링하기 좋은 부산 어촌마을</h4>
	      </a>
	    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
</footer>


<footer class="container-fluid text-center">
  <p></p>
</footer>

</body>
</html>
