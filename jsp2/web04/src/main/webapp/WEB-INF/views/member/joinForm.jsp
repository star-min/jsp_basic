<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2 class="title"><strong>회원 가입하기</strong></h2>
			<form action="" method="post">
				<table class="table">				
					<tbody class="tbody">
                        <tr>
                            <td class="necessary"><strong>아이디</strong></td>
                            <td><input type="text" name="uid" id="uid" class="form"  placeholder="영문4자 이상" required>
                            </td>
                         </tr>
                         <tr>
                            <td class="necessary"><strong>비밀번호</strong> </td>
                            <td><input type="password" name="upw" id="upw" class="form" placeholder="영문+숫지 조힙 6자 이상" required></td>
                         </tr>
                         <tr>
                            <td class="necessary"><strong>비밀번호 확인</strong> </td>
                            <td><input type="password" name="upw2" id="upw2" class="form" placeholder="비밀번호를 다시 입력해 주세요" required></td>
                         </tr>
                         <tr>
                            <td class="necessary"><strong>이름</strong></td>
                            <td><input type="text" name="name" id="name" class="form" placeholder="이름을 입력하새요" required ></td>
                         </tr>
                         <tr>
                            <th><label for="email" class="necessary2">이메일</label></th>
                            <td><input type="email" id="email" name="email"
                                    pattern="[a-z0-9._%+-]@[a-z0-9.-]+\.[a-z]{2,3}$" class="form" required></td>
                        </tr>
                        <tr>
                            <td><label for="event" class="necessary3"><strong>이벤트 수신여부</strong></label></td>
                            <td>
                                <input type="radio" id="ok" name="event" class="form2" checked><label for="ok">수신</label>
                                <input type="radio" id="no" name="event" class="form2"><label for="no">수신거부</label>
                            </td>
                        </tr>
                        <tr>
                            <th><label for="tel" class="necessary2">휴대폰</label></th>                                                                                
                            <td ><input type="tel" id="tel" name="tel" class="form" placeholder=""></td> 
                        </tr>
                    </tbody>
                </table>	
                    <div>
                        <input type="reset" value="취소" class="joinbtn"/>
                        <input type="submit" value="가입" class="joinbtn"/>
                    </div>
            </form>
	</div>	
</div>
<%@ include file="../include/menu.jsp" %>
</body>
</html>