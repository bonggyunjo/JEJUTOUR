<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>
    body {
      background-image: url("../Introduce/image.1111.png");
	background-repeat:no-repeat;
      background-size:100%;
	  overflow:hidden;
    }
  </style>
     <script>
        function openIdChk() {
            var id = document.getElementById("id").value;

            if (id === "") {
                alert("아이디를 입력하세요.");
                return;
            }

            // AJAX를 사용하여 서버에 아이디 중복 확인 요청
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "../Membership/checkid.jsp", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var response = xhr.responseText;
                    if (response === "duplicate") {
                        alert("중복 확인에 실패했습니다.");
                    } else if (response === "available") {
                        alert("중복된 아이디가 있습니다.");
                    } else {
                        alert("사용 가능한 아이디입니다.");
                    }
                }
            };
            xhr.send("id=" + id);
        }

        function joinCheck(form) {
            // 회원가입 유효성 검사 로직 추가...
            // 필요한 유효성 검사가 있으면 구현하세요.

            // 모든 유효성 검사를 통과한 경우 true 반환하여 폼 제출
            return true;
        }
    </script>

<script>
        function check(){
           
            if(document.getElementById("id").value==""){
                alert("아이디를 입력하세요");
                return;
            }
            if(document.getElementById("pw").value==""){
                alert("비밀번호를 입력하세요");
                return;
            }      
            if(document.getElementById("name").value==""){
               alert("이름을 입력하세요");
               return;
            }
            if(document.getElementById("age").value==""){
               alert("나이를 입력하세요");
               return;
            }
            if(document.getElementById("address").value==""){
               alert("주소를 입력하세요");
               return;
            }
            if(document.getElementById("phone2").value==""){
               alert("휴대폰번호를 입력하세요");
               return;
            }
            if(document.getElementById("phone3").value==""){
               alert("휴대폰번호를 입력하세요");
               return;
            }
        
            frm.submit(); //직접 submit()이라는 메소드를 호출. 액션을 들고 가줌
        }
        </script>
        
 <link rel = "stylesheet" href="membershipbasic.css">
 <link rel = "stylesheet" href="membership.css">
 <meta name="viewport" content="width=device-width", initial-scale="1">
<title>Insert title here</title>
</head>

<body link="gray" vlink="gray" alink="gray">
    <header>
        <div class="header-align">
        <div id ="header-top">		
        <span>
             <a href="../Login/login.jsp"  >
              마이페이지 |
              </a>
        <span>
        <span>
             <a href="../Login/login.jsp"  >
              로그인 |
              </a>
        <span>
        <a href="../Membership/membership.jsp" >
            회원가입
            </a>
        </span>	
        </div>
        
        <div id="header-mainname">
            <h1><a href="../Main/main.jsp" style="color:#77c466; text-decoration: none;"> 제주<span style="color:black;">어서옵세</span>  </a>  </h1>
        </div>
        
        </div>
        </header>

    <main>
        <div id="main-align">

	<h2>회원가입</h2>
           <img src="../Membership/membership.png" style="width:110px; height:85px;">
	<form action="../Membership/join_ok.jsp" name="frm" method="post" onsubmit="return joinCheck(this)">

        
	<div class="input-id">
        
		아이디: <input type="text" name="id" onkeydown="inputIdChk()" id="id" style="  height:35px; width:27%; left:1.8%; position: relative; border: 2px solid darkgray;" required>
		<input type="button" onclick="openIdChk()" value="중복확인" style="left:4%; position: relative;
        background-color: lightgray; border-radius: 1em; border-color: black; height: 40px; width:10%; color:black; margin: auto;
        border: 2px solid darkgray; font-weight: bolder; ">
		 	<input type="hidden" name="idDplication" value="idUncheck  ">
		 	</div>
		 	
        <div class="input-pw">
		비밀번호:  <input type="password" name="pw" id="pw" style=" height:35px; width:27%; left:2.1%; position: relative; border: 2px solid darkgray; " required>
        </div>

        <div class="input-name">
		이름:  <input type="text" name="name" id="name" style=" height:35px; width:27%; left:1.9%;position: relative; border: 2px solid darkgray;" required>
        </div>
        <div class="input-age">
        나이:  <input type="text" name="age" id="age" style=" height:35px; width:8%; left:1.8%;position: relative; border: 2px solid darkgray; " required>
        </div>
        <div class="input-address">
        주소:  <input type="text" name="address" id="address" style=" height:35px; width:27%; left:2%;position: relative; border: 2px solid darkgray;" required>
        </div>

        <div class="input-phone">
        		전화번호:
                <span style="left:2.2%; position: relative; ">
		<select name="phone1" style="width:8%; height:25px;" >
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>		
		</select>
		- <input type="text" name="phone2" id="phone2" size="5"style="width:12%;  height:35px; border: 2px solid darkgray;" maxlength="4" required>
		- <input type="text" name="phone3" id="phone3" size="5"style="width:12%; height:35px; border: 2px solid darkgray;"maxlength="4" required >
    </span>
</div>
        <div class="input-gender">
		<input type="radio" name="gender"  value="man" checked>  남자
		<input type="radio" name="gender" value="female">  여자
        </div>

        <div class="button-submit">
		<input type="submit" value="가입하기" onclick="check()" style="width:16%; height:55px; background-color: lightgray; border-radius: 1em; border-color: black; color:black;
        border: 2px solid darkgray; font-weight: bolder; font-size:15px;">
        </div>		
		</form>
		
</div>
</main>
	
</body>
</html>	