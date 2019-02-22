<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.opensg.oauth2.client.*"%>
<%@ page import="java.util.*"%>
<%
	HashMap<String, String> map = new HashMap<>();
	map.put("client_id", Settings.CLIENT_ID);
	map.put("redirect_uri", Settings.REDIRECT_URI);
	map.put("response_type", "code");
	String url = Settings.AUTHORIZE_URL + "?" + OAuth2ClientUtil.getParamStringFromMap(map);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="<%=url%>"> bitly 앱 승인 페이지로 이동 </a>
</body>
</html>