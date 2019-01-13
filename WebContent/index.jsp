<%-- <%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%> --%>
<%@ page errorPage="WEB-INF/pages/error.jsp" language="java" session="true" isThreadSafe="true" info="This is Sample JSP Page" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Example</title>
</head>
<body>
	<%@include file="WEB-INF/pages/header.jsp" %>
	<%!
		//Declaration Tag
		Date date;

		public void jspInit(){
			date = new Date();
			System.out.print("Init v1...");
		}
		public void jspDestroy(){
			date = null;
			System.out.print("Destroy v1...");
		}
		
	%>
	
	<%
		//Scriptlet
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = sdf.format(date);
		System.out.print("Serve v1...");

		out.println("SID="+session.getId());
		out.println("CREATED="+session.getCreationTime());
		
	%>
	<!-- Expression Tag -->
	<%=today %>
	
</body>
</html>