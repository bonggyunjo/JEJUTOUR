<%@ page contentType="text/html" pageEncoding="utf-8"  %>
<%
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
%>
<style>
    body {
      background-image: url("../Introduce/image.1111.png");
	background-repeat:no-repeat;
      background-size:100%;
	  overflow:hidden;
    }
  </style>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="basic.css">  
    <link rel="stylesheet" href="SuccessMypage.css">  
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body link="gray" vlink="gray" alink="gray">
    <header>
        <div class="header-align">
        <div id ="header-top" >		
            <span style="float:left; position :relative; top:0px; " id="header-login-success-name" > <img src="login-image.png" style="width:40px;
                height:40px; float:left; "> &nbsp;&nbsp;<span style="font-weight:bolder; position:relative;
            top:10px; color:lightgray"><%= id%>(<%= name %>님)</span> </span>
      
        <span>
			<a href="../MyPage/loginSuccessMyPage.jsp"  style="position :relative; left:-3.2%;">
            마이페이지</a>
        </span>       	
        <span>
            <a href="../Logout/logout.jsp"  style="position :relative; left:-3.2%;">
            | 로그아웃</a>
        </span>
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Login/login_welcome.jsp" style="color:#77c466; text-decoration: none;"> 제주<span style="color:black;">어서옵세</span>  </a></h1>
        </div>
        
        </div>
        </header>
        
        <main>
            <div id="main-align">
                <div id="title"> <h1>My Page</h1> </div>
                        <span style="position:relative; left:58%; bottom:92px;"><img src="../MyPage/mypage.png" style="width:110px; height:75px;"></span>
                <div id="text-first">
            <span><h1>사용자 정보 관리</a></h1></span>
        </div>
            <div id="update-user-information">
            <span><h2><a href="../UpDate/upDate.jsp" style="color:black">회원 정보 수정</a></h2></span>
            </div>

            <div id="delete-user-information">
            <span><h2><a href="../DeleteUserInformation/deleteUserInformation.jsp" style="color:black">회원 탈퇴</a></h2></span>       
            </div>

            <div id="my-information">
            <span><h2><a href="../MyPage/MyInformation.jsp" style="color:black">내 정보</a></h2></span>
            </div>

            <div id="reserve-user">
            <span> <h1>사용자 예약 관리</h1></span>           
            </div>
            <div id="reserve-ok">
           <span><h2><a href="../MyPage/ReserverOk.jsp" style="color:black"> 차량 예약 확인 </a></h2></span>
            </div>
             <div id="reserve-ok">
           <span style="position:relative; bottom:-10px;"><h2><a href="../Lodgment/LodmentSelect.jsp" style="color:black"> 숙박 예약 확인 </a></h2></span>
            </div>
        </div>
        </main>
       
</body>
</html>