<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="coom.mca.demo.UserBean" %>
    <%@page import="coom.mca.demo.DButil" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! UserBean u=null; ResultSet rs=null; %>
<%
RequestDispatcher rd=request.getRequestDispatcher("success.jsp");
String id=request.getParameter("t1");
String psw=request.getParameter("t2");
rs=DButil.getData();
boolean status =false;
while(rs.next()){
	if( (id.equals(rs.getString(1) ))&& (psw.equals(rs.getString(2))) ){
		status=true;
	}
}
if(status){
	rd.forward(request,response);
}
else{
	out.println("Invalid id or password");
}
%>
</body>
</html>