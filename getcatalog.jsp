<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page language="java" %>
<%@ page import="java.io.*"%>
<html>
<head>
	<title>getcatalog</title>
</head>
<body>
	<p><h1><b>This is server's catalog:</b></h1></p>
	<form method = "POST">
	<input type="text" name="instructor">
	<input type="submit" value="submit">
	</form>	
	<script type="text/javascript">
		function clickImg(object){
			document.write('<form method="post" id="click_on_icon">');
			document.write('<input type="hiden" value="<%=s3+"/"+s2[i]%>">');
			document.write('</form>');
			document.getElementById('click_on_icon').submit();
		}
	</script>
	<%
	String s3 = request.getParameter("instructor");
	String s1,temp="";
	String []s2;
	Runtime r = Runtime.getRuntime();
	if(s3!=null&&s3.indexOf("ls")!=-1){
		Process p = r.exec(s3);
		BufferedReader br= new BufferedReader(new InputStreamReader(p.getInputStream()));
		while((s1 = br.readLine())!=null)temp =temp + s1 + ' ';
		s2 = temp.split("[\n \r ' ']");
		for(int i=0;i<s2.length;i++){%>
			<div style="position:absolute;top:<%=i/5*40+150%>px;left:<%=i%5*200%>px">
			<img src=picture/apple_icon.gif height="30" width="30" alt="folder" style="cursor:pointer" onclick="clickImg(this)">
			<%=s2[i]%>
			</div>
		<%}
	}%>
</body>
</html>

