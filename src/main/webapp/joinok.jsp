<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입성공!!</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String pname = request.getParameter("name");
		String ppw = request.getParameter("pw");
		String pgender = request.getParameter("gender");
		String phobby[] = request.getParameterValues("hobby");
		String pintro = request.getParameter("intro");
		
		//out.println(pname+"님 반갑습니다.<br>");
		//out.println("비밀번호는"+ppw+"입니다.<br>");
		//out.println("당신의 성별은["+pgender+"]입니다.<br>");
		
		//out.println("당신의 취미는:"); 
		//if(phobby !=null){
			//for(int i=0; i<phobby.length; i++) {
			//out.println(phobby[i]);
			//}
			//out.println("입니다.");
		//}	else{
			//out.println("취미를 선택하지 않았습니다.");
			//}
		//out.println("자기소개 : "+pintro);
		
	%>
	
	<h2><%= pname %> 님 반갑습니다.<br></h2>
	비밀번호는 <%= ppw %> 입니다.<br>
	당신의 성별은 [<%= pgender %>] 입니다.<br>
	당신의 취미는 	
 	<%
 	if(phobby !=null){
			for(int i=0; i<phobby.length; i++) {
			out.println(phobby[i]);
			}
			out.println("입니다.");
		}	else{
			out.println("취미를 선택하지 않았습니다.");
			}
	%>
	<br>
	자기소개: <%=pintro%>
	
</body>
</html>