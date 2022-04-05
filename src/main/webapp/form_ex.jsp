<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 만들기 연습</title>
<script type="text/javascript">

function checkForm() //유효성 검사 함수 부분
	{
		if(document.joinForm.id.value == "")
		{
			alert("아이디는 필수 입력 사항입니다.");	
			document.joinForm.id.focus(); // id부분으로 포커스
			return false;
		}
		else if(document.joinForm.pw.value == "")
		{
			alert("비밀번호는 필수 입력 사항입니다.");	
			document.joinForm.pw.focus(); // id부분으로 포커스
			return false;
		}
		else return true;	
	}
	

</script>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	<form action="joinok.jsp" method="post" name="joinForm" onsubmit="return checkForm()">
		아이디 : <input type="text" name="id" size="10"><br><br>
		비밀번호 : <input type="password" name="pw" size="10"><br><br>
		성별 : <input type="radio" name="gender" value="남">남<input type="radio" name="gender" value="여">여<br><br>
		취미 : <input type="checkbox" name="hobby" value="영화감상">영화감상
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="골프">골프 <br><br>
		자기소개:
		<textarea rows="10" cols="30" name="intro"> 50자 이상 작성 </textarea><br><br>
		<hr>
		<input type="submit" value="가입하기">&nbsp;&nbsp;&nbsp;
		<input type="submit" value="취소하기">&nbsp;&nbsp;&nbsp;
	</form>

</body>
</html>