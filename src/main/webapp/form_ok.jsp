<%--
  Created by IntelliJ IDEA.
  User: kjs
  Date: 2022-11-03
  Time: 오전 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String pwd = request.getParameter("pwd");
  String phone = request.getParameter("phone");
  String address = request.getParameter("address");
  String gender = request.getParameter("gender");
  String h1 = request.getParameter("h1");
  String h2 = request.getParameter("h2");
  String h3 = request.getParameter("h3");
  String major = request.getParameter("major");
  String fromdate = request.getParameter("fromdate");
  String content= request.getParameter("content");
  String msg="";
  String gendermsg="";

    if("W".equals(gender))
        gendermsg="여자";
    else if ("M".equals(gender))
        gendermsg="남자";
    if("1".equals(h1))
      msg +="영화보기 ";
  if("2".equals(h2))
      msg +="헬스 ";
    if("3".equals(h3))
        msg +="뜨개질 ";
    if("".equals(msg))
        msg +="취미 없음 ";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body{
            font-size:20px;
            text-align:center;
        }
    </style>
</head>
<body>
<h3>입력하신 내용은 다음과 같습니다</h3>
<div>id: <%=id %>  </div><br>
<div>이름: <%=name %> </div><br>
<div>비번: <%=pwd %> </div><br>
<div>전화번호: <%= phone %> </div><br>
<div>주소: <%= address %> </div><br>
<div>성별: <%= gendermsg %> </div><br>
<div>취미: <%= msg %>  </div><br>
<div>전공: <%= major %> </div><br>
<div>출생년도월일: <%= fromdate %> </div><br>
<div>자기소개: <%= content %> </div><br>

</body>

</html>