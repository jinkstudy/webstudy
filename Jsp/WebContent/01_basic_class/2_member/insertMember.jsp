<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>회원 가입</h2>
        <form action="result.jsp" method="get">
          <div>
            <label for="name">이름:</label>
            <input name="name" id="name" type="text"/>
          </div>
          <div>
            <label for="email">이메일:</label>
            <input name="email" id="email" type="text"/>
          </div>
          <div>
            <label for="website">웹사이트 URL:</label>
            <input name="website" id="website" type="text"/>
          </div>
          <div>
            <label for="password">암호:</label>
            <input name="password" id="password" type="password" />
          </div>
          <div>
            <label for="passconf">암호 확인:</label>
            <input name="passconf" id="passconf" type="password" />
          </div>
</body>
</html>